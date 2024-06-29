<%-- 
    Document   : DangKyTuVan
    Created on : Jun 28, 2024, 3:27:30 PM
    Author     : nguyenanhtu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JobLink &mdash; Đăng ký nhận tư vấn</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,400italic,300italic,300,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
        <script defer src="https://use.fontawesome.com/releases/v5.1.0/js/all.js" integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>   
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-L5c9iWnfDavfAxKEZT4peJ3r9q0tbykR0pFmsRT9rH0MwC5xRRXo8rZ2JdHg9gBm" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+xzApzDm0D9F8Pk/xCI3l92rL0qg5GMECE1" crossorigin="anonymous"></script>  
        <!-- Theme CSS -->  
        <link id="theme-style" rel="stylesheet" href="assets/css/orbit-1.css">
        <link rel="stylesheet" href="css/custom-bs.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.min.css">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="fonts/line-icons/style.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/quill.snow.css">
        <link rel="stylesheet" href="css/writeCV.css"/>
        <link rel="shortcut icon" href="images/logo.png">
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/style.css"> 

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

            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }

            .container {
                display: flex;
                flex-direction: column;
                align-items: center;
                margin-top: 20px;
            }

            .title-container {
                text-align: center;
                margin-bottom: 40px;
            }

            .sub-container {
                display: flex;
                background-color: #f0f0f0;
                padding: 20px;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
                border-radius: 10px;
            }

            .sub-container img {
                margin-right: 20px;
            }

            .form-container {
                background-color: white;
                padding: 20px;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
                border-radius: 10px;
                width: 500px;
            }

            .form-container label {
                display: block;
                margin-bottom: 5px;
            }

            .form-container input[type="text"],
            .form-container input[type="email"],
            .form-container input[type="submit"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .form-container input[type="submit"] {
                background-color: #66BC46;
                color: white;
                border: none;
                cursor: pointer;
            }

            .form-container input[type="submit"]:hover {
                background-color: #5aad40;
            }

            .site-footer {
                margin-top: 100px
            }
        </style>
    </head>
    <body>
        <div id="overlayer"></div>
        <div class="loader">
            <div class="spinner-border text-primary" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>

        <!-- NAVBAR -->
        <nav id="navbar" class="navbar" style="display: flex; align-items: center; height: 70px; background-color: white; padding: 0 20px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
            <div class="left-content" style="display: flex; align-items: flex-end">
                <a href="./index.jsp"><img src="images/JobLink.png" alt="JobLink" class="navbar-logo" style="height: 50px; width: auto;"></a>
                <a href="#" class="nav-link" style="margin-left: 100px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Việc làm</a>
                <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Hồ sơ & CV</a>
                <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Công cụ</a>
                <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Cẩm nang nghề nghiệp</a>
            </div>
        </nav>

        <section class="section-hero inner-page overlay bg-image" style="background-image: url('images/dangkituvan.jpg'); height: 400px" id="home-section">
        </section>

        <div class="container">
            <div class="title-container">
                <h1>Đâu là giải pháp phù hợp cho doanh nghiệp của bạn?</h1>
                <h5>Hãy để lại thông tin và các chuyên viên tư vấn tuyển dụng của JobLink sẽ liên hệ ngay với bạn</h5>
            </div>

            <div class="sub-container">
                <img src="images/logo.png" width="200" height="200" alt="Logo">
                <form action="register_enterprise" method="post" class="form-container">
                    <h3 style="color: #66BC46; padding-top: 20px; margin-bottom: 40px">Đăng ký nhận tư vấn</h3>
                    <label for="name" style="font-weight: bold; margin: 0px">Họ và tên</label>
                    <input type="text" id="nameForm" name="name" required placeholder="Họ và tên"><br>

                    <label for="email" style="font-weight: bold; margin: 0px">Email</label>
                    <input type="email" id="emailForm" name="email" required placeholder="Email"><br>

                    <label for="phone" style="font-weight: bold; margin: 0px">Số điện thoại</label>
                    <input type="text" id="phone" name="phone" required placeholder="Số điện thoại"><br>

                    <label for="location" style="font-weight: bold; margin: 0px">Tỉnh/Thành phố</label>
                    <input type="text" id="location" name="location" required placeholder="Tỉnh/Thành phố"><br>

                    <label for="consultation_need" style="font-weight: bold; margin: 0px">Nhu cầu tư vấn</label>
                    <input type="text" id="consultation_need" name="consultation_need" required placeholder="Bạn cần hỗ trợ gì?"><br>

                    <input style="margin: 0px; background-color: #66BC46" type="submit" value="Đăng ký">
                </form>
            </div>
        </div>

        <footer class="site-footer">
            <a href="#navbar" class="smoothscroll scroll-top">
                <span class="icon-keyboard_arrow_up"></span>
            </a>

            <div class="container">
                <div class="row mb-5">
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Công việc nổi bật</h3>
                        <ul class="list-unstyled">
                            <li><a href="#">Lập trình viên Web</a></li>
                            <li><a href="#">Thiết kế đồ họa</a></li>
                            <li><a href="#">Nhà khoa học dữ liệu</a></li>
                            <li><a href="#">Lập trình viên Python</a></li>
                            <li><a href="#">Thiết kế UX/UI</a></li>
                            <li><a href="#">Kỹ sư phần mềm</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Công ty</h3>
                        <ul class="list-unstyled">
                            <li><a href="#">Tìm việc làm</a></li>
                            <li><a href="#">Đăng tin tuyển dụng</a></li>
                            <li><a href="#">Về chúng tôi</a></li>
                            <li><a href="#">Blog</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Hỗ trợ</h3>
                        <ul class="list-unstyled">
                            <li><a href="#">Liên hệ</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Điều khoản dịch vụ</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Liên hệ</h3>
                        <div class="footer-social">
                            <a href="https://www.facebook.com/profile.php?id=61561023315607"><span class="icon-facebook"></span></a>
                            <a href="https://x.com/"><span class="icon-twitter"></span></a>
                            <a href="https://www.instagram.com/"><span class="icon-instagram"></span></a>
                            <a href="https://www.linkedin.com/"><span class="icon-linkedin"></span></a>
                        </div>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="col-12">
                        <p class="copyright"><small>
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> | <i class="icon-heart text-danger" aria-hidden="true"></i> <a href="https://colorlib.com" target="_blank">Nguyễn Anh Tú</a>
                            </small></p>
                    </div>
                </div>
            </div>
        </footer>

        <a href="https://m.me/295506026989207" target="_blank" class="messenger-button">
            <!--<button>Bạn cần hỗ trợ?</button>-->
            <img src="images/messenger.png" alt="Messenger" class="messenger-icon">
        </a>
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
        <script src="js/custom.js"></script>
        <script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
        <script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
    </body>
</html>
