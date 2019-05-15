<%-- 
    Document   : sign_out
    Created on : May 8, 2019, 10:27:55 PM
    Author     : RAMADAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>الصفحة الرئيسية</title>
        <script src="backNoWork.js" type="text/javascript"></script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style/css/main.css">
        <link rel="stylesheet" href="style/bootstrap-4.3.1-dist/css/bootstrap.min.css">
        <link rel="icon" href="style/img/menoufiauniversity.png">
    </head>
    <body>
        <%
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Expires", "0");
            response.setDateHeader("Expires", -1);
            session.invalidate();
        %>
        <header>
            <section>
                <div class="inner">
                    <div class="header-txt">
                        <h1>كلية الحاسبات والمعلومات</h1>
                        <div class="btns">
                            <a class="btn-one" href="sign_in.jsp">تسجيل الدخول</a>
                            <a class="btn-sec" href="sign_up.jsp">انشاء حساب</a>
                        </div>
                    </div>
                </div>
            </section>
        </header>
        <script src="style/js/jquery-3.3.1.min.js"></script>
        <script src="style/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    </body>
</html>