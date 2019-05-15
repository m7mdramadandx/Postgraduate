<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>انشاء حساب</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="style/img/menoufiauniversity.png">
    <link rel="stylesheet" href="style/bootstrap-4.3.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style/css/sign-form.css">
</head>

<body>
    <nav class="navbar navbar-expand-md  navbar-dark">
        <a class="navbar-brand" href="main.jsp"><img src="style/img/fci_ar.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="main.jsp">الصفحة الرئيسية</a></li>
              
                <li class="nav-item"><a class="nav-link" href="terms.jsp">شروط التقديم</a></li>
                <li class="nav-item"><a class="nav-link" href="#">اتصل بنا</a></li>
            </ul>
        </div>
    </nav>
    <div class=" register">
        <div class="row">
            <div class="col-md-3 register-left">
                <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
                <h3>مرحبا</h3>
                <p>ادخل البيانات التاليه لانشاء حساب</p>
                <a href="sign_in.jsp"> <input type="submit" name="" value="تسجيل دخول" /></a><br />
            </div>
            <div class="col-md-9 register-right">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <form class="row register-form" method="POST" action="newjsp.jsp" >
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="id" placeholder="اسم المستخدم*"
                                    value="" />
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="first_name" placeholder="الاسم الاول*"
                                    value="" />
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="last_name" placeholder="اسم العائلة*"
                                    value="" />
                            </div>
                            
                            <div class="form-group">
                                <input type="text" minlength="2" maxlength="10" class="form-control" name="department"
                                    placeholder="القسم*" value="" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="degree_type" placeholder="الدرجة*"
                                    value="" />
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" minlength="14" maxlength="14" name="national_id" placeholder="رقم البطاقة*"
                                    value="" />
                            </div>
                            <div class="form-group">
                                <input type="text" minlength="11" maxlength="11" class="form-control" name="telephone"
                                    placeholder="رقم المحمول*" value="" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" placeholder="البريد الالكتروني*"
                                    value="" />
                            </div>

                        </div>
                        <div class="col-md-6">
                            <span style="float: right;">تاريخ الميلاد* </span>
                            <div class="form-group" style="text-align: right; ">
                                <input type="date" class="form-control" name="dob" value="" />
                            </div>
                        </div>
                        <div class="form-group">
                                <input type="password" class="form-control" name="password" placeholder="كلمة المرور*"
                                    value="" />
                            </div>
                        <div class="col-md-6">
                            <input type="submit" name="submit" class="btnRegister" value="تسجيل" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <script src="style/js/jquery-3.3.1.min.js"></script>
    <script src="style/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
</body>

</html>