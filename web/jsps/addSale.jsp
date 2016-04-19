<%-- 
    Document   : addSale
    Created on : 18.04.2016, 21:32:36
    Author     : VGLukin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/style.css">
        <title>Salez|add sale</title>
    </head>
    <body>    
        <div class="wrapper">
            <!--<div style="float:right; width: max-content;">-->
            <!--<input type="submit" value="Pfgbcfnm 2"/>-->
            <%--<s:submit value="Записать" name="insert"/>--%>     
            <!--</div>-->

            <div class="center">
                <s:form name="insertNew" action="insertNewForm" enctype="multipart/form-data" method="post">                                  
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    <strong>Категория:</strong>
                                    <select key="idRubric" name="idRubric" id="Rubric" required>
                                        <c:forEach var="row" items="${rubrics.rows}" >
                                            <option 
                                        <c:if test="${param.idRubric == row.idRubric}" > 
                                            selected
                                        </c:if>
                                        value="${row.idRubric}">${row.rubricName}
                                        </option>
                                    </c:forEach>
                                </select>  
                            </td>  
                        </tr>
                        <tr>  <td><s:textfield label="Ссылка" key="url"/>  </td> </tr>
                        <tr>
                            <td><s:textfield label="Имя сайта" key="siteName"/> 
                            </td>
                        </tr> 
                        <tr>
                            <td>
                                <s:file label="Картинка" key="file" name="file" value="" width="50" />
                            </td>
                        </tr>           
                        <tr>
                            <td>
                                <input type="submit" value="Записать"/>        
                            </td>

                        </tr>
                    </tbody>                
                </table>                             
            </s:form>              
        </div>

        <div id="content_sitelist"> </div>
        <s:property value="result" default="" />                              

        <div class="clear-float"></div>

        <div class="empty"></div>     
    </div>
    <%@include file="../partjsp/bottom.jsp"%> 
</body>
</html>
