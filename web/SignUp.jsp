<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <title>JobLink &dash; Đăng ký tài khoản mới</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="images/logo.png">


        <link rel="stylesheet" href="css/custom-bs.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.min.css">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="fonts/line-icons/style.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/quill.snow.css">


        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/register.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    </head>

    <body id="top">

        <div id="overlayer"></div>
        <div class="loader">
            <div class="spinner-border text-primary" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>

        <!-- NAVBAR -->
        <nav class="navbar" style="display: flex; align-items: center; height: 70px; background-color: white; padding: 0 20px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
            <div class="left-content" style="display: flex; align-items: flex-end">
                <a href="index.jsp"><img src="images/JobLink.png" alt="JobLink" class="navbar-logo" style="height: 50px; width: auto;"></a>
                <a href="index.jsp" class="nav-link" style="margin-left: 100px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;" onclick="scrollToSearchForm()">Việc làm</a>
                <div class="dropdown">
                    <a href="LoginServlet" class="nav-link" onclick="toggleDropdown()">Hồ sơ & CV</a>
                    <div class="dropdown-content" id="myDropdown">
                        <a href="LoginServlet">Tạo CV</a>
                    </div>
                </div>

                <a href="index.jsp" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Công cụ</a>
                <a href="index.jsp" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Cẩm nang nghề nghiệp</a>
            </div>
            <div class="right-cta-menu text-right d-flex align-items-center ml-auto" style="margin-left: auto;">
                <div class="d-flex align-items-center">
                    <div class="dropdown d-none d-lg-inline-block">
                        <a class="" href="LoginServlet" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: white; color: #66BC46; border-color: #66BC46; transition: background-color 0.3s, color 0.3s;">
                            Đăng nhập
                        </a>
                    </div>
                    <div class="dropdown d-none d-lg-inline-block ml-2">
                        <a class="" href="#" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: #66BC46; border-color: #66BC46; color: white; transition: background-color 0.3s, color 0.3s;">
                            Đăng ký
                        </a>
                    </div>
                    <div class="dropdown d-none d-lg-inline-block ml-2">
                        <a class="" href="DangKyTuVan.jsp" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: #2B332C; border-color: #2B332C; color: white; transition: background-color 0.3s, color 0.3s;">
                            Đăng tuyển & tìm hồ sơ
                        </a>
                    </div>
                </div>
                <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3" style="margin-left: 1rem;">
                    <span class="icon-menu h3 m-0 p-0 mt-2"></span>
                </a>
            </div>
        </nav>


        <style>
            .nav-link:hover {
                transform: scale(1.5); /* Zoom in 110% khi hover */
                color: #66BC46;
            }

            .btn.custom-btn:hover {
                background-color: #66BC46;
                color: white;
            }

            .btn.green-btn:hover {
                background-color: #4CAF50;
                border-color: #4CAF50;
            }

            .btn.dark-btn:hover {
                background-color: #1E272E;
                border-color: #1E272E;
            }

            .nav-link:hover {
                transform: scale(1.5); /* Zoom in 110% khi hover */
                color: #66BC46;
            }

            .btn.custom-btn:hover {
                background-color: #66BC46;
                color: white;
            }

            .btn.green-btn:hover {
                background-color: #4CAF50;
                border-color: #4CAF50;
            }

            .btn.dark-btn:hover {
                background-color: #1E272E;
                border-color: #1E272E;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #ffffff;
                min-width: 200px; /* Điều chỉnh độ rộng tối thiểu */
                box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                z-index: 1;
                border-radius: 4px; /* Bo góc dropdown */
                overflow: hidden; /* Ẩn phần nội dung vượt quá */
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                transition: background-color 0.3s, color 0.3s;
            }

            .dropdown-content a:hover {
                background-color: #66BC46; /* Màu nền khi hover */
                color: white; /* Màu chữ khi hover */
            }

            .show {
                display: block;
            }

            .nav-link {
                margin-left: 50px;
                text-decoration: none;
                color: #333;
                font-weight: bold;
                font-size: 16px;
                padding: 0px 10px;
                transition: color 0.3s, background-color 0.3s, transform 0.3s;
                cursor: pointer;
            }

        </style>

        <img class="wave" src="images/wave.png">
        <div class="container">
            <div class="img">
                <img src="images/bg.svg">
            </div>
            <div class="login-content">
                <form action="SignUpServlet" method="POST">
                    <div class="message-response h5 " style="color: red">
                        ${inputError}
                    </div>
                    <img src="images/avatar.svg">
                    <h2 class="title">Signup account</h2>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <input type="email" class="input" id="username_input" name="email-input" required>
                            <h5>Email</h5>
                            <span class="message-form"></span>
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <input type="password" class="input" id="pass_input" name="pass-input" required>
                            <h5>Password</h5>
                            <span class="message-form"></span>
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <input type="password" class="input" id="confirmpass_input" name="confirm-input">
                            <h5>Confirm Password</h5>
                        </div>
                    </div>

                    <div style="width: 100%; display: flex; justify-content: center;">
                        <div class="select-role">
                            <span class="label" for="role">Role: </span>
                            <select class="form-control" name="role-input" id="role_input">
                                <option value="User" selected>User</option>
                                <option value="Enterprise">Enterprise</option>
                            </select>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </div>
                    <input type="submit" class="btn" value="Sign Up">
                </form>
            </div>
            <a href="https://m.me/295506026989207" target="_blank" class="messenger-button">
                <!--<button>Bạn cần hỗ trợ?</button>-->
                <img src="images/messenger.png" alt="Messenger" class="messenger-icon">
            </a>
            <style>
                .messenger-button {
                    position: fixed;
                    bottom: 20px;
                    right: 20px;
                    z-index: 1000;
                    padding: 0px;
                    border-radius: 50%;
                    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
                }

                .messenger-icon {
                    width: 70px; /* Kích thước của biểu tượng Messenger */
                    height: 70px; /* Kích thước của biểu tượng Messenger */
                }
            </style>
        </div>
        <script type="text/javascript" src="js/register.js.js"></script>

        <!-- SCRIPTS -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/stickyfill.min.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>

        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/quill.min.js"></script>


        <script src="js/bootstrap-select.min.js"></script>

        <script src="C:\Users\nguye\Downloads\SWD392\web\js\register.js"></script>

        <script src="js/custom.js"></script>
        <script>
                            const signUpButton = document.getElementById('sign-up-btn');
                            const container = document.getElementById('container');

                            const messageResponse = document.querySelector(".message-response");

                            const usernameInput = document.getElementById("username_input")
                            const passwordInput = document.getElementById("pass_input")
                            const confirmPassInput = document.getElementById("confirmpass_input")
                            const roleInput = document.getElementById("role_input")

                            let message = "";



                            const exception = {
                                missInput: "Please fill all the input",
                                missConfirmPassword: "Confirm incorrect password!"
                            }

                            function error(message) {
                                messageResponse.classList.remove("d-none")
                                messageResponse.innerHTML = message
                            }
                            function valid() {
                                messageResponse.classList.add("d-none")
                                messageResponse.innerHTML = ""
                            }

                            confirmPassInput.addEventListener("input", function (e) {
                                if (passwordInput.value !== confirmPassInput.value) {
                                    error(exception.missConfirmPassword)
                                } else {
                                    valid()
                                }
                            })

                            const form = document.querySelector("form");

                            form.addEventListener("submit", function (e) {
                                e.preventDefault();

                                if (
                                        usernameInput.checkValidity() &&
                                        passwordInput.checkValidity() &&
                                        confirmPassInput.checkValidity() &&
                                        roleInput.checkValidity() &&
                                        usernameInput.value &&
                                        passwordInput.value &&
                                        confirmPassInput.value &&
                                        roleInput.value
                                        ) {
                                    valid();
                                    form.submit()
                                } else {
                                    error(exception.missInput);
                                }
                            });



        </script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const inputs = document.querySelectorAll(".input-div .input");

                inputs.forEach(input => {
                    input.addEventListener("focus", function () {
                        this.nextElementSibling.classList.add("focused");
                    });

                    input.addEventListener("blur", function () {
                        if (this.value === "") {
                            this.nextElementSibling.classList.remove("focused");
                        }
                    });

                    if (input.value !== "") {
                        input.nextElementSibling.classList.add("focused");
                    }
                });
            });
        </script>


    </body>

</html>