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
                String SQL = "select * from faculty.diploma ";
                PreparedStatement ps = con.prepareStatement(SQL);
                ResultSet rs = ps.executeQuery();
                int count = 1;
                while (rs.next()) {
                        PreparedStatement p = con.prepareStatement(" UPDATE faculty.diploma SET interview_date = ? WHERE national_id = ? ;");
                        String s = Integer.toString(count);
                        String cc = request.getParameter(s);
                        if (!cc.equals("")) {
                            p.setString(1, cc);
                            p.setString(2, rs.getString("national_id"));
                            p.executeUpdate();
                        }
                        out.print(s);
                    count++;
                }
                response.sendRedirect("doctor_home.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        %>
    </body>
</html>

