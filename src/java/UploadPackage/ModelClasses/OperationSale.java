/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UploadPackage.ModelClasses;

import dbPackage.WorkDB;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;


/**
 * РАбота с элементами сайта:
 * - добавление
 * - удаление
 * - изменение
 * скидки, распродажи и т.д.
 * вставка нового элемента в базу
 * 
 * @author VGLukin
 */
public class OperationSale {

    private int idRubric;
    private String url;
    private String saleName;
    private File file;
    private String idSale;

    /**
     * вставка нового сайта
     *
     * @param request
     * @return result insert
     */
    public String insertSale(HttpServletRequest request) {
        String result = "";
        String result1 = "";
        String result2 = "";
        result1 = saveToDB();
        if (idSale == null) {
            result = "file name is null";
            return result;
        }
        result2 = saveIcon(request, file);
        result = result1 + result2;
        if ((result1.equals("")) && (result2.equals(""))) {
            result = "";
        }
        return result;
    }

    /**
     * сохранение сайта в базу
     *
     * @return
     */
    private String saveToDB() {
        try {
            WorkDB.getInstance().setQuery(
                    "insert into salelist (idrubric, url, namesale) values (?, ?, ?)");
            WorkDB.getInstance().getPstmt().setInt(1, idRubric);
            WorkDB.getInstance().getPstmt().setString(2, url);
            System.out.println(saleName);
            try {
                WorkDB.getInstance().getPstmt().setBytes(3, saleName.getBytes("cp1251"));
            } catch (UnsupportedEncodingException e) {
                System.out.println(e.getMessage());
                return e.getMessage();
            }
            WorkDB.getInstance().PrepareQueryExe();

            try (ResultSet rs = WorkDB.getInstance().SimpleQuery("SELECT LAST_INSERT_ID()")) {
                while (rs.next()) {
                    idSale = rs.getString(1);
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return e.getMessage();
        }

        return "";
    }

    /**
     * сохранение иконки сайта в папку
     *
     * @return
     */
    private String saveIcon(HttpServletRequest request, File file) {
        String result = "";
        UploadImageStruts uploadFile = new UploadImageStruts();
        try {
            result = uploadFile.load(request, file, idSale);
        } catch (IOException e) {
            return result;
        }

        return result;
    }

    
    public String DelSite() {
        String result = "";
//        int id;
//        try {
//            id = Integer.parseInt(idSale);
//        } catch (NumberFormatException nfe) {
//            id = 0;
//        }
//
//        if (id == 0) {
//            result = "Error while parse idSite = " + idSite;
//            return result;
//        }
//        
//        try {
//            WorkDB.getInstance().setQuery("update sitelist set isactive = 0 where idsite = " + idSite);
//            WorkDB.getInstance().PrepareQueryExe();
//            
//        } catch (SQLException ex) {
//            Logger.getLogger(OperationSite.class.getName()).log(Level.SEVERE, null, ex);            
//            System.out.println(ex.getMessage());
//            result = ex.getMessage();
//            return result;
//        }
//
        return result;
    }

    public int getIdRubric() {
        return idRubric;
    }

    public void setIdRubric(int idRubric) {
        this.idRubric = idRubric;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getSaleName() {
        return saleName;
    }

    public void setSaleName(String siteName) {
        this.saleName = saleName;
    }

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String getIdSale() {
        return idSale;
    }

    public void setIdSale(String idSale) {
        this.idSale = idSale;
    }        
}
