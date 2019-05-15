<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>بيانات التسجيل للدبلومة</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="style/img/menoufiauniversity.png">
        <link rel="stylesheet" href="style/bootstrap-4.3.1-dist/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="style/css/style.css">
    </head>

    <body>
        <nav class="navbar navbar-expand-md  navbar-dark fixed-top">
            <a class="navbar-brand" href="main.jsp"><img src="style/img/fci_ar.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">اعضاء هيئة التدريس</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">TODO</a>
                            <a class="dropdown-item" href="#">TODO</a>
                            <a class="dropdown-item" href="#">TODO</a>
                        </div>
                    </li>
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
                </ul>
            </div>
        </nav>
        <div class="form-container col ">
            <form action="diploma_imp.jsp" method="post" class="col-lg-8">
                <label>الاسم :</label>
                <input class="col-md-8" type="text" name="first_name" placeholder="ادخل الاسم بالكامل"> <br>
                <label>اسم الوالد :</label>
                <input class="col-md-8" type="text" name="last_name" placeholder="ادخل الاسم بالكامل"> <br>
                <label>تاريخ الميلاد :</label>
                <input type="date" name="dob"> <br>
                <fieldset>
                    <legend>محل الميلاد*</legend>
                    <input type="text" name="village" placeholder="قرية">
                    <input type="text" name="section" placeholder="مركز">
                    <input type="text" name="government" placeholder="محافظة">
                </fieldset>
                <div class="field">
                    <input type="text" name="nationality" placeholder="الجنسية">
                    <input type="text" name="religion" placeholder="الديانة">
                    <input type="text" name="national_id" placeholder="رقم البطاقة">
                </div>
                <div class="field">
                    <label>موقف التجنيد :</label>
                    <select name="recruitment_position">
                        <option value="مؤجل">مؤجل</option>
                        <option value="معفي">معفي</option>
                        <option value="انهي الخدمة">انهي الخدمة</option>
                    </select>
                    <input type="text" name="job" placeholder="الوظيفة">
                    <input type="text" name="organization" placeholder="جهة العمل">
                </div>
                <div class="field-two">
                    <input type="text" name="address" placeholder="العنوان">
                    <input type="text" name="telephone" placeholder="رقم التليفون">
                    <input type="text" name="graduation_year" placeholder="سنة التخرج">

                </div>
                <fieldset class="fieldset-two">
                    <legend>الدرجات الجامعية الحاصل عليها*</legend>
                    ۱-<br>
                    <input type="text" name="bachelor" placeholder="بكالوريوس/ليسانس في">
                    <input type="text" name="round" placeholder="دور">
                    <input type="text" name="general_appreciation" placeholder="التقدير العام">
                    <input type="text" name="department" placeholder="الشعبة">
                    <input type="text" name="specialization_appreciation" placeholder="تقدير التخصص">
                    <input type="text" name="faculty" placeholder="الكلية">
                    <input type="text" name="university" placeholder="الجامعة">
                    <input type="text" name="graduation_year" placeholder="سنة التخرج">
                    <br>
                    ۲-
                    <br>
                    <input type="text" name="graduate_diploma" placeholder="دبلوم الدراسات العليا في">
                    <input type="text" name="gd_round" placeholder="دور">
                    <input type="text" name="gd_specialization" placeholder="التخصص">
                    <input type="text" name="gd_appreciation" placeholder="التقدير">
                    <input type="text" name="gd_faculty" placeholder="الكلية">
                    <input type="text" name="gd_university" placeholder="الجامعة">
                    <input type="text" name="registered_scientific_section" placeholder="القسم العلمي المتقدم للقيد فيه">
                </fieldset>
                <input type="submit" value="تسجيل" class="btn col-lg-4">
            </form>
        </div>

        <script src="style/js/jquery-3.3.1.min.js"></script>
        <script src="style/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    </body>

</html>