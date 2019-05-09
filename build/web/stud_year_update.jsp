<%-- 
    Document   : newjsp2
    Created on : Apr 10, 2019, 7:00:37 PM
    Author     : RAMADAN
--%>

<%@page import="folder.connectionDB"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<jsp:useBean id="obj" scope="session" class="folder.Data"></jsp:useBean>

<!DOCTYPE html>
<html>
    <% request.setCharacterEncoding("utf-8"); %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                connectionDB c = new connectionDB();
                Connection con = c.getConnection();
                String SQL = "SELECT * FROM course where department = '"+obj.getc_dept()+"' ";
                PreparedStatement ps = con.prepareStatement(SQL);
                ResultSet rs = ps.executeQuery();
                int count = 1;
                while (rs.next()) {
                    String s = Integer.toString(count);
                    String cc = request.getParameter(s);
                    if (!cc.equals("")) {
                        PreparedStatement p = con.prepareStatement(" UPDATE faculty.course SET stud_year = ? WHERE course_code = ? ;");
                        p.setString(1, cc);
                        p.setString(2, rs.getString(1));
                        p.executeUpdate();
                        System.out.println("done");
                    }
                    count++;
                }
                response.sendRedirect("doctor_home.jsp");
            } catch (SQLException ex) {
                System.out.println("eroor");
            }
        %>
    </body>
</html>

