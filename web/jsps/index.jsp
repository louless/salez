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
        <h1>Лучшие скидки и промо акции в одном месте!</h1>
        
        <%@include file="../partjsp/mainMenu.jsp"%> 
        
        <div class="clear-float"></div>
        <%@include file="../partjsp/bottom.jsp"%> 
    </body>
</html>
