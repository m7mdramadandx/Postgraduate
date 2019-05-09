
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" scope="session" class="folder.Data"></jsp:useBean>
    <!DOCTYPE html>
    <html lang="en" dir="rtl">

        <head>

            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">
            <link rel="icon" href="style/img/menoufiauniversity.png">


            <title>الصفحة الرئيسية|الطالب</title>

            <!-- Custom fonts for this template-->
            <link href="style/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

            <!-- Custom styles for this template-->
            <link href="style/css/sb-admin.css" rel="stylesheet">
            <link href="style/css/student.css" rel="stylesheet">
            <link rel="stylesheet" href="style/vendor/bootstrap/scss/utilities/_text.scss" type="text/css" />
            <link rel="stylesheet" href="style/vendor/bootstrap/scss/utilities/_text.scss" type="text/css">



        </head>


        <body id="page-top">


            <nav class="navbar navbar-expand  static-top">

                <a class="navbar-brand mr-1" href="student_home.jsp">القائمة</a>

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
                        <a class="nav-link" href="student_home.jsp">
                            <i class="fas fa-fw fa-tachometer-alt"></i>
                            <span>لوحة التحكم</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="doctorate.jsp">
                            <i class="far fa-plus-square"></i>
                            <span>التسجيل للدكتوراه</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="master.jsp">
                            <i class="far fa-plus-square"></i>
                            <span>التسجيل للماجستير</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="diploma.jsp">
                            <i class="far fa-plus-square"></i>
                            <span>التسجيل للدبلومة</span></a>
                    </li>




                <%if (obj.getStatus().equals("مطابق للشروط")) {%>
                <li class="nav-item">
                    <a class="nav-link" href="current_course.jsp">
                        <i class="far fa-plus-square"></i>
                        <span>عرض المقررات</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="previous_course.jsp">
                        <i class="far fa-plus-square"></i>
                        <span>عرض المقررات السابقة</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="redo_course.jsp">
                        <i class="far fa-plus-square"></i>
                        <span> مقررات الدور الثاني</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="available_course.jsp">
                        <i class="far fa-plus-square"></i>
                        <span>اختيار مقررات</span></a>
                </li>

                <% } else {
                        System.out.print("refused");
                    } %>





            </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb bg-white">
                        <li class="breadcrumb-item">
                            <a href="student_home.jsp">لوحة التحكم</a>
                        </li>
                        <li class="breadcrumb-item active">نبذه عامة</li>
                    </ol>

                    <!-- Icon Cards-->

                    <div class="row">

                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white badge-danger noradius o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-book-open"></i>
                                    </div>
                                    <div class="mr-5">التسجيل للدراسات العليا</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="doctorate.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">التسجيل للدكتوراه</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="master.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">التسجيل للماجستير</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="diploma.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">التسجيل للدبلومة</span>
                                </a>
                            </div>
                        </div>
                        <%
                            if (obj.getStatus().equals("مطابق للشروط")) {
                        %> 
                        <div class="col-md-12 alert alert-success" role="alert"> تم قبول طلبك بنجاح</div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white badge-danger noradius o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-book-open"></i>
                                    </div>
                                    <div class="mr-5">المقررات</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="current_course.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="available_course.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">اضافة</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="previous_course.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض مقررات سابقة</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="redo_course.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض مقررات الدور الثاني </span>
                                </a>
                            </div>
                        </div>
                    </div>
                   <%}else { %>
                    <div class ="col-md-12 alert alert-danger"  role="alert">لم يتم قبولك بعد </div> 
                    <% }%>


                    <!-- /.container-fluid -->

                    <!-- Sticky Footer -->
                    <footer class="sticky-footer bg-white">
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
                            <a class="btn btn-primary" href="sign_out.jsp">تسجيل الخروج</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap core JavaScript-->
            <script src="style/vendor/jquery/jquery.min.js"></script>
            <script src="style/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="style/vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="style/js/sb-admin.min.js"></script>

    </body>

</html>