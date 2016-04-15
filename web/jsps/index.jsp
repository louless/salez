<%-- 
    Document   : index
    Created on : 02.03.2016, 15:18:13
    Author     : VGLukin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>salez | Скидки! | Распродажи! | Акции!</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css" type="text/css"/>
    </head>
    <body>
        <%@include file="../partjsp/topmenu.jsp" %>
        <div class="title">
            <div class="center">
                <h1>Лучшие скидки и промо-акции! </h1>
            </div>
            <%@include file="../partjsp/typeSale.jsp"%>      
        </div>
        <div class="center">
            <h2> Недавно поступившие </h2>
        </div>

        <%@include file="../partjsp/mainMenu.jsp"%> 
        <div class="mainframe">
            <table>
                <tbody> 
<!--                <table>
                    <c:forEach var="sale" items="${sales}">
                        <tr>
                            <td> <a href="http://<c:out value="${sale.url}" default="#"/>" target="_blank"> <img src="getImage?imagePath=${sale.imagePath}"/> </a></td>                          
                        </tr>
                    </c:forEach>
                </table>  -->
                       

                                    <tr>
                                        <td><a href="http://getnet.site" target="_blank">
                                                <img src="${pageContext.request.contextPath}/IMG.jpg" width="100%">
                                            </a>
                                        </td>
                
                                        <td><a href="http://getnet.site" target="_blank">
                                                <img src="${pageContext.request.contextPath}/getImage.jpg" width="100%"> 
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="http://getnet.site" target="_blank">
                                                <img src="${pageContext.request.contextPath}/IMG.jpg" width="100%">
                                            </a>
                                        </td>
                
                                        <td><a href="http://getnet.site" target="_blank">
                                                <img src="${pageContext.request.contextPath}/getImage.jpg" width="100%"> 
                                            </a>
                                        </td>
                                    </tr>
             

                </tbody>
            </table>

        </div>


        <div class="clear-float"></div>
        <%@include file="../partjsp/bottom.jsp"%>     
        
        <script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/salelist.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/submenu.js"></script>
    </body>
</html>
