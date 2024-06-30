<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Comparator"%>
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
                cursor: pointer; /* Add cursor pointer for sorting */
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

            td.registration-date {
                padding-left: 10px; /* Để cách xa ngày tháng với giờ */
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
                <a href="mainAdmin.jsp"><img src="images/JobLink.png" alt="JobLink" class="navbar-logo" style="height: 50px; width: auto;"></a>
                <a href="#" class="nav-link">Danh sách đăng ký nhận tư vấn</a>
                <a href="getinfouser" class="nav-link">Quản lý tài khoản</a>
                <a href="LockUserServlet" class="nav-link">Danh sách tài khoản bị khóa</a>
                <a href="Statistics" class="nav-link">Thống kê</a>
            </div>

            <div class="dropdown d-none d-lg-inline-block ml-2">
                <a class="btn custom-btn -btn" href="LoginServlet" style="border-width: 1px; border-style: solid; padding: 8px 16px; font-size: 14px; font-weight: bold; background-color: #2B332C; border-color: #2B332C; color: white; transition: background-color 0.3s, color 0.3s;">
                    Đăng xuất
                </a>
            </div>
        </nav>

        <div class="abc">
            <div class="table-container">
                <h2>Danh sách đăng ký nhận tư vấn</h2>
                <table>
                    <thead>
                        <tr>
                            <th onclick="sortTable('registrationDate')">Họ và tên</th>
                            <th>Email</th>
                            <th>Số điện thoại</th>
                            <th>Tỉnh/Thành phố</th>
                            <th>Nhu cầu tư vấn</th>
                            <th onclick="sortTable('registrationDate')" data-column="registrationDate">Ngày đăng ký</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%
                            // Lấy danh sách đăng ký từ attribute
                            List<Registration> registrations = (List<Registration>) request.getAttribute("registrations");

                            // Kiểm tra nếu có yêu cầu sắp xếp từ request parameter
                            String sortParam = request.getParameter("sort");
                            if (sortParam != null && !sortParam.isEmpty()) {
                                // Sắp xếp theo yêu cầu
                                if (sortParam.equals("newest")) {
                                    // Sắp xếp từ mới nhất đến cũ nhất
                                    registrations.sort(( r1,           r2) -> r2.getRegistrationDate().compareTo(r1.getRegistrationDate()));
                                } else if (sortParam.equals("oldest")) {
                                    // Sắp xếp từ cũ nhất đến mới nhất
                                    registrations.sort(Comparator.comparing(Registration::getRegistrationDate));
                                }
                            }

                            // Format ngày tháng để hiển thị
                            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
                            // Hiển thị danh sách đã sắp xếp
                            if (registrations != null && !registrations.isEmpty()) {
                                for (Registration reg : registrations) {
                        %>
                        <tr>
                            <td><%= reg.getName()%></td>
                            <td><%= reg.getEmail()%></td>
                            <td>
                                <%= reg.getPhone()%>
                                <a href="https://zalo.me/<%= reg.getPhone()%>" target="_blank" class="btn ">
                                    <img src="images/zalo.jpg" width="auto" height="25px" alt="Tìm trên Zalo" style="border-radius: 5px"/>
                                </a>
                            </td>
                            <td><%= reg.getLocation()%></td>
                            <td><%= reg.getConsultationNeed()%></td>
                            <td class="registration-date" data-column="registrationDate"><%= dateFormat.format(reg.getRegistrationDate())%></td>

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

        <script>
                                // Function to toggle sorting order and update URL
                                function sortTable(columnName) {
                                    const urlParams = new URLSearchParams(window.location.search);
                                    const currentSort = urlParams.get('sort');
                                    let newSort = 'newest'; // default to newest if no current sort or current sort is oldest

                                    if (currentSort === 'newest') {
                                        newSort = 'oldest';
                                    }

                                    const newUrlParams = new URLSearchParams(window.location.search);
                                    newUrlParams.set('sort', newSort);

                                    const newUrl = `${window.location.pathname}?${newUrlParams.toString()}`;
                                            window.history.replaceState({path: newUrl}, '', newUrl);

                                            sortAndDisplayTable(columnName, newSort);
                                        }

                                        // Function to sort and display table without page reload
                                        function sortAndDisplayTable(columnName, sortType) {
                                            const rows = [...document.querySelectorAll('tbody tr')];

                                            // Sort the rows based on column name and sort type
                                            rows.sort((row1, row2) => {
                                                const cellValue1 = row1.querySelector(`td[data-column="${columnName}"]`).textContent.trim();
                                                const cellValue2 = row2.querySelector(`td[data-column="${columnName}"]`).textContent.trim();

                                                if (columnName === 'registrationDate') {
                                                    const date1 = new Date(cellValue1);
                                                    const date2 = new Date(cellValue2);
                                                    return sortType === 'newest' ? date2 - date1 : date1 - date2;
                                                } else {
                                                    return sortType === 'newest' ? cellValue2.localeCompare(cellValue1) : cellValue1.localeCompare(cellValue2);
                                                }
                                            });

                                            // Re-append rows to tbody in sorted order
                                            const tbody = document.querySelector('tbody');
                                            tbody.innerHTML = '';
                                            rows.forEach(row => tbody.appendChild(row));
                                        }

                                        function searchOnZalo(phoneNumber) {
                                            const zaloSearchURL = `https://zalo.me/${phoneNumber}`;
                                            window.open(zaloSearchURL, '_blank');
                                        }

                                        // Ensure that the sortTable function is called correctly
                                        document.addEventListener('DOMContentLoaded', function () {
                                            const headers = document.querySelectorAll('th');
                                            headers.forEach(header => {
                                                header.addEventListener('click', function () {
                                                    if (header.textContent.trim() === 'Ngày đăng ký') {
                                                        sortTable('registrationDate');
                                                    }
                                                });
                                            });
                                        });
        </script>

    </body>
</html>
