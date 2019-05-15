<%-- 
    Document   : newjsp
    Created on : Apr 29, 2019, 7:44:06 PM
    Author     : asd
--%>

<%@page import="java.sql.Connection"%>
<%@page import="folder.connectionDB"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import ="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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

            String username = (request.getParameter("username"));
            System.out.print(username + " is entered!");

            if (!username.isEmpty() && !request.getParameter("password").isEmpty()) {
                try {
                    connectionDB c = new connectionDB();
                    Connection con = c.getConnection();
                    Statement s = con.createStatement();
                    ResultSet rs = s.executeQuery("SELECT * from enroll_duration");
                    while (rs.next()) {
                        obj.setfirst_round(rs.getString(1));
                        obj.setsecond_round(rs.getString(2));
                    }
                    System.out.print(obj.getfirst_round());

                    if (request.getParameter("x").equals("stuff")) {
                        Statement statement = con.createStatement();
                        ResultSet i = statement.executeQuery("SELECT * from staff");
                        while (i.next()) {
                            if (username.equals(i.getString("username"))
                                    && request.getParameter("password").equals(i.getString("password"))) {
                                obj.setId(i.getString("username"));
                                response.sendRedirect("staff_home.jsp");
                            } else if (username.equals(i.getString("username"))
                                    && !request.getParameter("password").equals(i.getString("password"))) {
                                out.print("Invalid ID or password");
                            } else {
                            }
                        }
                    } else if (request.getParameter("x").equals("doctor")) {
                        Statement statement = con.createStatement();
                        ResultSet i = statement.executeQuery("SELECT * from doctor");
                        while (i.next()) {
                            if (username.equals(i.getString("username"))
                                    && request.getParameter("password").equals(i.getString("password"))) {
                                obj.setId(i.getString("username"));
                                response.sendRedirect("doctor_home.jsp");
                            } else if (username.equals(i.getString("username"))
                                    && !request.getParameter("password").equals(i.getString("password"))) {
                                out.print("Invalid ID or password");
                            } else {
                            }
                        }
                    } else if (request.getParameter("x").equals("student")) {
                        Statement statement = con.createStatement();
                        ResultSet i = statement.executeQuery("SELECT * from student");
                        while (i.next()) {
                            if (username.equals(i.getString("id"))
                                    && request.getParameter("password").equals(i.getString("password"))) {
                                obj.setId(i.getString("id"));
                                obj.setDept(i.getString("department"));
                                obj.setStatus(i.getString("status"));
                                obj.setFirst_name(i.getString("first_name"));
                                obj.setLast_name(i.getString("last_name"));
                                obj.setEmail(i.getString("email"));
                                obj.setPhone(i.getString("telephone"));
                                obj.setPassword(i.getString("password"));
                                obj.setNational_id(i.getString("national_id"));
                                response.sendRedirect("student_home.jsp");
                            } else if (username.equals(i.getString("id"))
                                    && !request.getParameter("password").equals(i.getString("password"))) {
                                out.print("Invalid ID or password");
                            } else {
                            }
                        }
                    } else if (request.getParameter("x").equals("admin")) {
                        if (username.equals("admin") && request.getParameter("password").equals("admin")) {

                            response.sendRedirect("admin.jsp");
                        } else {
                            out.print("Invalid Username or Password");

                        }

                    } else {
                        out.print("Choose your role and try again ");
                    }
                } catch (SQLException ex) {
                    out.println(ex);
                }
            } else {
                out.print("username or password field is empty");
            }

        %>




    </body>
</html>