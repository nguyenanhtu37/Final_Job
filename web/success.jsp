<%-- 
    Document   : success
    Created on : Jun 29, 2024, 1:13:57 AM
    Author     : nguyenanhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JobLink &dash; Đăng ký thành công</title>
        <link rel="shortcut icon" href="images/logo.png">
    </head>
    <body>
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
                        <a class="" href="SignUpServlet" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: #66BC46; border-color: #66BC46; color: white; transition: background-color 0.3s, color 0.3s;">
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

            .container {
                display: flex;
                justify-content: center; /* Căn giữa theo chiều ngang */
                align-items: center;     /* Căn giữa theo chiều dọc */
                height: 100vh;           /* Chiều cao 100% viewport height */
                text-align: center;
            }

            .container h1, p{
                font-family: arial;
                font-size: 30px;
            }

            button {
                margin-top: 20px;        /* Khoảng cách giữa nút và các phần tử khác */
                padding: 10px 20px;      /* Kích thước của nút */
                font-size: 16px;         /* Kích thước chữ */
                cursor: pointer;         /* Con trỏ chuột */
                background-color: #66BC46;
                color: white;
                font-size: large;
                border-radius: 10px;
                border: solid white;
            }
        </style>

        <div class="container">
            <div>
                <h1>Đăng ký của bạn đã được gửi thành công!</h1>
                <p>Cảm ơn bạn đã đăng ký. Chúng tôi sẽ liên hệ với bạn sớm nhất có thể.</p>
                <button onclick="window.location.href='/SWP_JC/index.jsp'">Quay về trang chủ</button>
            </div>
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
    </body>
</html>
