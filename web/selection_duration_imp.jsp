<%-- 
    Document   : selection_duration_imp
    Created on : May 7, 2019, 2:32:05 AM
    Author     : mhmdr
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="folder.connectionDB"%>
<jsp:useBean id="obj" scope="session" class="folder.Data"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                String first_round = request.getParameter("first_round");
                String second_round = request.getParameter("second_round");
                connectionDB cc = new connectionDB();
                Connection con = cc.getConnection();

                String SQL = "UPDATE enroll_duration SET first_round=?, second_round=?";
                PreparedStatement ps = con.prepareStatement(SQL);
                ps.setString(1, first_round);
                ps.setString(2, second_round);
                ps.executeUpdate();
                System.out.println("duration is updated!");
                response.sendRedirect("doctor_home.jsp");
            } catch (SQLException ex) {
                out.println(ex);
            }

        %>
    </body>
</html>
