<%-- 
    Document   : editform
    Created on : Mar 30, 2023, 12:03:48 PM
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
        <%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>  

        <%
            String id = request.getParameter("id");
            User u = UserDao.getRecordById(Integer.parseInt(id));
        %>  

        <h1>Edit Form</h1>  
        <form action="edituser.jsp" method="post">  
            <input type="hidden" name="id" value="<%=u.getId()%>"/>  
            <table>  
                <tr><td>Name:</td><td><input type="text" name="name"/></td></tr>  
                <tr><td>Email:</td><td><input type="email" name="email"/></td></tr>  
                <tr><td>Sex:</td><td>  
                        <input type="radio" name="sex" value="male"/>Male   
                        <input type="radio" name="sex" value="female"/>Female </td></tr>  
                <tr><td>Mobile number:</td><td><input type="text" name="mobile"/></td></tr>  
                <tr><td>Age:</td><td><input type="text" name="age"/></td></tr>  
                <tr><td>Hobbies:</td><td><input type="text" name="hobbies"/></td></tr>  
                <tr><td>Upload profile pic:</td><td><input type="file" name="prfpic"/></td></tr>  
               
                <tr><td colspan="2"><input type="submit" value="Add User"/></td></tr>  
            </table>  
        </form>  
    </body>
</html>
