<%-- 
    Document   : topmenu
    Created on : 15.01.2016, 14:38:57
    Author     : VGLukin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body> 

            <ul id="topmenu">
                <li> <a href="${pageContext.request.contextPath}/jsps/index.jsp">Главная</a> </li>
                <li> <a href="${pageContext.request.contextPath}/jsps/news.jsp">Новости</a> </li>
                <li> <a href="${pageContext.request.contextPath}/jsps/aboutUs.jsp">О проекте</a> </li> 
                <div class="right">
                    <li > <a style="width: 50px;" href="${pageContext.request.contextPath}/jsps/login.jsp">Войти</a> </li> 
                </div>
            </ul>
       
    </body>
</html>
