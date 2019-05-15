<%-- 
    Document   : newjsp
    Created on : Apr 21, 2019, 12:31:09 AM
    Author     : asd
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.PreparedStatement"%>
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
        <title>اضافة المقررات</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");
            String course_code = request.getParameter("course_code");
            String course_name = request.getParameter("course_name");
            String num_hours = request.getParameter("num_hours");
            String department = request.getParameter("department");
            String stud_year = request.getParameter("stud_year");
            String degree_type = request.getParameter("degree_type");
            try {
                connectionDB c = new connectionDB();
                Connection con = c.getConnection();
                PreparedStatement p = con.prepareStatement(" insert into faculty.course values "
                        + "(?,?,?,?,?,?);");
                p.setString(1, course_code);
                p.setString(2, course_name);
                p.setString(3, num_hours);
                p.setString(4, department);
                p.setString(5, stud_year);
                p.setString(6, degree_type);
                p.executeUpdate();
                System.out.println("New Course is added!");
            } catch (SQLException ex) {
                Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            response.sendRedirect("doctor_home.jsp");
        %>
    </body>
</html>
