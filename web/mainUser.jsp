<%-- 
    Document   : mainEnter
    Created on : Oct 7, 2023, 1:18:39 PM
    Author     : ASUS
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <title>JobLink &dash; Homepage User</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="Free-Template.co" />
        <link rel="shortcut icon" href="ftco-32x32.png">
        <link rel="shortcut icon" href="images/logo.png">

        <link rel="stylesheet" href="css/custom-bs.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.min.css">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="fonts/line-icons/style.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
              integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/brands.min.css"
              integrity="sha512-G/T7HQJXSeNV7mKMXeJKlYNJ0jrs8RsWzYG7rVACye+qrcUhEAYKYzaa+VFy6eFzM2+/JT1Q+eqBbZFSHmJQew=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/fontawesome.min.css"
              integrity="sha512-giQeaPns4lQTBMRpOOHsYnGw1tGVzbAIHUyHRgn7+6FmiEgGGjaG0T2LZJmAPMzRCl+Cug0ItQ2xDZpTmEc+CQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/regular.min.css"
              integrity="sha512-k2UAKyvfA7Xd/6FrOv5SG4Qr9h4p2oaeshXF99WO3zIpCsgTJ3YZELDK0gHdlJE5ls+Mbd5HL50b458z3meB/Q=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/solid.min.css"
              integrity="sha512-6mc0R607di/biCutMUtU9K7NtNewiGQzrvWX4bWTeqmljZdJrwYvKJtnhgR+Ryvj+NRJ8+NnnCM/biGqMe/iRA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/svg-with-js.min.css"
              integrity="sha512-iyaXtrpKz7FIRsICgrvVtq1vkSJT/cfLeXA0sHSQaAs0y3LdqXWlQCXTxM246mTQ/M2qpyVX3A0aRfmTt0LOCQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/v4-font-face.min.css"
              integrity="sha512-ueEJBIkl0DBM2fA8eS/o12U3l+ZUFn32IUY4jIaTZnNtKR4ktQw3cE/tx/tFIYJuBm4EVT7WUMqIXP1TUN0boA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/v4-shims.min.css"
              integrity="sha512-SkKgNHAdwXn0lw1CzCwHFpNidxo0GT4AEueTmvgUoBRnxwfFDmWUsRfS6ZjxhXP8HystwoBp8fYDfuWD6azryQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/v5-font-face.min.css"
              integrity="sha512-5V4m5oBRPLC2aZloM2/C/Simvm/jRfHXcqxTC6iW3FS93jfEWEFmJ7dWqAHME6CGlAG4StQ3f7kN41EUjEFJUQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />


        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/style.css">

        <style>
            form .search__bar{
                justify-content: space-around;
                width: 1000px;
                height: 80px;
                background-color: #fff;
                display: flex;
                padding-top: 14px;
                border-radius: 50px;
            }

            .job__content{
                display: flex;
                margin: 40px 0;
                width: 100%;
                justify-content: center;
            }

            .content__item{
                display: flex;
                align-items: center;
                margin-right: 20px;
            }

            .content__item p{
                margin:0 10px 0 0;
            }

            .content__item span{
                color: green;
                padding-top: 4px;
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
        </style>
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
                    <a href="BackHomePageUser"><img src="images/JobLink.png" alt="JobLink" class="navbar-logo" style="height: 50px; width: auto;"></a>
                    <a href="SearchUser" class="nav-link" style="margin-left: 100px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Việc làm</a>
                    <a href="CreateCV.jsp" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Hồ sơ & CV</a>
                    <a href="video_call_2.html" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Phỏng vấn online</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Công cụ</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Cẩm nang nghề nghiệp</a>
                </div>

                <!--                <div class="right-cta-menu text-right d-flex align-items-center ml-auto" style="margin-left: auto;">
                                    <div class="d-flex align-items-center">
                                        <div class="dropdown d-none d-lg-inline-block ml-2">
                                            <a class="btn custom-btn dark-btn" href="LogOutServlet" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: #2B332C; border-color: #2B332C; color: white; transition: background-color 0.3s, color 0.3s;">
                                                Đăng xuất
                                            </a>
                                        </div>
                                    </div>
                                    <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3" style="margin-left: 1rem;">
                                        <span class="icon-menu h3 m-0 p-0 mt-2"></span>
                                    </a>
                                </div>-->
                <!--<div class="right-cta-menu text-right d-flex aligin-items-center col-6">-->
                <!--<div class="right-cta-menu text-right d-flex aligin-items-center col-6">-->
                <div class="ml-auto" style="margin-right: 50px">
                    <div class="dropdown d-none d-lg-inline-block">

                        <div class="mx-2" style="color: black; font-size: 20px; " type="button" id="signUp"
                             data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa-regular fa-user"></i>
                            <span class="icon-text mx-2 text-capitalize">User</span>
                        </div>
                        <div class="dropdown-menu mt-2" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="ViewProfileUser">Profile</a>
                            <a class="dropdown-item" href="ViewCVSentUser?id=${User.getUserId()}">View Cv's sent</a>                                         
                            <a class="dropdown-item" href="LogOutServlet">Log out</a>

                        </div>
                    </div>
                </div>
                <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                        class="icon-menu h3 m-0 p-0 mt-2"></span></a>
                <!--</div>-->
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
            <section class="home-section section-hero overlay bg-image" style="background-image: url('images/hero_1.jpg');"
                     id="home-section">

                <section class="home-section section-hero overlay bg-image" style="background-image: url('images/hero_1.jpg'); "
                         id="home-section">

                    <div class="container scroll" style="overflow-y:scroll;">
                        <div class="row justify-content-center">
                            <div class="h-25 col-md-12 align-items-end">

                            </div>
                            <div class="col-md-12 align-items-end">
                                <div class="mb-5 text-center">
                                    <h1 class="text-white font-weight-bold">The Easiest Way To Get Your Dream Job Find jobs quickly 24 hours, latest jobs nationwide.</h1>
                                    <p>Access 40,000+ job recruitment postings every day from thousands of reputable businesses in Vietnam</p>
                                </div>
                            </div>
                            <form action="SearchEnter" method="POST" class="search-jobs-form">
                                <div class="search__bar">
                                    <div class="row mb-5">
                                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                            <input name ="search-input" type="text" class="form-control form-control-lg" placeholder="Job title, Company...">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                            <input name ="location-input" type="text" class="form-control form-control-lg" placeholder="Location">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                            <select name="type-input" class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true"
                                                    title="Select Job Type">
                                                <option value="parttime">Part Time</option>
                                                <option value="fulltime" >Full Time</option>
                                                <option value="remote" >Remote</option>
                                            </select>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                            <button type="submit" class="btn btn-primary btn-lg btn-block text-white btn-search"><span
                                                    class="icon-search icon mr-2"></span>Search Job</button>
                                        </div>
                                    </div>
                                </div>

                                <div class="job__content">
                                    <div class="content__item">
                                        <p>Vị trí chờ bạn khám phá</p>
                                        <span>46.640</span>
                                    </div>

                                    <div class="content__item">
                                        <p>Việc làm mới nhất</p>
                                        <span>4.400</span>
                                    </div>

                                    <div class="content__item">
                                        <p>Cập nhật lúc:</p>
                                        <span>21:21 11/07/2024</span>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12 popular-keywords">
                                        <h3>Trending Keywords:</h3>
                                        <ul class="keywords list-unstyled m-0 p-0">
                                            <li><a href="#" class="">UI Designer</a></li>
                                            <li><a href="#" class="">Python</a></li>
                                            <li><a href="#" class="">Developer</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                            <c:forEach items="${jobss}" var="job"> 
                                <div class="col-md-12 align-items-start">
                                    <div class="mb-5 border rounded" style="background-color: whitesmoke; color: black;">
                                        <div class="p-3 border rounded">
                                            <form action="PostJobServlet" class="px-3 px-md-5 py-1 py-md-3 rounded" method="post">
                                                <a href="ViewJobDetaiEnter?id=${job.jobId}" class=" possion text-black mb-5 pb-2 text-capitalize" style="font-size: 50px;font-weight: bold;">${job.title}</a>
                                                <h3 class="text-black mb-2 border-bottom pb-2 text-capitalize">${job.enterName}</h3>

                                                <div class="p-1">
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="row form-group">
                                                                <label for="name" class="col-4 col-form-label text-capitalize">location</label>
                                                                <div class="col-sm-8">
                                                                    ${job.location}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                    <a href="#next" class="scroll-button smoothscroll">
                        <span class=" icon-keyboard_arrow_down"></span>
                    </a>


                </section>





                <section class="site-section py-4">
                    <div class="container">

                        <div class="row align-items-center">
                            <div class="col-12 text-center mt-4 mb-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-7">
                                        <h2 class="section-title mb-2">Company We've Helped</h2>
                                        <p class="lead">Porro error reiciendis commodi beatae omnis similique voluptate rerum ipsam fugit
                                            mollitia ipsum facilis expedita tempora suscipit iste</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col-6 col-lg-3 col-md-6 text-center">
                                <img src="images/logo_mailchimp.svg" alt="Image" class="img-fluid logo-1">
                            </div>
                            <div class="col-6 col-lg-3 col-md-6 text-center">
                                <img src="images/logo_paypal.svg" alt="Image" class="img-fluid logo-2">
                            </div>
                            <div class="col-6 col-lg-3 col-md-6 text-center">
                                <img src="images/logo_stripe.svg" alt="Image" class="img-fluid logo-3">
                            </div>
                            <div class="col-6 col-lg-3 col-md-6 text-center">
                                <img src="images/logo_visa.svg" alt="Image" class="img-fluid logo-4">
                            </div>

                            <div class="col-6 col-lg-3 col-md-6 text-center">
                                <img src="images/logo_apple.svg" alt="Image" class="img-fluid logo-5">
                            </div>
                            <div class="col-6 col-lg-3 col-md-6 text-center">
                                <img src="images/logo_tinder.svg" alt="Image" class="img-fluid logo-6">
                            </div>
                            <div class="col-6 col-lg-3 col-md-6 text-center">
                                <img src="images/logo_sony.svg" alt="Image" class="img-fluid logo-7">
                            </div>
                            <div class="col-6 col-lg-3 col-md-6 text-center">
                                <img src="images/logo_airbnb.svg" alt="Image" class="img-fluid logo-8">
                            </div>
                        </div>
                    </div>
                </section>


                <section class="bg-light pt-5 testimony-full">

                    <div class="owl-carousel single-carousel">


                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 align-self-center text-center text-lg-left">
                                    <blockquote>
                                        <p>&ldquo;Soluta quasi cum delectus eum facilis recusandae nesciunt molestias accusantium libero dolores
                                            repellat id in dolorem laborum ad modi qui at quas dolorum voluptatem voluptatum repudiandae.&rdquo;
                                        </p>
                                        <p><cite> &mdash; Corey Woods, @Dribbble</cite></p>
                                    </blockquote>
                                </div>
                                <div class="col-lg-6 align-self-end text-center text-lg-right">
                                    <img src="images/person_transparent_2.png" alt="Image" class="img-fluid mb-0">
                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 align-self-center text-center text-lg-left">
                                    <blockquote>
                                        <p>&ldquo;Soluta quasi cum delectus eum facilis recusandae nesciunt molestias accusantium libero dolores
                                            repellat id in dolorem laborum ad modi qui at quas dolorum voluptatem voluptatum repudiandae.&rdquo;
                                        </p>
                                        <p><cite> &mdash; Chris Peters, @Google</cite></p>
                                    </blockquote>
                                </div>
                                <div class="col-lg-6 align-self-end text-center text-lg-right">
                                    <img src="https://cdn-new.topcv.vn/unsafe/https://static.topcv.vn/img/Tek-Expert-bannerT1.jpg" alt="Image" class="img-fluid mb-0">
                                </div>
                            </div>
                        </div>

                    </div>

                </section>

                <section class="pt-5 bg-image overlay-primary fixed overlay" style="background-image: url('images/hero_1.jpg');">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 align-self-center text-center text-md-left mb-5 mb-md-0">
                                <h2 class="text-white">Get The Mobile Apps</h2>
                                <p class="mb-5 lead text-white">Lorem ipsum dolor sit amet consectetur adipisicing elit tempora adipisci
                                    impedit.</p>
                                <p class="mb-0">
                                    <a href="#" class="btn btn-dark btn-md px-4 border-width-2"><span class="icon-apple mr-3"></span>App
                                        Store</a>
                                    <a href="#" class="btn btn-dark btn-md px-4 border-width-2"><span class="icon-android mr-3"></span>Play
                                        Store</a>
                                </p>
                            </div>
                            <div class="col-md-6 ml-auto align-self-end">
                                <img src="images/apps.png" alt="Free Website Template by Free-Template.co" class="img-fluid">
                            </div>
                        </div>
                    </div>
                </section>

                <footer class="site-footer">

                    <a href="#top" class="smoothscroll scroll-top">
                        <span class="icon-keyboard_arrow_up"></span>
                    </a>

                    <div class="container">
                        <div class="row mb-5">
                            <div class="col-6 col-md-3 mb-4 mb-md-0">
                                <h3>Search Trending</h3>
                                <ul class="list-unstyled">
                                    <li><a href="#">Web Design</a></li>
                                    <li><a href="#">Graphic Design</a></li>
                                    <li><a href="#">Web Developers</a></li>
                                    <li><a href="#">Python</a></li>
                                    <li><a href="#">HTML5</a></li>
                                    <li><a href="#">CSS3</a></li>
                                </ul>
                            </div>
                            <div class="col-6 col-md-3 mb-4 mb-md-0">
                                <h3>Company</h3>
                                <ul class="list-unstyled">
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Career</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Resources</a></li>
                                </ul>
                            </div>
                            <div class="col-6 col-md-3 mb-4 mb-md-0">
                                <h3>Support</h3>
                                <ul class="list-unstyled">
                                    <li><a href="#">Support</a></li>
                                    <li><a href="#">Privacy</a></li>
                                    <li><a href="#">Terms of Service</a></li>
                                </ul>
                            </div>
                            <div class="col-6 col-md-3 mb-4 mb-md-0">
                                <h3>Contact Us</h3>
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
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                        Copyright &copy;
                                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made
                                        with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                                                             target="_blank">Colorlib</a>
                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    </small></p>
                            </div>
                        </div>
                    </div>
                </footer>
                <a href="https://m.me/295506026989207" target="_blank" class="messenger-button">
                    <!--<button>Bạn cần hỗ trợ?</button>-->
                    <img src="images/messenger.png" alt="Messenger" class="messenger-icon">
                </a>
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


    </body>

</html>