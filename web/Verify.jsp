<%-- 
    Document   : Verify
    Created on : Oct 3, 2023, 11:34:22 PM
    Author     : ASUS
--%>

<%@page import="model.Enterprise"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



</div>
<!doctype html>
<html lang="en">

    <head>
        <title>JobLink &mdash; Xác thực tài khoản</title>
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
                    <a href="index.jsp"><img src="images/JobLink.png" alt="JobLink" class="navbar-logo" style="height: 50px; width: auto;"></a>
                    <a href="index.jsp" class="nav-link" style="margin-left: 100px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Việc làm</a>
                    <a href="LoginServlet" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Hồ sơ & CV</a>
                    <a href="index.jsp" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Công cụ</a>
                    <a href="index.jsp" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Cẩm nang nghề nghiệp</a>
                </div>

                <div class="right-cta-menu text-right d-flex align-items-center ml-auto" style="margin-left: auto;">
                    <div class="d-flex align-items-center">
                        <!--                        <div class="dropdown d-none d-lg-inline-block">
                                                    <a class="btn custom-btn" href="LoginServlet" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: white; color: #66BC46; border-color: #66BC46; transition: background-color 0.3s, color 0.3s;">
                                                        Đăng nhập
                                                    </a>
                                                </div>
                                                <div class="dropdown d-none d-lg-inline-block ml-2">
                                                    <a class="btn custom-btn green-btn" href="SignUpServlet" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: #66BC46; border-color: #66BC46; color: white; transition: background-color 0.3s, color 0.3s;">
                                                        Đăng ký
                                                    </a>
                                                </div>-->
                        <div class="dropdown d-none d-lg-inline-block ml-2">
                            <a class="btn custom-btn dark-btn" href="LogOutServlet" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: #2B332C; border-color: #2B332C; color: white; transition: background-color 0.3s, color 0.3s;">
                                Đăng xuất
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

        </div>
    </div>
</header>

<!-- HOME -->
<section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');"
         id="home-section">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1 class="text-white font-weight-bold">Verify account</h1>
                <div class="custom-breadcrumbs">
                    <a href="index.jsp">Home</a> <span class="mx-2 slash">/</span>
                    <span class="text-white"><strong>Verify account</strong></span>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="site-section">
    <div class="container">
        <div class="row">
            <div class="offset-3 col-lg-6 mb-5">


                <form action="VerifyServlet" method="post" class="p-4 border rounded">
                    <div class="row justify-content-center">
                        <img src="./images/logo_mail.svg" alt="" class="">

                    </div>
                    <h3 class="text-center">Please check your email</h3>
                    <div class="form-group mb-3">
                        <label for="code-verify" class="label">Enter activation code:</label>
                        <input id="code-verify" name="input-code" type="text" class="form-control"
                               placeholder="Activation code"></a>
                        <div class="message-response h5 mt-3 " style="color: red">
                            ${inputError}
                        </div>
                    </div>
                    <div class="row justify-content-center ">
                        <button type="submit" class="btn px-4 btn-primary text-white">Verify</a>
                    </div>
                </form>


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
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                        template is made
                        with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a
                            href="https://colorlib.com" target="_blank">Colorlib</a>
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
<script src="js/quill.min.js"></script>


<script src="js/bootstrap-select.min.js"></script>

<script src="js/custom.js"></script>
<script>
                            const signUpButton = document.getElementById('signUp');
                            const signInButton = document.getElementById('signIn');
                            const container = document.getElementById('container');

                            signInButton.addEventListener('click', () => {
                                container.classList.add("right-panel-active");
                            });
                            signInButton.addEventListener('click', () => {
                                container.classList.remove("right-panel-active");
                            })
</script>


</body>

</html>