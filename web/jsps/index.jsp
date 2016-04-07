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
        <title>salez</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css" type="text/css"/>
    </head>
    <body>
        <%@include file="../partjsp/topmenu.jsp" %>

        <div class="center">
            <h1>Лучшие скидки и промо-акции в одном месте!
            </h1>
            <h2>
                Недавно поступившие
            </h2>
        </div>
        <%@include file="../partjsp/typeSale.html"%>       
        <%@include file="../partjsp/mainMenu.jsp"%> 
        <div class="mainframe">
            <table>
                <thead>

                </thead>
                <tbody>                   
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
                                <img src="${pageContext.request.contextPath}/getImage.jpg" width="100%">
                            </a>
                        </td>
                        <td><a href="http://getnet.site" target="_blank">
                                <img src="${pageContext.request.contextPath}/getImage.jpg" width="100%"> 
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td><a href="http://getnet.site" target="_blank">
                                <img src="${pageContext.request.contextPath}/getImage.jpg" width="100%"> 
                            </a>
                        </td>
                        <td><a href="http://getnet.site" target="_blank" >
                                <img src="${pageContext.request.contextPath}/getImage.jpg" width="100%">
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td><a href="http://getnet.site" target="_blank">
                                <img src="${pageContext.request.contextPath}/getImage.jpg" width="100%">
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
    </body>
</html>
