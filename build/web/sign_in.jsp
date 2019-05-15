<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>تسجيل الدخول</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="style/img/menoufiauniversity.png">
        <link rel="stylesheet" href="style/bootstrap-4.3.1-dist/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="style/css/sign-form.css">
    </head>

    <body class="sign-in-back">
        <nav class="navbar navbar-expand-md  navbar-dark">
            <a class="navbar-brand" href="main.jsp"><img src="style/img/fci_ar.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="main.jsp">الصفحة الرئيسية</a></li>
                    <li class="nav-item dropdown">
                       
                    </li>
                    <li class="nav-item"><a class="nav-link" href="terms.jsp">شروط التقديم</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">اتصل بنا</a></li>

                </ul>
            </div>
        </nav>
        <div class="container login-container">
            <div class="col-md-8 login-form-1">
                
                <h3>تسجيل الدخول</h3>
                <form  action="sign_in_imp.jsp" method="POST">
                    <div class="form-group">
                        <input type="text" class="form-control" name="username" placeholder="اسم المستخدم*" value="" />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" placeholder="كلمة المرور*" value="" />
                    </div>
                    <div class="form-group" style="text-align: right;">
                        موظف <input type="radio" value="stuff" name="x" />
                        دكتور <input type="radio" value="doctor" name="x"/>
                        طالب <input type="radio" value="student" name="x"/>
                        ادمن<input type="radio" value="admin" name="x"/>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submit" class="btnSubmit" value="تسجيل الدخول" />
                    </div>
                    <div class="form-group">
                        <a href="#" class="ForgetPwd">نسيت كلمة المرور؟</a>
                    </div>
                </form>
            </div>

        </div>
        <script src="style/js/jquery-3.3.1.min.js"></script>
        <script src="style/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    </body>

</html>