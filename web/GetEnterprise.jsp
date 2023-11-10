<%@page import="java.util.ArrayList"%>
<%@page import="model.Enterprise"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>JobC &mdash; Manage Enterprise Accounts</title>
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
                <% ArrayList<Enterprise> res = (ArrayList<Enterprise>) request.getSession().getAttribute("res");%>


                <%-- Kiểm tra xem danh sách người dùng có tồn tại không --%>
                <c:if test="${res != null && not empty res}">
                    <section class="site-section col-md-12" id="next">

                        <div class="container col-md-12">
                            <div class="row mb-5 justify-content-center">
                                <div class="col-md-7 text-center">
                                    <h2 class="section-title mb-2">Manage Enterprise Accounts</h2>

                                </div>

                            </div>
                            <a href="LockEnterpriseServlet">
                                <button  class="btn-primary" style="float: right; border-radius: 5px">Go to locked Enterprise accounts</button>
                            </a>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Account</th>
                                        <th>
                                            Phone
                                        </th>
                                        <th>
                                            Place
                                        </th>
                                        <th>
                                            The number of reports
                                        </th>
                                        <th>Actions</th> <!-- This column is for Lock and Delete actions -->
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${res}" var="u">
                                        <tr>
                                            <td style="color: black">${u.getEnterpriseID()}</td>
                                            <td><div>

                                                    <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
                                                        <h5 style="color: black">${u.getEnterpriseName()}</h5>
                                                        <strong>${u.getEnterpriseAccount()}</strong>
                                                    </div>
                                                </div></td>
                                            <td>${u.getPhone()}</td>
                                            <td>${u.getPlace()}</td>
                                            <!--<td>${u.getIsLocked()}</td>-->
                                            <td style="color: red; font-weight: bold">${u.numberOfReports}</td>


                                            <td>
                                                <button type="submit" class="badge badge-primary lock-btn" data-enterpriseid="${u.getEnterpriseID()}">Lock</button>
                                                <button type="submit" class="badge badge-danger delete-btn" data-enterpriseid="${u.getEnterpriseID()}">Delete</button>
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
                    <p>Enterprise not found</p>
                </c:if>

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
                                            $(".delete-btn").click(function (e) {
                                                e.preventDefault();
                                                var enterpriseID = $(this).data("enterpriseid"); // Sửa lại tên biến thành enterpriseID

                                                if (confirm("Are you sure to delete this account?")) {
                                                    $.ajax({
                                                        url: "DeleteEnterpriseServlet", // Sửa lại tên Servlet phù hợp
                                                        method: "POST",
                                                        data: {EnterpriseID: enterpriseID}, // Sửa lại tên biến thành EnterpriseID
                                                        success: function (response) {
                                                            // Xử lý phản hồi (ví dụ: hiển thị một thông báo)
                                                            console.log(response);
                                                            location.reload(); // Làm mới trang hoặc cập nhật giao diện người dùng theo cần thiết
                                                        },
                                                        error: function (error) {
                                                            console.log("Lỗi khi xóa doanh nghiệp: " + error);
                                                        }
                                                    });
                                                }
                                            });

                                            $(document).ready(function () {
                                                $(".lock-btn").click(function (e) {
                                                    e.preventDefault();
                                                    var enterpriseID = $(this).data("enterpriseid"); // Sửa lại tên biến thành enterpriseID

                                                    if (confirm("Are you sure to lock this account?")) {
                                                        $.ajax({
                                                            url: "LockEnterpriseServlet", // Sửa lại tên Servlet phù hợp
                                                            method: "POST",
                                                            data: {EnterpriseID: enterpriseID}, // Sửa lại tên biến thành EnterpriseID
                                                            success: function (response) {
                                                                console.log(response);
                                                                location.reload();
                                                            },
                                                            error: function (error) {
                                                                console.log("Lock account failed: " + error);
                                                            }
                                                        });
                                                    }
                                                });
                                            });
                </script>
        </body>
    </html>
