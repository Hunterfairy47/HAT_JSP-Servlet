<%-- 
    Document   : login
    Created on : Mar 15, 2021, 5:31:41 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <title>Đăng ký tài khoản</title>
        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <!-- Main css -->
        <link rel="stylesheet" href="css/regform.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#email").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_email = $(this).val();
                    x_timer = setTimeout(function () {
                        check_email_ajax(user_email);
                    }, 1000);
                });
                function check_email_ajax(email) {
                    $("#user-result").html('<img src="images/ajax-loader.gif" />');
                    $.post('CheckEmailServlet', {'email': email}, function (data) {
                        $("#user-result").html(data);
                    });
                }
            });
        </script>
        <style>
            #user-result{
                position: absolute;
                top: 4px;
                right: 4px;
                width: 20px;                
                height: 20px;
            }
        </style>

    </head>
    <body>
        <div class="main">
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Đăng ký</h2>
                            <form action="UsersServlet" method="POST" class="register-form" id="register-form">
                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="name" required="yes" id="name" placeholder="Họ tên"/>
                                </div>
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label>
                                    <input type="email" name="email" maxlength="50" id="email" placeholder="Email"/>
                                    <span id="user-result"></span>
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="password" name="pass" required="yes" id="pass" placeholder="Mật khẩu"/>
                                </div>
                                <div class="form-group">
                                    <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="password" name="re_pass" required="yes" id="re_pass" placeholder="Nhập lại mật khẩu"/>
                                </div>
                                <div class="form-group">
                                    <label for="phone"><i class="zmdi zmdi-phone"></i></label>
                                    <input type="text" name="phone" id="re_pass" placeholder="Điện thoại"/>
                                </div>
                                <div class="form-group">
                                    <label for="address"><i class="zmdi zmdi-city"></i></label>
                                    <input type="text" name="address" id="re_pass" placeholder="Địa chỉ"/>
                                </div>
                                <!--                                <div class="form-group">
                                                                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                                                    <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                                                                </div>-->
                                <div class="form-group form-button">
                                    <input type="hidden" name="command"  value="insert"/>
                                    <input type="submit" name="signup" id="signup" class="form-submit" value="Đăng ký"/>                                    
                                </div>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                            <a href="login.jsp" class="signup-image-link">Bạn đã có tài khoản? Đăng nhập</a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/regform.js"></script>
    </body>
</html>
