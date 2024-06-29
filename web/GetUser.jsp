<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>JobLink &mdash; Accounts Management</title>
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
        <link rel="shortcut icon" href="images/logo.png">

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

            <!-- NAVBAR -->
            <nav class="navbar" style="display: flex; align-items: center; height: 70px; background-color: white; padding: 0 20px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
                <div class="left-content" style="display: flex; align-items: flex-end">
                    <a href="./index.jsp"><img src="images/JobLink.png" alt="JobLink" class="navbar-logo" style="height: 50px; width: auto;"></a>
                    <a href="#" class="nav-link" style="margin-left: 100px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Việc làm</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Hồ sơ & CV</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Công cụ</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Cẩm nang nghề nghiệp</a>
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


            <%-- Kiểm tra xem danh sách người dùng có tồn tại không --%>
            <c:if test="${res != null && not empty res}">
                <section class="site-section col-md-12" id="next">

                    <div class="container col-md-12">
                        <!--<button class="btn-primary" style="float: right;">Go to locked user accounts</button>-->
                        <div class="row mb-5 justify-content-center">
                            <div class="col-md-7 text-center">
                                <h2 class="section-title mb-2">Manage User Accounts</h2>

                            </div>

                        </div>
                        <a href="LockUserServlet">
                            <button  class="btn-primary" style="float: right; border-radius: 5px">Go to locked user accounts</button>
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
                                            <button type="submit" class="badge badge-primary lock-btn" data-userid="${u.getUserID()}">Lock</button>
                                            <button type="submit" class="badge badge-danger delete-btn" data-userid="${u.getUserID()}">Delete</button>
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
                <p>User not found</p>
            </c:if>

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
                    var userID = $(this).data("userid");

                    if (confirm("Are you sure to delete this account?")) {
                        $.ajax({
                            url: "DeleteUserServlet",
                            method: "POST",
                            data: {
                                UserID: userID
                            }
                            ,
                            success: function (response) {
                                // Xử lý phản hồi (ví dụ: hiển thị một thông báo)
                                console.log(response);
                                location.reload();
                                // Làm mới trang hoặc cập nhật giao diện người dùng theo cần thiết
                            }
                            ,
                            error: function (error) {
                                console.log("Lỗi khi xóa người dùng: " + error);
                            }
                        }
                        );
                    }
                }
                );

            </script>

            <script>
                $(document).ready(function () {
                    $(".lock-btn").click(function (e) {
                        e.preventDefault();
                        var userID = $(this).data("userid");

                        if (confirm("Are you sure to lock this account?")) {
                            $.ajax({
                                url: "LockUserServlet",
                                method: "POST",
                                data: {
                                    UserID: userID
                                }
                                ,
                                success: function (response) {
                                    console.log(response);
                                    location.reload();
                                }
                                ,
                                error: function (error) {
                                    console.log("Lock account failed: " + error);
                                }
                            }
                            );
                        }
                    }
                    );
                }
                );

            </script>
        </body>
    </html>
