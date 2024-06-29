<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Registration" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <title>JobLink &mdash; Danh sách đăng ký nhận tư vấn</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,400italic,300italic,300,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
        <script defer src="https://use.fontawesome.com/releases/v5.1.0/js/all.js" integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>   
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
            .table-container {
                width: 100%;
                margin: 20px 0;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                border-radius: 8px;
                overflow: hidden;
                background-color: white;
                align-items: center;
            }

            h2 {
                color: #333;
                margin-top: 20px;
                text-align: center;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #66BC46;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            tr:hover {
                background-color: #ddd;
            }

            .no-registrations {
                text-align: center;
                color: #999;
                padding: 20px;
            }

            .navbar .nav-link {
                margin-left: 50px;
                text-decoration: none;
                color: #333;
                font-weight: bold;
                font-size: 16px;
                padding: 0 10px;
                transition: color 0.3s, background-color 0.3s, transform 0.3s;
            }

            .navbar .nav-link:hover {
                transform: scale(1.1); /* Zoom in 110% khi hover */
                color: #66BC46;
            }

            .abc {
                align-items: center;
                padding: 50px;
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
        <nav class="navbar" style="display: flex; align-items: center; height: 70px; background-color: white; padding: 0 20px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
            <div class="left-content" style="display: flex; align-items: flex-end">
                <a href="./index.jsp"><img src="images/JobLink.png" alt="JobLink" class="navbar-logo" style="height: 50px; width: auto;"></a>
                <a href="#" class="nav-link">Việc làm</a>
                <a href="#" class="nav-link">Hồ sơ & CV</a>
                <a href="#" class="nav-link">Công cụ</a>
                <a href="#" class="nav-link">Cẩm nang nghề nghiệp</a>
            </div>
        </nav>

        <div class="abc">
            <div class="table-container">
                <h2>Danh sách đăng ký tư vấn</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Tên</th>
                            <th>Email</th>
                            <th>Số điện thoại</th>
                            <th>Tỉnh/Thành phố</th>
                            <th>Nhu cầu tư vấn</th>
                            <th>Ngày đăng ký</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Registration> registrations = (List<Registration>) request.getAttribute("registrations");
                            if (registrations != null && !registrations.isEmpty()) {
                                for (Registration reg : registrations) {
                        %>
                        <tr>
                            <td><%= reg.getName()%></td>
                            <td><%= reg.getEmail()%></td>
                            <td><%= reg.getPhone()%></td>
                            <td><%= reg.getLocation()%></td>
                            <td><%= reg.getConsultationNeed()%></td>
                            <td><%= reg.getRegistrationDate()%></td>
                        </tr>
                        <%
                            }
                        } else {
                        %>
                        <tr>
                            <td colspan="6" class="no-registrations">Không có đăng ký nào.</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
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
