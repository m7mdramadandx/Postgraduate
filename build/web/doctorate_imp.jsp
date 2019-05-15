<%-- 
    Document   : newjsp
    Created on : Mar 11, 2019, 3:42:43 PM
    Author     : RAMADAN
--%>

<%@page import="java.time.LocalDate"%>
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
        LocalDate now = LocalDate.now();
        String enroll_date = now.getMonth().toString();
        enroll_date = enroll_date + " " + now.getYear();
        
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String dob = request.getParameter("dob");
        String village = request.getParameter("village");
        String section = request.getParameter("section");
        String government = request.getParameter("government");
        String nationality = request.getParameter("nationality");
        String religion = request.getParameter("religion");
        String national_id = request.getParameter("national_id");
        String recruitment_position = request.getParameter("recruitment_position");
        String job = request.getParameter("job");
        String organization = request.getParameter("organization");
        String address = request.getParameter("address");
        String telephone = request.getParameter("telephone");
        String bachelor = request.getParameter("bachelor");
        String round = request.getParameter("round");
        String general_appreciation = request.getParameter("general_appreciation");
        String department = request.getParameter("department");
        String specialization_appreciation = request.getParameter("specialization_appreciation");
        String faculty = request.getParameter("faculty");
        String university = request.getParameter("university");
        String graduation_year = request.getParameter("graduation_year");
        String graduate_diploma = request.getParameter("graduate_diploma");
        String gd_round = request.getParameter("gd_round");
        String gd_specialization = request.getParameter("gd_specialization");
        String gd_appreciation = request.getParameter("gd_appreciation");
        String gd_faculty = request.getParameter("gd_faculty");
        String gd_university = request.getParameter("gd_university");
        String master_degree = request.getParameter("master_degree");
        String md_date = request.getParameter("md_date");
        String md_specialization = request.getParameter("md_specialization");
        String md_appreciation = request.getParameter("md_appreciation");
        String md_faculty = request.getParameter("md_faculty");
        String md_university = request.getParameter("md_university");
        String registered_scientific_section = request.getParameter("registered_scientific_section");
        try {

            connectionDB c = new connectionDB();
            Connection con = c.getConnection();
            PreparedStatement p = con.prepareStatement(" insert into faculty.doctoratee (`first_name`, `last_name`, `dob`, `village`, "
                    + "`section`, `government`, `nationality`, `religion`, `national_id`, `recruitment_position`, `job`, `organization`,"
                    + " `address`, `telephone`, `bachelor`, `round`, `general_appreciation`, `department`, `specialization_appreciation`,"
                    + " `faculty`, `university`, `graduation_year`, `graduate_diploma`, `gd_round`, `gd_specialization`, `gd_appreciation`,"
                    + " `gd_faculty`, `gd_university`, `master_degree`, `md_date`, `md_specialization`, `md_appreciation`, `md_faculty`,"
                    + " `md_university`, `registered_scientific_section` ,`enroll_round`)"
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
            p.setString(1, first_name);
            p.setString(2, last_name);
            p.setString(3, dob);
            p.setString(4, village);
            p.setString(5, section);
            p.setString(6, government);
            p.setString(7, nationality);
            p.setString(8, religion);
            p.setString(9, national_id);
            p.setString(10, recruitment_position);
            p.setString(11, job);
            p.setString(12, organization);
            p.setString(13, address);
            p.setString(14, telephone);
            p.setString(15, bachelor);
            p.setString(16, round);
            p.setString(17, general_appreciation);
            p.setString(18, department);
            p.setString(19, specialization_appreciation);
            p.setString(20, faculty);
            p.setString(21, university);
            p.setString(22, graduation_year);
            p.setString(23, graduate_diploma);
            p.setString(24, gd_round);
            p.setString(25, gd_specialization);
            p.setString(26, gd_appreciation);
            p.setString(27, gd_faculty);
            p.setString(28, gd_university);
            p.setString(29, master_degree);
            p.setString(30, md_date);
            p.setString(31, md_specialization);
            p.setString(32, md_appreciation);
            p.setString(33, md_faculty);
            p.setString(34, md_university);
            p.setString(35, registered_scientific_section);
            p.setString(36, enroll_date);
            p.executeUpdate();
            System.out.println("DATA IS ENTERED INTO DECORATE TABLE!");
            response.sendRedirect("student_home.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    %>

</html>
