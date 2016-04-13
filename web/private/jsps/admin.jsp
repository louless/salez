<%-- 
    Document   : index
    Created on : 14.01.2016, 9:00:06
    Author     : VGLukin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:query var="rubrics" dataSource="jdbc/userdb" >
    SELECT idRubric, rubricName FROM rubricref
</sql:query> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/style.css">
        <!--<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.js"></script>-->
        <!--<script type="text/javascript" src="${pageContext.request.contextPath}/js/siteList.js"></script>-->
        <title>Sitez.site | Welcome for you!</title>
    </head>
    <body>
            <%@include file="../../partjsp/topmenu.jsp" %>        

            <s:form name="insertNew" action="insertNewForm" enctype="multipart/form-data" method="post">                
                <table >
                    <tbody>
                        <tr>
                            <td>
                                <strong>Рубрика:</strong>
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
                            <td>
                               
                            </td>

                        </tr>
                        <tr>
                            <td><s:textfield label="Ссылка" key="url"/>  </td>                        
                        </tr>
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
                                <s:submit value="Записать" name="insert"/> 
                            </td> 
                        </tr>               
                    </tbody>                
                </table>                             
            </s:form>  
             <div id="content_sitelist"> </div>
            <s:property value="result" default="" />                              

            <%@include file="../../partjsp/bottom.jsp"%> 
    </body>
</html>
