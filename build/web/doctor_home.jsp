<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="rtl">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="style/img/menoufiauniversity.png">


        <title>الصفحة الرئيسية|الدكتور</title>

        <!-- Custom fonts for this template-->
        <link href="style/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template-->
        <link href="style/css/sb-admin.css" rel="stylesheet">
        <link href="style/css/doctor.css" rel="stylesheet">
        <link rel="style/stylesheet" href="style/vendor/bootstrap/scss/utilities/_text.scss" type="text/css"/>
        <link rel="style/stylesheet" href="style/vendor/bootstrap/scss/utilities/_text.scss" type="text/css">



    </head>

    <body id="page-top">

        <nav class="navbar navbar-expand  static-top">

            <a class="navbar-brand mr-1" href="doctor_home.jsp">القائمة</a>

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
                        <a class="nav-link" href="doctor_home.jsp">
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
                            <a class="dropdown-item" href="doctorate_data.jsp">بيانات الدكتوراه</a>
                            <a class="dropdown-item" href="master_data.jsp">بيانات الماجستير</a>
                            <a class="dropdown-item" href="diploma_data.jsp">بيانات الدبلوم</a>
                            <div class="dropdown-divider"></div>
        
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="adding_course.jsp">
                            <i class="far fa-plus-square"></i>
                            <span>اضافة مقررات</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="course.jsp">
                            <i class="fas fa-chart-bar"></i>
                            <span>بيانات المقررات</span></a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="search_dept.jsp">
                            <i class="fas fa-book"></i>
                            <span>تقييم الامتحانات</span></a>
                    </li>
                </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="doctor_home.jsp">لوحة التحكم</a>
                        </li>
                        <li class="breadcrumb-item active">نبذه عامة</li>
                    </ol>

                    <!-- Icon Cards-->
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-primary o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-university"></i>
                                    </div>
                                    <div class="mr-5"> طلبة الدكتوراه</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="doctorate_data.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض البيانات</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="doctorate_int_date.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">تحديد ميعادالمقابلة</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="doctorate_int_rate.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">تقييم المقابلة</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="doctorate_report.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض التقرير</span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-warning o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-list"></i>
                                    </div>
                                    <div class="mr-5">طلبة الماجستير</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="master_data.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض البيانات</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="master_int_date.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">تحديد ميعاد المقابلة</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="master_int_rate.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">تقييم المقابلة</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="master_report.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض التقرير</span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-success o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-graduation-cap"></i>
                                    </div>
                                    <div class="mr-5"> طلبة الدبلوم</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="diploma_data.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض البيانات</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="diploma_int_date.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">تحديد ميعاد المقابلة</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="diploma_int_rate.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">تقييم المقابلة</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="diploma_report.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض التقرير</span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-info o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-book"></i>
                                    </div>
                                    <div class="mr-5"> المقررات</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="adding_course.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">اضافة</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="course.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض</span>
                                </a>
                                <a class="card-footer text-white clearfix small z-1" href="search_dept_course.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">تعديل</span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-dark o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-book-open"></i>
                                    </div>
                                    <div class="mr-5">تقييم الامتحانات</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="search_dept.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض</span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-dark o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-book-open"></i>
                                    </div>
                                    <div class="mr-5">تحديد موعد فتح المقررات</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="select_duration.jsp">
                                    <span class="float-left">
                                        <i class="fas fa-angle-left"></i>
                                    </span>
                                    <span class="float-right">عرض</span>
                                </a>
                            </div>
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

        <!-- Custom scripts for all pages-->
        <script src="style/js/sb-admin.min.js"></script>

       

    </body>

</html>