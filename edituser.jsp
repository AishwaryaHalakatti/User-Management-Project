<%-- 
    Document   : edituser
    Created on : Mar 30, 2023, 12:04:35 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.javatpoint.dao.UserDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
        <jsp:setProperty property="*" name="u"/>  
        <%
            int i = UserDao.update(u);
            response.sendRedirect("viewusers.jsp");
        %>  
    </body>
</html>
