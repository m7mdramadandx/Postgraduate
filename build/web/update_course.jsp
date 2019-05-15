

<%@page import="folder.connectionDB"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.sql.rowset.RowSetProvider"%>
<%@page import="javax.sql.rowset.JdbcRowSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
    <!DOCTYPE html>
    <html lang="en" dir="rtl">
        <% request.setCharacterEncoding("utf-8");
        %>

        <head>
            <title>تقرير درجة الدبلوم والدراسات العليا</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="icon" href=" style/img/menoufiauniversity.png">
            <link rel="stylesheet" type="text/css" href=" style/css/deploma.css">
            <link rel="stylesheet" href="style/bootstrap-4.3.1-dist/css/bootstrap.min.css">
            <script src="style/js/jquery-3.3.1.min.js"></script>
            <link rel="stylesheet" type="text/css" href="style/css/jquery.dataTables.css">
        </head>
        <body>
            <header>
                <nav class="navbar navbar-expand-md  navbar-dark fixed-top">
                    <a class="navbar-brand" href=" style/main.jsp"><img src=" style/img/fci_ar.png"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">الطلاب</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="doctorate.jsp">التسجيل للدكتوراه</a>
                                    <a class="dropdown-item" href="master.jsp">التسجيل للماجيستير</a>
                                    <a class="dropdown-item" href="diploma.jsp">التسجيل للدبلوم</a>
                                </div>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="terms.jsp">شروط التقديم</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">اتصل بنا</a></li>
                            <li class="nav-item"><a class="nav-link" href="sign_out.jsp">تسجيل الخروج</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
            <div class="page-container">
                <h2>تقرير درجة الدبلوم والدراسات العليا</h2>
                <hr>
                <div class="table-container">

                    <form action="stud_year_update.jsp" method="post">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th><b>كود المقرر</b></th>
                                    <th><b>اسم المقرر</b></th>
                                    <th><b>عدد الساعات</b></th>
                                    <th><b>القسم</b></th>
                                    <th><b>الدرجة</b></th>
                                    <th><b> العام الدراسي</b></th>
                                </tr>
                            </thead>
                            <%
                                try {
                                    connectionDB c = new connectionDB();
                                    Connection con = c.getConnection();
                                    String SQL = "select * from faculty.course where course_code = '" + request.getParameter("course_code") + "' ";
                                    PreparedStatement ps = con.prepareStatement(SQL);
                                    ResultSet rs = ps.executeQuery();
                                    while (rs.next()) {
                            %>

                            <tbody>
                                <tr>                            
                                    <td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
                                    <td><%=rs.getString(6)%></td>
                                    <td><select name="stud_year">
                                            <option value="null">اختر ..</option>
                                            <option value="حاليا">حاليا</option>
                                            <option value="لاحقا">لاحقا</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                            <%

                                    }
                                } catch (ClassNotFoundException ex) {
                                    Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
                                }
                            %> 

                        </table>
                        <input type="submit" name="subnit" value="تعديل" >
                    </form>
                </div>
            </div>
            <script src=" style/js/jquery-3.3.1.min.js"></script>
            <script src=" style/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
            <script type="text/javascript" charset="utf8" src=" style/js/jquery.dataTables.js"></script>
            <script src=" style/js/script.js"></script>
        </body>
    </html>

