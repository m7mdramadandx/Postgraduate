<%-- 
    Document   : newjsp
    Created on : Apr 21, 2019, 12:31:09 AM
    Author     : asd
--%>

<%@page import="java.sql.Connection"%>
<%@page import="folder.connectionDB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import ="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
      
        
        <%
            request.setCharacterEncoding("utf-8");
            try {
                connectionDB c = new connectionDB();
                Connection con = c.getConnection();
                Statement statement = con.createStatement();
                statement.executeUpdate("INSERT INTO `doctor` (`username`, `first_name`, `last_name`, `dob`, `national_id`, `telephone`, `email`, `password`) "
                        + "VALUES ('" + request.getParameter("username") + "', '" + request.getParameter("first_name") + "', '"
                        + request.getParameter("last_name") + "', '" + request.getParameter("dob") + "', '"
                        + Double.parseDouble(request.getParameter("national_id")) + "', '" + Double.parseDouble(request.getParameter("telephone")) + "', '"
                        + request.getParameter("email") + "', '" + request.getParameter("password") + "');");
            } catch (SQLException ex) {
                out.println(ex);
            }
           
            
           response.sendRedirect("admin.jsp");
            %>
           
           
           
            
    </body>
</html>
