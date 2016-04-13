/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GetDataPackage.ModelClasses;

import UploadPackage.ModelClasses.UploadFileStruts;
import dbPackage.WorkDB;
import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author VGLukin
 */
public class GetData {

    private ResultSet rs;
    private int idrubric;
    private List<Sale> sales;

    public String getSalesDB(HttpServletRequest request) {
        String result = "";
        String directory = UploadFileStruts.fullFilesPath;//request.getContextPath() + File.separator + UploadFileStruts.filesPath;
        sales = new ArrayList();
        try {   
            rs = WorkDB.getInstance().SimpleQuery("SELECT idsite, url, namesite FROM sitelist where isactive = 1 and idrubric = " + idrubric);
//            while (rs.next()) {
//                Sale site = new Sale();
//                site.setIdSite(rs.getInt("idsite"));
//                site.setUrl(rs.getString("url"));
//                site.setNameSite(rs.getString("namesite"));
//
//                File dir = new File(directory, site.getIdSite() + ".jpg");
//                site.setImagePath(dir.getPath());
//                sites.add(site);
//            }
            rs.close();
        } catch (SQLException ex) {
            result = ex.getMessage();
            return result;
        }
        return result;

    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public int getIdrubric() {
        return idrubric;
    }

    public void setIdrubric(int idrubric) {
        this.idrubric = idrubric;
    }

    public List<Sale> getSites() {
        return sales;
    }

    public void setSites(List<Sale> sales) {
        this.sales = sales;
    }

}
