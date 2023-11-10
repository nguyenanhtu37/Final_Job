<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>JobC &mdash; Manage User Accounts</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


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
    <body>
        <!doctype html>
    <html lang="en">
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
                <header class="site-navbar mt-3">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="site-logo col-6"><a href="mainAdmin.jsp">JobC</a></div>

                            <nav class="mx-auto site-navigation">
                                <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                                    <li><a href="mainAdmin.jsp" class="nav-link">Home</a></li>
                                    <li><a href="getinfouser" class="nav-link">Manage Account</a></li>
                                </ul>
                            </nav>

                        </div>
                    </div>
                </header>

                <!-- HOME -->
                <section class="section-hero home-section overlay inner-page bg-image"
                         style="background-image: url('images/hero_1.jpg');" id="home-section">

                    <div class="container">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-md-12">
                                <div class="mb-5 text-center">
                                    <h1 class="text-white font-weight-bold">Job Search Platform JobC - Job Connection</h1>
                                    <p>The easiest way to connect between Employers and Job Seekers!</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <a href="#next" class="scroll-button smoothscroll">
                        <span class=" icon-keyboard_arrow_down"></span>
                    </a>
                </section>
                <%-- Lấy danh sách người dùng từ request --%>
                <% ArrayList<User> res = (ArrayList<User>) request.getSession().getAttribute("res");%>

                <div id="next">
                    <%-- Kiểm tra xem danh sách người dùng có tồn tại không --%>
                    <c:if test="${res != null && not empty res}">
                        <section class="site-section col-md-12" >

                            <div class="container col-md-12">
                                <!--<button class="btn-primary" style="float: right;">Go to locked user accounts</button>-->
                                <div class="row mb-5 justify-content-center">
                                    <div class="col-md-7 text-center">
                                        <h2 class="section-title mb-2">Manage User Accounts</h2>

                                    </div>

                                </div>
                                <a href="LockUserServlet">
                                    <!--<button  class="btn-primary" style="float: right; border-radius: 5px"></button>-->
                                </a>
                                <!-- Use a table to display user data -->
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Account</th>
                                            <th>
                                                Phone Number
                                            </th>
                                            <th>
                                                Gender
                                            </th>
                                            <th>
                                                The number of reports
                                            </th>
                                            <th>Actions</th> <!-- This column is for Lock and Delete actions -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Iterate over user data and display each user in a row -->
                                        <c:forEach items="${res}" var="u">
                                            <tr>
                                                <td style="color: black">${u.getUserID()}</td>
                                                <td><div>

                                                        <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
                                                            <h5 style="color: black">${u.getUserName()}</h5>
                                                            <strong>${u.getUserAccount()}</strong>
                                                        </div>
                                                    </div></td>
                                                <td>${u.getPhone()}</td>
                                                <td>${u.getGender()}</td>
                                                <!--<td>${u.getIsLocked()}</td>-->
                                                <td style="color: red; font-weight: bold">${u.numberOfReports}</td>


                                                <td>
                                                    <button type="submit" class="badge badge-primary unlock-btn" data-userid="${u.getUserID()}">Unlock</button>
                                                    <!--<button type="submit" class="badge badge-danger delete-btn" data-userid="${u.getUserID()}">Delete</button>-->
                                                    <!--<button  class="badge badge-danger" >-->
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </section>
                    </c:if>

                    <!--Nếu danh sách rỗng hoặc null, hiển thị thông báo--> 
                    <c:if test="${empty res}">
                        <br><br><br><br><br><br><br><br><br>
                        <h1 class="d-flex justify-content-center">There are no locked user here!</h1>>
                        <br><br><br><br><br><br><br><br><br><br>
                    </c:if>
                </div>
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
                                            $(document).ready(function () {
                                                $(".unlock-btn").click(function (e) {
                                                    e.preventDefault();
                                                    var userID = $(this).data("userid");

                                                    if (confirm("Are you sure to unlock this account?")) {
                                                        $.ajax({
                                                            url: "UnlockUserServlet",
                                                            method: "POST",
                                                            data: {UserID: userID},
                                                            success: function (response) {
                                                                console.log(response);
                                                                location.reload();
                                                            },
                                                            error: function (error) {
                                                                console.log("Unlock account failed: " + error);
                                                            }
                                                        });
                                                    }
                                                });
                                            });

                </script>

        </body>
    </html>
