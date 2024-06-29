<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Job" %>
<%@ page import="model.Enterprise" %>
<%
    ArrayList<Job> jobss = (ArrayList<Job>) session.getAttribute("jobss");
    ArrayList<Enterprise> enterprises = (ArrayList<Enterprise>) session.getAttribute("enterprises");
%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>JobLink</title>
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="Free-Template.co" />
        <link rel="shortcut icon" href="images/logo.png">

        <link rel="stylesheet" href="css/custom-bs.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.min.css">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="fonts/line-icons/style.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/animate.min.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-L5c9iWnfDavfAxKEZT4peJ3r9q0tbykR0pFmsRT9rH0MwC5xRRXo8rZ2JdHg9gBm" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+xzApzDm0D9F8Pk/xCI3l92rL0qg5GMECE1" crossorigin="anonymous"></script>


        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/style.css">   
    </head>
    <body id="top">

        <div id="overlayer"></div>
        <div class="loader">
            <div class="spinner-border text-primary" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>


        <div class="site-wrap">

            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div> <!-- .site-mobile-menu -->


            <!-- NAVBAR -->
            <nav class="navbar" style="display: flex; align-items: center; height: 70px; background-color: white; padding: 0 20px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                <div class="left-content" style="display: flex; align-items: flex-end">
                    <a href="#"><img src="images/JobLink.png" alt="JobLink" class="navbar-logo" style="height: 50px; width: auto;"></a>
                    <a href="#" class="nav-link" style="margin-left: 100px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Việc làm</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Hồ sơ & CV</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Công cụ</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Cẩm nang nghề nghiệp</a>
                </div>
                <div class="right-cta-menu text-right d-flex align-items-center ml-auto" style="margin-left: auto;">
                    <div class="d-flex align-items-center">
                        <div class="dropdown d-none d-lg-inline-block">
                            <a class="btn custom-btn" href="LoginServlet" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: white; color: #66BC46; border-color: #66BC46; transition: background-color 0.3s, color 0.3s;">
                                Đăng nhập
                            </a>
                        </div>
                        <div class="dropdown d-none d-lg-inline-block ml-2">
                            <a class="btn custom-btn green-btn" href="SignUpServlet" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: #66BC46; border-color: #66BC46; color: white; transition: background-color 0.3s, color 0.3s;">
                                Đăng ký
                            </a>
                        </div>
                        <div class="dropdown d-none d-lg-inline-block ml-2">
                            <a class="btn custom-btn dark-btn" href="DangKyTuVan.jsp" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: #2B332C; border-color: #2B332C; color: white; transition: background-color 0.3s, color 0.3s;">
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
            </style>

            <!-- HOME -->
            <section class="home-section bg-image" style="background-image: url(''); "
                     id="home-section">
                <div class="container scroll" style="overflow-y:scroll;">

                    <div class="text-center" style="margin-top: 50px; margin-bottom: 10px"> 
                        <img src="images/JobLink.png" width="400px" height="auto" alt="Logo"/>
                    </div>
                    <div style="height: 50px">
                        <div class="typing-container" style="margin-top: 0px">
                            <p style="color: #333; font-family: monospace; font-size: 30px;">
                                "Vì một <span class="text-highlight">tương lai</span> không có người <span class="text-warning">thất nghiệp</span>!"
                            </p>
                        </div>
                    </div>

                    <style>
                        .typing-container {
                            display: inline-block;
                            /*display: flex;*/
                            /*justify-content: center;*/
                            white-space: nowrap;
                            border-right: 1px solid; /* Đường viền con trỏ chuột */
                            animation: caret 0.75s step-end infinite;
                            font-family: monospace;
                            font-size: 30px;
                            color: #333;
                            padding-left: 200px
                        }

                        @keyframes caret {
                            50% {
                                border-color: transparent;
                            }
                        }

                        .text-highlight {
                            color: #66BC46;
                        }

                        .text-warning {
                            color: red;
                        }

                        /* Điều chỉnh kích thước con trỏ chuột */
                        .typing-container p {
                            border-right-width: 1px; /* Đường viền nhỏ hơn */
                        }

                    </style>

                    <div id="carouselIndicators" class="carousel slide" data-ride="carousel" style="margin-top: 50px; margin-bottom: 50px">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselIndicators" data-slide-to="2"></li>
                            <li data-target="#carouselIndicators" data-slide-to="3"></li>
                            <li data-target="#carouselIndicators" data-slide-to="4"></li>
                            <!--Add more <li> items for additional slides--> 
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/carousel1_LE_digital_art_x2.jpg" class="d-block w-100" alt="Slide 1">
                            </div>
                            <div class="carousel-item">
                                <img src="images/c2_LE_digital_art_x4.jpg" class="d-block w-100" alt="Slide 2" style="width: 700px">
                            </div>
                            <div class="carousel-item">
                                <img src="images/c3_LE_digital_art_x4.jpg" class="d-block w-100" alt="Slide 3">
                            </div>
                            <div class="carousel-item">
                                <img src="images/c4_LE_digital_art_x4.jpg" class="d-block w-100" alt="Slide 4">
                            </div>
                            <div class="carousel-item">
                                <img src="images/c5_LE_digital_art_x4.jpg" class="d-block w-100" alt="Slide 5">
                            </div>
                            <!--Add more <div class="carousel-item"> for additional slides--> 
                        </div>
                        <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                    <style>
                        /* Carousel styling */
                        #carouselIndicators {
                            border-radius: 15px; /* Rounded corners */
                            overflow: hidden; /* Prevent carousel from overflowing */
                            max-width: 2000px; /* Maximum width for the carousel */
                            margin: 0px auto 0; /* Center the carousel and add top margin */
                            background-color: #f0f0f0; /* Gray background color */
                            box-shadow: 0 14px 16px rgba(0, 0, 0, 0.1); /* Shadow effect */
                            max-height: 700px;
                            margin-bottom: 30px;
                        }

                        .carousel-inner {
                            border-radius: 15px; /* Rounded corners for carousel items */
                        }

                        .carousel-item img {
                            width: 100%;
                            height: 100%;
                            object-fit: cover; /* Đảm bảo hình ảnh vừa với phần tử mà không bị kéo dãn */
                        }

                    </style>




            </section>

            <div style="background-color: #f0f0f0; width: 100%; padding: 20px 0;">
                <div class="container">
                    <h2 style="color: #66BC46; margin-top: 20px; text-align: left; margin-bottom: 30px">Top Công ty hàng đầu</h2>
                    <div class="row justify-content-center">
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/ms.png" alt="Microsoft">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/amz.png" alt="Facebook">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/fpt-300x200.png" alt="FPT">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/vng.png" alt="VNG">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/viettel.jpg" alt="Viettel">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/vnpt.jpg" alt="VNPT">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/amazone.jpg" alt="Amazon">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/moa.png" alt="MoA">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/vinatech.png" alt="VinaTech">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/tiktok.jpg" alt="TikTok">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/vigo.jpg" alt="Vigo">
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/nextlogix.jpg" alt="NextLogix">
                        </div>  
                    </div>
                </div>
            </div>


            <style>
                .lg {
                    height: 200px;
                    width: 270px;
                    object-fit: contain; /* Ensure the image does not stretch */
                    border: 1px solid rgba(0, 0, 0, 0.1);
                    border-radius: 15px;
                    background-color: white;
                    transition: transform 0.3s ease, box-shadow 0.3s ease;
                }

                .lg:hover {
                    transform: scale(1.05); /* Slightly enlarge the image */
                    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add a shadow effect */
                }

                .col-lg-3, .col-md-4, .col-sm-6, .col-12 {
                    padding: 15px;
                    padding-top: 0px;
                    padding-bottom: 0px;
                    margin-bottom: 0px;
                }
            </style>

            <div class="searchJob">
                <div class="container">
                    <h3 style="padding-top: 50px; font-size: 50px" class="just-align-center">Bạn muốn tìm kiếm việc làm?</h3>
                    <div class="just-align-center" style="padding-bottom: 60px">
                        <button class="flashing-button" onclick="scrollToSearchForm()">Tìm kiếm ngay</button>
                    </div>
                    <div class="row justify-content-left">
                        <div>
                            <img src="images/png-clipart-job-hunting-intern-employment-website-cover-letter-job-search-text-logo.png" width="width" height="height" alt="alt"/>
                            <form id="searchForm" action="SearchIndex" method="POST" class="search-jobs-form">
                                <div class="row mb-5">
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                        <input name="search-input" type="text" class="form-control form-control-lg" placeholder="Vị trí ứng tuyển:" style="background-color: #cccccc; border-style: inherit">
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                        <input name="location-input" type="text" class="form-control form-control-lg" placeholder="Địa chỉ:" style="background-color: #cccccc">
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                        <select name="type-input" class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true" title="Chọn loại hình công việc:" style="border: 2px solid #cccccc; border-radius: 4px; padding: 5px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);">
                                            <option value="parttime">Part Time</option>
                                            <option value="fulltime">Full Time</option>
                                            <option value="remote">Remote</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block text-white btn-search"><span class="icon-search icon mr-2"></span>Search Job</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <c:forEach items="${jobss}" var="job">
                            <div class="col-md-4 col-sm-6 mb-4">
                                <div class="card h-100">
                                    <div class="card-body">
                                        <h5 class="card-title text-capitalize" style="font-size: 24px; font-weight: bold;"><a href="ViewJobDetailIndex?id=${job.jobId}" class="text-dark">${job.title}</a></h5>
                                        <h6 class="card-subtitle mb-2 text-muted text-capitalize">${job.enterName}</h6>
                                        <p class="card-text text-capitalize"><strong>Location:</strong> ${job.location}</p>
                                        <a href="LoginServlet" class="btn btn-primary btn-block">Apply</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <style>
                .just-align-center {
                    text-align: center;
                }

                .flashing-button {
                    font-size: 20px;
                    border: 1px solid;
                    border-radius: 5px;
                    background-color: #66BC46;
                    color: white;
                    animation: flash 1.5s infinite;
                }

                @keyframes flash {
                    0%, 50%, 100% {
                        opacity: 1;
                    }
                    25%, 75% {
                        opacity: 0.5;
                    }
                }

                .card {
                    border: 1px solid rgba(0, 0, 0, 0.1);
                    border-radius: 10px;
                    background-color: white;
                    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    transition: transform 0.2s;
                }

                .card:hover {
                    transform: scale(1.05);
                }

                .card-title a {
                    text-decoration: none;
                }

                .card-title a:hover {
                    text-decoration: underline;
                }
            </style>

            <div style="background-color: #f0f0f0; width: 100%; padding: 20px 0;">
                <div class="container">
                    <h2 style="color: #66BC46; margin-top: 20px; text-align: left; margin-bottom: 30px">Top ngành nghề nổi bật</h2>
                    <div class="row justify-content-center">
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/laptrinh.png" alt="ITphanmem">
                            <h5>IT phần mềm</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/kdbh.jpg" alt="Kinhdoanh/Banhang">
                            <h5>Kinh doanh / Bán hàng</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/hcvp.png" alt="Hanhchinh/Vanphong">
                            <h5>Hành chính / Văn phòng</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/gddt.jpg" alt="Giaoduc/Daotao">
                            <h5>Giáo dục / Đào tạo</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/Call-Service-Support-PNG-Clipart.png" alt="Viettel">
                            <h5>Tư vấn</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/mkt.jpg" alt="VNPT">
                            <h5>Makerting / Truyền thông</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/vt.jpg" alt="Amazon">
                            <h5>Vận tải / Kho vận</h5>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 text-center mb-4">
                            <img class="lg" src="images/ktkt.png!f305cw" alt="MoA">
                            <h5>Kế toán / Kiểm toán</h5>
                        </div>
                    </div>
                </div>
            </div>

            <div class="inline-container">
                <img src="images/ok.png" alt="alt" height="700px" style="float: left; margin-right: 20px;">
                <div style="float: left;">
                    <h4 style="padding-right: 30px">"Bằng cách ghi lại ước mơ và mục tiêu trên giấy, bạn đã bắt đầu hành trình trở thành phiên bản tốt nhất của chính mình. Hãy nắm giữ tương lai trong bàn tay của bạn."</h3>
                        <p style="padding-left: 500px"> --- Mark Victor Hansen ---</p>

                        <h1 style="color: #66BC46; padding-top: 50px">Hãy để chúng tôi giúp bạn</h1>
                        <h4>bằng cách <span class="dangerous">tải ứng dụng ngay</span>:</h4>
                        <<img src="images/qr.png" alt="alt" height="200px" style="padding-left: 100px"/>
                </div>
            </div>
            <style>
                .inline-container {
                    display: flex;
                    align-items: center; /* Căn giữa theo chiều dọc */
                    margin-bottom: 20px; /* Khoảng cách dưới */
                }

                .dangerous {
                    color: red;
                    animation: blink-animation 1s infinite; /* Tạo hiệu ứng nhấp nháy liên tục */
                }

                @keyframes blink-animation {
                    0% {
                        opacity: 1;
                    }
                    50% {
                        opacity: 0;
                    }
                    100% {
                        opacity: 1;
                    }
                }

            </style>

            <footer class="site-footer">
                <a href="#top" class="smoothscroll scroll-top">
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
                                <a href="#"><span class="icon-facebook"></span></a>
                                <a href="#"><span class="icon-twitter"></span></a>
                                <a href="#"><span class="icon-instagram"></span></a>
                                <a href="#"><span class="icon-linkedin"></span></a>
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

        <script src="js/bootstrap-select.min.js"></script>

        <script src="js/custom.js"></script>
        <script>
                            document.addEventListener("DOMContentLoaded", function () {
                                const text = 'Vì một <span class="text-highlight">tương lai</span> không ai phải <span class="text-warning">thất nghiệp</span>!';
                                const typingContainer = document.querySelector('.typing-container p');
                                let index = 0;
                                let isAdding = true;
                                let delay = 100;

                                function type() {
                                    typingContainer.innerHTML = text.slice(0, index);

                                    if (isAdding) {
                                        if (index > text.length) {
                                            isAdding = false;
                                            delay = 2000; // Tạm dừng ở cuối
                                        } else {
                                            index++;
                                            delay = 70; // Tốc độ gõ
                                        }
                                    } else {
                                        if (index === 0) {
                                            isAdding = true;
                                            delay = 70; // Tốc độ gõ
                                        } else {
                                            index--;
                                            delay = 30; // Tốc độ xóa
                                        }
                                    }

                                    setTimeout(type, delay);
                                }

                                type();
                            });
        </script>

        <script>
            function scrollToSearchForm() {
                const searchForm = document.getElementById('searchForm');
                searchForm.scrollIntoView({behavior: 'smooth'});
            }
        </script>
    </body>
</html>

