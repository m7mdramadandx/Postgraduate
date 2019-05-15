<%-- 
    Document   : update_user
    Created on : Apr 14, 2019, 8:18:09 PM
    Author     : asd
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="folder.connectionDB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import ="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" scope="session" class="folder.Data"></jsp:useBean>

    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <link rel="icon" href="html_pages/img/menoufiauniversity.png">
        </head>
        <body>
        <%

            try {
                String email = request.getParameter("email");
                String telephone = request.getParameter("telephone");
                String password = request.getParameter("password");
                String national_id = obj.getNational_id();
                connectionDB cc = new connectionDB();
                Connection con = cc.getConnection();
                
                String SQL ="UPDATE student SET email=?, telephone=?,password=? WHERE national_id=?";
                PreparedStatement ps = con.prepareStatement(SQL);
                ps.setString(1, email);
                ps.setString(2, telephone);
                ps.setString(3, password);
                ps.setString(4, national_id);
                ps.executeUpdate();
                System.out.println("user is updated!");
                response.sendRedirect("sign_in.jsp");
            } catch (SQLException ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
