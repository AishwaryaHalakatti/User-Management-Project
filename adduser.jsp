
<%@page import="com.javatpoint.bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"  import="com.javatpoint.dao.UserDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       
            User u = new User();
            u.setName(request.getParameter("name"));
            u.setAge(Integer.parseInt(request.getParameter("age")));
            u.setEmail(request.getParameter("email"));
            u.setSex(request.getParameter("sex"));
            u.setMobile(Long.parseLong(request.getParameter("mobile")));
            u.setHobbies(request.getParameter("hobbies"));
            u.setProfilePic(request.getParameter("prfpic"));
            
            
            
            int i = UserDao.save(u);
            if (i > 0) {
                response.sendRedirect("adduser-success.jsp");
            } else {
                response.sendRedirect("adduser-error.jsp");
            }
        %>  
    </body>
</html>
