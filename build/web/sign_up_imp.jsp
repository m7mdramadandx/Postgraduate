<%-- 
    Document   : sign_up
    Created on : Mar 11, 2019, 3:42:43 PM
    Author     : RAMADAN
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="folder.connectionDB"%>
<%@page import="java.io.PrintWriter" import="java.io.*"
	import="java.sql.*" import=" java.util.logging.Level"
	import="java.util.logging.Logger"
	import="javax.servlet.ServletException" import="javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>

<%
        request.setCharacterEncoding("utf-8");
        
        String username = request.getParameter("id");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String dob = request.getParameter("dob");
        String national_id = request.getParameter("national_id");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String degree_type = request.getParameter("degree_type");
        String department = request.getParameter("department");
        
        try {
            connectionDB c = new connectionDB();
            Connection con = c.getConnection();
            PreparedStatement p = con.prepareStatement(" insert into faculty.student (`id`, `first_name`,"
                    + " `last_name`, `degree_type`, `department`, `dob`, `national_id`, `telephone`, "
                    + "`email`, `password`) values (?,?,?,?,?,?,?,?,?,?);");
            p.setString(1, username);
            p.setString(2, first_name);
            p.setString(3, last_name);
            p.setString(4, degree_type);
            p.setString(5, department);
            p.setString(6, dob);
            p.setString(7, national_id);
            p.setString(8, telephone);
            p.setString(9, email);
            p.setString(10, password);
            p.executeUpdate();
            System.out.println("DATA IS ENTERED TO USER TABLE!");
            response.sendRedirect("student_home.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
        }catch (SQLException ex) {
            Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    %>
    

</html>
