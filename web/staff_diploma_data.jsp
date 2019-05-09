<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="folder.connectionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="rtl">
    <% request.setCharacterEncoding("utf-8"); %>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="style/img/menoufiauniversity.png">


        <title>بيانات الدبلوم</title>

        <!-- Custom fonts for this template-->
        <link href="style/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="style/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="style/css/sb-admin.css" rel="stylesheet">
        <link href="style/css/stuff.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <nav class="navbar navbar-expand static-top">

            <a class="navbar-brand mr-1" href="style/staff_home.jsp">القائمة</a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="البحث عن.." aria-label="Search"
                           aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-bell fa-fw"></i>
                        <span class="badge badge-danger">9+</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-envelope fa-fw"></i>
                        <span class="badge badge-danger">7</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user-circle fa-fw"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="settings_page.jsp">الاعدادات</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="sign_out.jsp" data-toggle="modal" data-target="#logoutModal">تسجيل الخروج</a>
                    </div>
                </li>
            </ul>

        </nav>

        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="staff_home.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>لوحة التحكم</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>صفحات</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">جداول البيانات</h6>
                        <a class="dropdown-item" href="staff_doctorate_data.jsp">بيانات الدكتوراه</a>
                        <a class="dropdown-item" href="staff_master_data.jsp">بيانات الماجستير</a>
                        <a class="dropdown-item" href="staff_diploma_data.jsp">بيانات الدبلوم</a>
                        <div class="dropdown-divider"></div>

                    </div>
                </li>

            </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="staff_home.jsp">لوحة التحكم</a>
                        </li>
                        <li class="breadcrumb-item active">بيانات درجة الدبلوم</li>
                    </ol>

                    <!-- DataTables Example -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            جدول البيانات</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <form action="diploma_status.jsp" method="post">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>  
                                                <th></th>
                                                <th><b>الاسم الاول</b></th>
                                                <th><b>اسم الوالد</b></th>
                                                <th><b>تاريخ الميلاد</b></th>
                                                <th><b>محل الميلاد</b></th>
                                                <th><b>الجنسية</b></th>
                                                <th><b>الديانة</b></th>
                                                <th><b>رقم البطاقة</b></th>
                                                <th><b>موقف التجنيد</b></th>
                                                <th><b>الوظيفة</b></th>
                                                <th><b>جهة العمل</b></th>
                                                <th><b>العنوان</b></th>
                                                <th><b>رقم التليفون</b></th>
                                                <th><b>بكالوريوس/ليسانس في</b></th>
                                                <th><b>دور</b></th>
                                                <th><b>التقدير العام</b></th>
                                                <th><b>الشعبة</b></th>
                                                <th><b>تقدير التخصص</b></th>
                                                <th><b>الكلية</b></th>
                                                <th><b>الجامعة</b></th>
                                                <th><b>سنة التخرج</b></th>
                                                <th><b>دبلوم الدراسات العليا في</b></th>
                                                <th><b>دور</b></th>
                                                <th><b>التخصص</b></th>
                                                <th><b>التقدير</b></th>
                                                <th><b>الكلية</b></th>
                                                <th><b>الجامعة</b></th>
                                                <th><b>القسم العلمي المتقدم للقيد فيه</b></th>
                                                <th><b>الحالة</b></th>
                                                <th><b>معاد المقابلة</b></th>
                                                <th><b>تقييم المقابلة</b></th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <%
                                            try {
                                                connectionDB c = new connectionDB();
                                                Connection con = c.getConnection();
                                                String SQL = "select * from faculty.diploma ";
                                                PreparedStatement ps = con.prepareStatement(SQL);
                                                ResultSet rs = ps.executeQuery();
                                        %>
                                        <%!
                                            int counter = 0;

                                        %>  
                                        <% while (rs.next()) {
                                                counter++;
                                        %>
                                        <tbody>
                                            <tr>
                                                <td><%=rs.getString(1)%></td>
                                                <td><%=rs.getString(2)%></td>
                                                <td><%=rs.getString(3)%></td>
                                                <td><%=rs.getString(4)%></td>
                                                <td><%=rs.getString(5)%></td>
                                                <td><%=rs.getString(6)%></td>
                                                <td><%=rs.getString(7)%></td>
                                                <td><%=rs.getString(8)%></td>
                                                <td><%=rs.getString(9)%></td>
                                                <td><%=rs.getString(10)%></td>
                                                <td><%=rs.getString(11)%></td>
                                                <td><%=rs.getString(12)%></td>
                                                <td><%=rs.getString(13)%></td>
                                                <td><%=rs.getString(14)%></td>
                                                <td><%=rs.getString(15)%></td>
                                                <td><%=rs.getString(16)%></td>
                                                <td><%=rs.getString(17)%></td>
                                                <td><%=rs.getString(18)%></td>
                                                <td><%=rs.getString(19)%></td>
                                                <td><%=rs.getString(20)%></td>
                                                <td><%=rs.getString(21)%></td>
                                                <td><%=rs.getString(22)%></td>
                                                <td><%=rs.getString(23)%></td>
                                                <td><%=rs.getString(24)%></td>
                                                <td><%=rs.getString(25)%></td>
                                                <td><%=rs.getString(26)%></td>
                                                <td><%=rs.getString(27)%></td>
                                                <td><%=rs.getString(28)%></td>
                                                <td><%=rs.getString(29)%></td>
                                                <td><select value="" name="<%= counter%>" >
                                                        <option value="" >اختر ..</option>
                                                        <option value="مطابق للشروط">مطابق للشروط</option>
                                                        <option value="غير مطابق للشروط">غير مطابق للشروط</option>
                                                    </select></td>                                         
                                                <td><%=rs.getString(31)%></td>
                                                <td><%=rs.getString(32)%></td>
                                            </tr>
                                        </tbody>

                                        <%
                                                }
                                            } catch (ClassNotFoundException ex) {
                                                Logger.getLogger(connectionDB.class.getName()).log(Level.SEVERE, null, ex);
                                            }
                                        %> 

                                    </table>


                            </div>
                            <br>
                            <input type="submit" class="btn btn-primary" name="submit" value="حفظ" >
                            </form>
                            <a href="diploma_report.jsp" class="btn btn-primary"> عمل التقرير</a> <br/>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <footer class="sticky-footer">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright © Your Website 2019</span>
                        </div>
                    </div>
                </footer>

            </div>
            <!-- /.content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">هل انت مستعد للخروج؟</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">اضغط "تسجيل الخروج" اذا كنت مستعدا للخروج</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">الغاء</button>
                        <a class="btn btn-primary" href="main.jsp">تسجيل الخروج</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="style/vendor/jquery/jquery.min.js"></script>
        <script src="style/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="style/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="style/vendor/datatables/jquery.dataTables.js"></script>
        <script src="style/vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="style/js/sb-admin.min.js"></script>

        <!-- datatables-->
        <script src="style/js/demo/datatables-demo.js"></script>
        <script>var rows = document.getElementsByTagName('tr');
            for (var i = 1; i < rows.length; i++) {
                var para = document.createElement("td");
                rows[i].insertCell(para);
                rows[i].children[0].innerHTML = i;
            }</script>
    </body>
</html>
