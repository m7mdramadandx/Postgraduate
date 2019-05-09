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


    <title>تقييم الامتحانات</title>

    <!-- Custom fonts for this template-->
    <link href="style/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="style/css/sb-admin.css" rel="stylesheet">
    <link href="style/css/doctor.css" rel="stylesheet">
    <link rel="stylesheet" href="style/vendor/bootstrap/scss/utilities/_text.scss" type="text/css" />
    <link rel="stylesheet" href="style/vendor/bootstrap/scss/utilities/_text.scss" type="text/css">



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
            </li>
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-chart-bar"></i>
                    <span>فحص المقررات</span></a>
            </li>
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
                    <li class="breadcrumb-item active">البحث عن القسم</li>
                </ol>

                <!-- Icon Cards-->
                <div class="row">
                        <div class="col-md-8 margin-form">
                                <div class="card">
                                    <div class="card-header"> </div>
                                    <div class="card-body">
                                        <form name="my-form" id="my-form" action="course_update.jsp" method="post">

                                            <div class="form-group row">
                                                <label  class="col-md-3 col-form-label text-md-right">القسم</label>
                                                <div class="col-md-6">
                                                    <input type="text" id="dept" class="form-control" name="dept" required>
                                                </div>
                                            </div>
                                            <div class="col-md-12 text-center">
                                                <button type="submit" name="submit" style="width: 20%" class="btn btn-primary" >بحث</button>
                                            </div>
                                        </form>
                                    </div>
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