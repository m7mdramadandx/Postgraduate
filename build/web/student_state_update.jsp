<%-- 
    Document   : newjsp2
    Created on : Apr 10, 2019, 7:00:37 PM
    Author     : RAMADAN
--%>

<%@page import="folder.connectionDB"%>
<jsp:useBean id="obj" scope="session" class="folder.Data"></jsp:useBean>
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
                String SQL = "SELECT DISTINCT student_course.student_id,student_course.course_code,  course.course_name, course.department, course.degree_type,student_course.start_date,student_course.end_date,student_course.state "
                        + "FROM student_course,course "
                        + "WHERE course.department='" + obj.getDept() + "' "
                        + " AND student_course.course_code=course.course_code";
                PreparedStatement ps = con.prepareStatement(SQL);
                ResultSet rs = ps.executeQuery();
                int count = 1;
                while (rs.next()) {
                    String s = Integer.toString(count);
                    String cc = request.getParameter(s);
                    if (!cc.equals("")) {
                        PreparedStatement p = con.prepareStatement(" UPDATE faculty.student_course SET state = ? "
                                + "WHERE student_id = ? and course_code = ? ;");
                        p.setString(1, cc);
                        p.setString(2, rs.getString(1));
                        p.setString(3, rs.getString(2));
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

