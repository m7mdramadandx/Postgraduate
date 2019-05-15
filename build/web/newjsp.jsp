

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="folder.connectionDB"%>
<%@page import="folder.connectionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" scope="session" class="folder.Data"></jsp:useBean>

    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
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
                System.out.println("DATA IS ENTERED TO USER TABLEEEEE!");

                Statement statement = con.createStatement();
                ResultSet i = statement.executeQuery("SELECT * from student");
                while (i.next()) {
                    if (username.equals(i.getString("id"))) {
                        obj.setId(i.getString("id"));
                        obj.setDept(i.getString("department"));
                        obj.setStatus(i.getString("status"));
                        obj.setFirst_name(i.getString("first_name"));
                        obj.setLast_name(i.getString("last_name"));
                        obj.setEmail(i.getString("email"));
                        obj.setPhone(i.getString("telephone"));
                        obj.setPassword(i.getString("password"));
                        obj.setNational_id(i.getString("national_id"));
                    }
                }

                response.sendRedirect("student_home.jsp");
            } catch (SQLException e) {
                System.out.println(e);
            }

            /////////////////////////

        %>
    </body>
</html>
