<%-- 
    Document   : viewusers
    Created on : Mar 30, 2023, 12:02:29 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>  
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

        <h1>Users List</h1>  

        <%
            List<User> list = UserDao.getAllRecords();
            request.setAttribute("list", list);
        %>  

        <table border="1" width="90%">  
            <tr><th>Id</th><th>Name</th><th>Age</th><th>Email</th>  
                <th>Sex</th><th>Mobile</th><th>Hobbies</th><th>Pic</th><th>Edit</th><th>Delete</th></tr>  
                    <c:forEach items="${list}" var="u">  
                    <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getAge()}</td>  
                    <td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getMobile()}</td>  
                    <td>${u.getHobbies()}</td><td>${u.getProfilePic()}</td>
                    <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
                    <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
                </c:forEach>  
        </table>  
        <br/><a href="adduserform.jsp">Add New User</a>  
    </body>
</html>
