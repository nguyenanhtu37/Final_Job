<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
    <head>
        <title>JobLink &mdash; Tạo CV</title>
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
            .profile-container {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            .profile {
                width: 150px;
                height: 150px;
                object-fit: cover;
                border-radius: 50%;
                margin-bottom: 15px;
            }
            .input-field {
                width: 150px;
                /*background-color: #66BC46;*/
                color: white;
                text-align: center;
                font-size: 20px;
                border: none;
                margin-bottom: 10px;
                font-size: 11px;
            }
            .input-field::placeholder {
                color: white;
            }
        </style>
        <style>
            .icon {
                font-size: 14px; /* Adjust the font size as needed */
                margin-right: 5px; /* Optional: Add spacing between the icon and input */
            }

            .input-field {
                width: 200px;
                background-color: #66BC46;
                font-size: 14px;
                color: white;
                border: none;
                padding: 5px; /* Optional: Add padding for better input field appearance */
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
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Hồ sơ & CV</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Công cụ</a>
                    <a href="#" class="nav-link" style="margin-left: 50px; text-decoration: none; color: #333; font-weight: bold; font-size: 16px; padding: 0px 10px; transition: color 0.3s, background-color 0.3s, transform 0.3s;">Cẩm nang nghề nghiệp</a>
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

            <!-- HOME -->
            <section class="section-hero inner-page overlay bg-image" style="background-image: url('images/bannerCreateCV.jpg')" id="home-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 text-content">
                            <h1 class="text-white font-weight-bold">Tạo dựng <span style="color: red">CV</span>, định hình <span style="color: red">sự nghiệp</span>!</h1>
                            <p style="color: white">CV không chỉ là bản tóm tắt kinh nghiệm mà còn là cách bạn thể hiện giá trị và tiềm năng. Một CV chất lượng là bước khởi đầu quan trọng trên hành trình tìm việc, giúp bạn ghi điểm từ cái nhìn đầu tiên. Đầu tư vào CV là đầu tư vào tương lai sự nghiệp của bạn.</p>
                        </div>
                    </div>
                </div>
            </section>

            <style>
                .text-content {
                    transform: translate(-20px, -50px);
                }

                .menu-container {
                    border: solid 2px #529638;
                    border-radius: 15px;
                    padding: 20px;
                    background-color: #fff;
                    width: 250px;
                }

                .input-field {
                    background-color: #529638;
                    color: white;
                    border: none;
                    border-radius: 5px;
                    padding: 10px;
                    width: 100%;
                    margin-bottom: 15px;
                }

                .menu-button {
                    background-color: #333;
                    color: white;
                    border: none;
                    border-radius: 5px;
                    padding: 10px;
                    width: 100%;
                    margin-bottom: 10px;
                    cursor: pointer;
                }

                .menu-button:hover {
                    background-color: #444;
                }

                .deleteButton:hover {
                    background-color: red;
                }

                .skill-inputs {
                    margin-top: 20px;
                }

                .skill-inputs label {
                    display: block;
                    margin-bottom: 5px;
                }

                .skill-inputs input[type="text"] {
                    width: 100%;
                    padding: 8px;
                    margin-bottom: 10px;
                    border: 1px solid #ccc;
                    border-radius: 5px;
                }

                .skill-inputs input[type="range"] {
                    width: 100%;
                    margin-bottom: 10px;
                }

                .skill-inputs output {
                    display: block;
                    margin-bottom: 15px;
                    text-align: right;
                    font-size: 14px;
                }

                .skill-inputs {
                    margin-bottom: 20px;
                }

                .skillset .item {
                    margin-bottom: 10px;
                }

                .skillset .item h3 {
                    display: inline-block;
                    margin-right: 10px;
                }

                .progress-bar {
                    background-color: #66BC46;
                    height: 20px;
                    width: 0%;
                    transition: width 0.3s;
                }

                .progress {
                    background-color: #e0e0e0;
                    border-radius: 5px;
                    overflow: hidden;
                    height: 20px;
                    width: 100%;
                }

                .remove-button {
                    background-color: red;
                    color: white;
                    border: none;
                    border-radius: 5px;
                    margin-left: 10px;
                    padding: 5px;
                    cursor: pointer;
                }

                .menu-button {
                    background-color: #333;
                    color: white;
                    border: none;
                    border-radius: 5px;
                    margin-top: 10px;
                    padding: 10px;
                    cursor: pointer;
                }

                .slider {
                    width: 100%;
                }

                #level-output {
                    display: inline-block;
                    margin-left: 10px;
                }

                .item .project-title {
                    border: none; /* Ẩn viền của input */
                    outline: none; /* Ẩn đường viền khi focus */
                }

                .item .project-tagline .project-time {
                    display: none; /* Ẩn đi thời gian dự án */
                }

            </style>
            <section class="site-section" style="display: flex; justify-content: center">
                <!--<div class="container">-->
                <div class="menu-container" style="margin-right: 100px; height: fit-content">

                    <div class="listt">
                        <h6 style="margin: 0px">Chọn ảnh đại diện</h6>
                        <input type="file" accept="image/*" id="avatarUpload" class="input-field menu-button" style="margin: 0px">
                    </div>

                    <div class="listt" style="padding-top: 20px">
                        <button type="button" onclick="addEducationField()" class="menu-button" style="margin: 0px">Thêm học vấn</button>
                        <button type="button" onclick="removeEducationField()" class="deleteButton" style="background-color: red; color: white; border: none; border-radius: 5px; width: 100%">Xóa học vấn</button>

                    </div>
                    <!--<button type="button" onclick="addLanguageField()" class="menu-button">Thêm ngôn ngữ</button>-->
                    <!--<button type="button" onclick="removeField('language-fields')" class="deleteButton" style="background-color: red; color: white; border: none; border-radius: 5px">Xóa</button>-->
                    <div class="listt" style="padding-top: 20px">
                        <button type="button" onclick="addLanguageField()" class="menu-button" style="margin: 0px">Thêm ngôn ngữ</button>
                        <button type="button" onclick="removeLanguageField()" class="deleteButton" style="background-color: red; color: white; border: none; border-radius: 5px; width: 100%">Xóa ngôn ngữ</button>
                    </div>

                    <div class="listt" style="padding-top: 20px">
                        <button type="button" onclick="addInterestField()" class="menu-button" style="margin: 0px">Thêm sở thích</button>
                        <button type="button" onclick="removeInterestField()" class="deleteButton" style="background-color: red; color: white; border: none; border-radius: 5px; width: 100%">Xóa sở thích</button>
                    </div>

                    <div class="listt" style="padding-top: 20px">
                        <button type="button" onclick="addExperience()" class="menu-button" style="margin: 0px">Thêm kinh nghiệm</button>
                        <button type="button" onclick="removeExperience('experience1')" style="background-color: red; color: white; border: none; border-radius: 5px; width: 100%">Xóa kinh nghiệm</button>
                    </div>

                    <div class="listt" style="padding-top: 20px"> 
                        <button type="button" onclick="addProject()" class="menu-button" style="margin: 0px">Thêm dự án</button>
                        <button type="button" onclick="removeLastProject()" class="deleteButton" style="background-color: red; color: white; border: none; border-radius: 5px; width: 100%">Xóa dự án</button>
                    </div>

                    <div class="skill-inputs listt" style="padding-top: 20px">
                        <h6 for="skill-name">Kỹ năng:</h6>
                        <input type="text" id="skill-name" name="skill-name" placeholder="Nhập tên kỹ năng">

                        <label for="skill-level" style="margin: 0px">Mức độ (0-100%):</label>
                        <input style="margin: 0px" type="range" id="skill-level" name="skill-level" min="0" max="100" value="50" class="slider" oninput="updateOutput(this.value)">

                        <output for="skill-level" id="level-output">50%</output>

                        <button onclick="addSkill()" class="menu-button" style="margin: 0px">Thêm Kỹ Năng</button>
                        <button type="button" onclick="removeLastSkill()" class="deleteButton" style="background-color: red; color: white; border: none; border-radius: 5px; width: 100%">Xóa kỹ năng</button>
                    </div>

                </div>

                <div>
                    <div class="wrapper">
                        <div class="download-content">

                            <div class="sidebar-wrapper" style="background-color: #66BC46">
                                <div class="profile-container">
                                    <img class="profile" id="avatar" src="assets/images/profile.png" alt="" style="background-color: #66BC46" />
                                    <input type="text" name="name" id="name" class="input-field" placeholder="Họ tên" style="width: 230px; background-color: #529638; font-size: 20px; color: white; font-weight: bold; margin: 0px">
                                    <input type="text" name="ba" id="ba" class="input-field" placeholder="Vị trí ứng tuyển" style="width: 230px; background-color: #529638; color: white; font-size: 18px; margin: 0px">
                                </div>
                                <!--</div>-->

                                <div class="contact-container container-block">
                                    <ul class="list-unstyled contact-list">
                                        <li class="sdt">
                                            <img src="images/phone.png" alt="Phone Icon" style="height: 15px"/>
                                            <input name="sdt" id="sdt" value="" type="text" placeholder="0123 456 789" style="width: 200px; background-color: #66BC46; font-size: 14px; color: white; border: none;">
                                        </li>
                                        <li class="address">
                                            <img src="images/address.png" alt="Address Icon" style="height: 15px"/>
                                            <input name="address" id="address" value="" type="text" placeholder="Địa chỉ của bạn" style="width: 200px; background-color: #66BC46; font-size: 14px; color: white; border: none;">
                                        </li>
                                        <li class="email"><i class="fas fa-envelope"></i><input name="email" id="email" value="" type="text" placeholder="tencuaban@example.com" style="width: 200px; background-color: #66BC46; font-size: 14px; color: white"></li>
                                        <li class="linkedin"><i class="fab fa-linkedin-in"></i><input name="linkin" id="linkin" value="" type="text" placeholder="linkedin.com/JobLink" style="width: 200px; background-color: #66BC46; font-size: 14px; color: white"></li>
                                        <li class="github"><i class="fab fa-github"></i><input name="githubs" id="githubs" value="" type="text" placeholder="github.com/JobLink" style="width: 200px; background-color: #66BC46; font-size: 14px; color: white"></li>
                                        <li class="twitter"><i class="fab fa-twitter"></i><input name="twitter" id="twitter" value="" type="text" placeholder="x.com/JobLink" style="width: 200px; background-color: #66BC46; font-size: 14px; color: white"></li>
                                    </ul>
                                </div><!--//contact-container-->


                                <div class="education-container container-block">
                                    <h2 class="container-block-title" style="color: #FFFF99; font-size: 20px">Học vấn</h2>
                                    <div id="education-fields" >
                                    </div>
                                </div>

                                <div class="languages-container container-block">
                                    <h2 class="container-block-title" style="color: #FFFF99; font-size: 20px">Ngôn ngữ</h2>
                                    <ul class="list-unstyled interests-list" id="language-fields"></ul>
                                </div>


                                <div class="interests-container container-block">
                                    <h2 class="container-block-title" style="color: #FFFF99; font-size: 20px">Sở thích</h2>
                                    <ul class="list-unstyled interests-list" id="interest-fields">  
                                    </ul>
                                </div>

                            </div><!--//sidebar-wrapper-->

                            <div class="main-wrapper">

                                <section class="section summary-section">
                                    <h2 class="section-title"><span class="icon-holder"><i class="fas fa-user"></i></span>Hồ sơ nghề nghiệp</h2>
                                    <div class="summary">
                                        <p>
                                            <textarea
                                                style="width: 600px; height: 150px; white-space: pre-wrap; overflow: hidden"
                                                name="careerprofile"
                                                id="careerprofile"
                                                placeholder='Giới thiệu với nhà tuyển dụng một vài nét về nghề nghiệp của bạn, ví dụ: "Chuyên gia CNTT có kinh nghiệm với nền tảng vững chắc trong phát triển phần mềm. Đã chứng minh được sự thành công trong các vai trò như Nhà phát triển chính và Kỹ sư phần mềm cao cấp, hợp tác với các công ty hàng đầu trong ngành như Google và Amazon. Có chuyên môn về Python, Django, Javascript và jQuery. Cam kết đi đầu trong các xu hướng công nghệ để cung cấp các giải pháp chất lượng cao. Là người giao tiếp hiệu quả và lãnh đạo đội nhóm, đam mê thúc đẩy đổi mới trong lĩnh vực CNTT."'


                                                oninput="autoResize(this)"
                                                ></textarea>
                                        </p>
                                    </div><!--//summary-->
                                </section><!--//section-->

                                <section class="section experiences-section">
                                    <h2 class="section-title"><span class="icon-holder"><i class="fas fa-briefcase"></i></span>Kinh nghiệm làm việc</h2>
                                    <div id="experience-list">
                                        <div class="item" id="experience1">
                                            <div class="meta">
                                                <div class="upper-row">
                                                    <h3 class="job-title"><input name="ex1" id="ex1" value="" type="text" placeholder="Tên kinh nghiệm"></h3>
                                                    <div class="time"><input class="text-right" type="text" name="year1" id="year1" value="" placeholder="20xx - 20yy"></div>
                                                </div><!--//upper-row-->
                                                <div class="company"><input type="text" name="position1" id="position1" value="" placeholder="Tên công ty"></div>
                                            </div><!--//meta-->
                                            <div class="details">
                                                <p><textarea
                                                        style="width: 600px; height: 150px; white-space: pre-wrap; overflow: hidden"
                                                        name="exd1"
                                                        id="exd1"
                                                        placeholder="Mô tả trách nhiệm và kết quả đạt được của bạn"
                                                        oninput="autoResize(this)"
                                                        ></textarea></p>  
                                            </div><!--//details-->
                                            <!--<button type="button" onclick="removeExperience('experience1')" style="background-color: red; color: white; border: none; border-radius: 5px; margin-top: 10px">Xóa</button>-->
                                        </div><!--//item-->

                                        <div class="item" id="experience1">
                                            <div class="meta">
                                                <div class="upper-row">
                                                    <h3 class="job-title"><input name="ex1" id="ex1" value="" type="text" placeholder="Tên kinh nghiệm"></h3>
                                                    <div class="time"><input class="text-right" type="text" name="year1" id="year1" value="" placeholder="20xx - 20yy"></div>
                                                </div><!--//upper-row-->
                                                <div class="company"><input type="text" name="position1" id="position1" value="" placeholder="Tên công ty"></div>
                                            </div><!--//meta-->
                                            <div class="details">
                                                <p><textarea
                                                        style="width: 600px; height: 150px; white-space: pre-wrap; overflow: hidden"
                                                        name="exd1"
                                                        id="exd1"
                                                        placeholder="Mô tả trách nhiệm và kết quả đạt được của bạn"
                                                        oninput="autoResize(this)"
                                                        ></textarea></p>  
                                            </div><!--//details-->
                                            <!--<button type="button" onclick="removeExperience('experience1')" style="background-color: red; color: white; border: none; border-radius: 5px; margin-top: 10px">Xóa</button>-->
                                        </div><!--//item-->
                                    </div>
                                    <!--<button type="button" onclick="addExperience()" style="background-color: #333; color: white; border: none; border-radius: 5px; margin-top: 20px">Thêm kinh nghiệm</button>-->
                                </section>

                                <section class="section projects-section">
                                    <h2 class="section-title"><span class="icon-holder"><i class="fas fa-archive"></i></span>Dự án</h2>

                                    <div id="projects-container">
                                        <div class="item">
                                            <span class="project-title"><input type="text" name="prj1" id="prj" value="" placeholder="Tên dự án"></span> <br>
                                            <span class="project-tagline">
                                                <textarea
                                                    style="width: 600px; height: 300px; white-space: pre-wrap; overflow: hidden"
                                                    name="content1"
                                                    id="content"
                                                    placeholder="Mô tả một vài nét về công nghệ mà bạn sử dụng trong dự án, và kết quả của dự án như thế nào, ..."
                                                    oninput="autoResize(this)"
                                                    ></textarea>
                                            </span>

                                        </div><!--//item-->

                                        <div class="item">
                                            <span class="project-title"><input type="text" name="prj1" id="prj" value="" placeholder="Tên dự án"></span> <br>
                                            <span class="project-tagline">
                                                <textarea
                                                    style="width: 600px; height: 300px; white-space: pre-wrap; overflow: hidden"
                                                    name="content1"
                                                    id="content"
                                                    placeholder="Mô tả một vài nét về công nghệ mà bạn sử dụng trong dự án, và kết quả của dự án như thế nào, ..."
                                                    oninput="autoResize(this)"
                                                    ></textarea>
                                            </span>

                                        </div><!--//item-->
                                    </div>
                                </section>

                                <section class="skills-section section" style="padding-top: 3px">
                                    <h2 class="section-title"><span class="icon-holder"><i class="fas fa-rocket"></i></span>Kỹ năng & Năng lực</h2>
                                    <div class="skillset">
                                        <!-- Các mục kỹ năng sẽ được thêm vào đây -->
                                        <div class="skillset" id="skillset"></div>
                                    </div>
                                    <style>
                                        .skill-inputs {
                                            margin-bottom: 20px;
                                        }

                                        .skillset .item {
                                            margin-bottom: 10px;
                                        }

                                        .skillset .item h3 {
                                            display: inline-block;
                                            margin-right: 10px;
                                        }

                                        .progress-bar {
                                            background-color: #66BC46;
                                            height: 20px;
                                            width: 0%;
                                            transition: width 0.3s;
                                        }

                                        /*                                        .listt {
                                                                                    border: solid;
                                                                                    border-radius: 5px;
                                                                                }*/
                                    </style>
                                </section>

                            </div><!--//main-body-->
                        </div>

                    </div>
                    <div class="row align-items-center mb-5">

                        <div class="col-lg-4 ml-auto">
                            <div class="row">
                                <div class="col-8 button-container">
                                    <br>
                                    <a href="javascript:void(0);" onclick="downloadAsImage();" class="btn btn-block btn-primary btn-md">Tải xuống hình ảnh</a>
                                    <a href="javascript:void(0);" onclick="CreatePDFfromHTML();" class="btn btn-block btn-primary btn-md">Tải xuống PDF</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!--</div>-->
                <style>

                    .btn {
                        border: 1px solid #66BC46;
                        border-radius: 4px;
                        background-color: #66BC46;
                        color: white;
                        text-decoration: none;
                    }

                    btn:hover {
                        background-color: #66BC46; /* Màu nền khi hover */
                        border-color: #66BC46;
                    }

                    .skill-inputs {
                        margin-top: 20px;
                    }

                    .skill-inputs label, .skill-inputs input, .skill-inputs output, .skill-inputs button {
                        display: block;
                        margin-bottom: 10px;
                    }

                    .skillset {
                        margin-top: 20px;
                    }

                    .skillset .item {
                        margin-bottom: 15px;
                    }

                    .level-title {
                        font-size: 18px;
                        margin-bottom: 5px;
                    }

                    .progress {
                        height: 20px;
                        background-color: #f0f0f0;
                        border-radius: 5px;
                        overflow: hidden;
                    }

                    .theme-progress-bar {
                        height: 100%;
                        background-color: #66BC46;
                    }

                </style>
            </section>



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
        <script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>

        <script>
                                        function autoResize(textarea) {
                                        textarea.style.height = 'auto'; // Reset height to auto
                                        textarea.style.height = textarea.scrollHeight + 'px'; // Set height based on scrollHeight
                                        }

// Optional: Initial call to fit the existing content on page load
                                        document.addEventListener('DOMContentLoaded', function () {
                                        const textareas = document.querySelectorAll('textarea');
                                        textareas.forEach(autoResize);
                                        });
        </script>

        <script>
            function downloadAsImage() {
            var element = document.querySelector('.download-content');
            // S? d?ng html2canvas ?? chuy?n ??i thành hình ?nh
            html2canvas(element).then(function (canvas) {
            // T?o m?t URL t? hình ?nh
            var imgData = canvas.toDataURL('image/png');
            // T?o m?t th? <a> ?? kh?i t?o t?i v?
            var link = document.createElement('a');
            link.href = imgData;
            link.download = 'JobLink_CV.png';
            // Thêm th? <a> vào trang và kích ho?t s? ki?n nh?p chu?t
            document.body.appendChild(link);
            link.click();
            // Xóa th? <a> sau khi t?i v?
            document.body.removeChild(link);
            });
            }
        </script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
        <script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>

        <script>
            function CreatePDFfromHTML() {
            var HTML_Width = $(".download-content").width();
            var HTML_Height = $(".download-content").height();
            var top_left_margin = 15;
            var PDF_Width = HTML_Width + (top_left_margin * 2);
            var PDF_Height = (PDF_Width * 1.5) + (top_left_margin * 2);
            var canvas_image_width = HTML_Width;
            var canvas_image_height = HTML_Height;
            var totalPDFPages = Math.ceil(HTML_Height / PDF_Height) - 1;
            html2canvas($(".download-content")[0]).then(function (canvas) {
            var imgData = canvas.toDataURL("image/jpeg", 1.0);
            var pdf = new jsPDF('p', 'pt', [PDF_Width, PDF_Height]);
            pdf.addImage(imgData, 'JPG', top_left_margin, top_left_margin, canvas_image_width, canvas_image_height);
            for (var i = 1; i <= totalPDFPages; i++) {
            pdf.addPage(PDF_Width, PDF_Height);
            pdf.addImage(imgData, 'JPG', top_left_margin, - (PDF_Height * i) + (top_left_margin * 4), canvas_image_width, canvas_image_height);
            }

            pdf.save("JobLink_CV.pdf");
            $(".html-content").hide(); // Hide the HTML content after saving PDF
            }).catch(function (error) {
            console.error('Error creating PDF:', error);
            });
            }

        </script>


        <script>
            document.getElementById('avatar-upload').addEventListener('change', function (e) {
            const reader = new FileReader();
            reader.onload = function (event) {
            document.getElementById('profile-avatar').src = event.target.result;
            };
            reader.readAsDataURL(e.target.files[0]);
            });
            function addInterestField() {
            const container = document.getElementById('interest-fields');
            const li = document.createElement('li');
            li.innerHTML = `<input style="width: 200px; border: none; background-color: #66BC46" name="interest" value="" type="text" placeholder="Sở thích mới"><button type="button" onclick="removeField(this)" style="background-color: red; color: white; border: none; border-radius: 5px; font-size: 10px">Xóa</button>`;
            container.appendChild(li);
            function removeField(button) {
            const field = button.parentElement;
            field.parentElement.removeChild(field);
            }
        </script>

        <script>
            document.getElementById('avatarUpload').addEventListener('change', function (event) {
            const file = event.target.files[0];
            if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
            document.getElementById('avatar').src = e.target.result;
            };
            reader.readAsDataURL(file);
            }
            });
            let experienceCount = 1;
            function addExperience() {
            experienceCount++;
            const experienceList = document.getElementById('experience-list');
            const newItem = document.createElement('div');
            newItem.classList.add('item');
            newItem.id = `experience${experienceCount}`;
            newItem.innerHTML = `
                    <div id="experience-list">
            <div class="item" id="experience1">
            <div class="meta">
            <div class="upper-row">
            <h3 class="job-title"><input name="ex1" id="ex1" value="" type="text" placeholder="Tên kinh nghiệm"></h3>
                            <div class="time"><input class="text-right" type="text" name="year1" id="year1" value="" placeholder="20xx - 20yy"></div>
                                                </div><!--//upper-row-->
                                                <div class="company"><input type="text" name="position1" id="position1" value="" placeholder="Tên công ty"></div>
                                            </div><!--//meta-->
                                            <div class="details">
                                                <p><textarea
                                                        style="width: 600px; height: 150px; white-space: pre-wrap; overflow: hidden"
                                                        name="exd1"
                                                        id="exd1"
                                                        placeholder="Mô tả trách nhiệm và kết quả đạt được của bạn"
    oninput="autoResize(this)"
                                                        ></textarea></p>  
                                            </div><!--//details-->
                                            
                                        </div><!--//item-->
                                    </div>
    `;

                    experienceList.appendChild(newItem);
                }

                function removeExperience(id) {
                    const experienceItem = document.getElementById(id);
                    experienceItem.remove();
                }

        </script>

        <script>
            
        </script>

        <script>                                  
        let skillCount = 0;
                    
            function addSkill() {
            const skillName = document.getElementById('skill-name').value;
    const skillLevel = document.getElementById('skill-level').value;
    if (skillName === '') {
    alert('Vui lòng nhập tên kỹ năng.');
    return;
    }

// Tạo một phần tử div cho kỹ năng mới
    const skillItem = document.createElement('div');
    skillItem.classList.add('item');
    skillItem.setAttribute('id', 'skill-' + skillCount);
    // Tạo một thẻ h3 để hiển thị tên kỹ năng
    const skillTitle = document.createElement('h3');
    skillTitle.classList.add('level-title');
    skillTitle.textContent = skillName;
    // Tạo một div cho thanh tiến trình
    const progressBarContainer = document.createElement('div');
    progressBarContainer.classList.add('progress', 'level-bar');
    // Tạo thanh tiến trình
    const progressBar = document.createElement('div');
    progressBar.classList.add('progress-bar', 'theme-progress-bar');
    progressBar.style.width = skillLevel + '%';
    progressBar.setAttribute('aria-valuenow', skillLevel);
    progressBar.setAttribute('aria-valuemin', '0');
    progressBar.setAttribute('aria-valuemax', '100');
    // Thêm thanh tiến trình vào container
    progressBarContainer.appendChild(progressBar);
    // Thêm thẻ h3 và thanh tiến trình vào phần tử kỹ năng
    skillItem.appendChild(skillTitle);
    skillItem.appendChild(progressBarContainer);
    // Thêm phần tử kỹ năng vào skillset
    document.getElementById('skillset').appendChild(skillItem);
    skillCount++;
    // Xóa giá trị trong các input
    document.getElementById('skill-name').value = '';
    document.getElementById('skill-level').value = 50;
    updateOutput(50);
        }
                
        function updateOutput(value) {
            document.getElementById('level-output').textContent = value + '%';
        }
                    
            function removeSkill(skillItem) {
            skillItem.remove();
            }
                    
            function removeLastSkill() {
            const skillset = document.getElementById('skillset');
    if (skillset.lastElementChild) {
    skillset.removeChild(skillset.lastElementChild);
    }
            }
        </script>

        <script>
// Hàm thêm dự án mới
function addProject() {
const projectsSection = document.querySelector('.projects-section');
// Tạo một div mới cho dự án
const newProjectDiv = document.createElement('div');
newProjectDiv.classList.add('item');
// Tạo input cho tên dự án
const projectNameInput = document.createElement('input');
projectNameInput.setAttribute('type', 'text');
projectNameInput.setAttribute('name', 'prj');
projectNameInput.setAttribute('placeholder', 'Tên dự án');
projectNameInput.classList.add('project-title');
newProjectDiv.appendChild(projectNameInput);
newProjectDiv.innerHTML += '<br>';
// Tạo textarea cho mô tả dự án
const projectDescriptionTextarea = document.createElement('textarea');
projectDescriptionTextarea.setAttribute('name', 'content');
projectDescriptionTextarea.setAttribute('placeholder', 'Mô tả một vài nét về công nghệ mà bạn sử dụng trong dự án, và kết quả của dự án như thế nào, ...');
projectDescriptionTextarea.style.width = '600px';
projectDescriptionTextarea.style.height = '300px';
projectDescriptionTextarea.style.whiteSpace = 'pre-wrap';
projectDescriptionTextarea.style.overflow = 'hidden';
projectDescriptionTextarea.style.border = 'none'; // Bỏ viền cho textarea
projectDescriptionTextarea.style.backgroundColor = 'transparent';
projectDescriptionTextarea.setAttribute('oninput', 'autoResize(this)');
projectDescriptionTextarea.classList.add('project-tagline');
newProjectDiv.appendChild(projectDescriptionTextarea);
// Thêm dự án mới vào cuối danh sách các dự án
projectsSection.appendChild(newProjectDiv);
}
                
// Hàm xóa dự án cuối cùng
function removeLastProject() {
const projectsSection = document.querySelector('.projects-section');
const projects = projectsSection.querySelectorAll('.item');
// Nếu có ít nhất một dự án, xóa dự án cuối cùng
if (projects.length > 0) {
projects[projects.length - 1].remove();
}
}
                        
        </script>

        <script>
function addEducationField() {
const container = document.getElementById('education-fields');
const div = document.createElement('div');
div.classList.add('item');
div.innerHTML = `
                    <input style="width: 200px; border: none; background-color: #66BC46; color: white" name="education" value="" type="text" placeholder="Học vấn mới">
                
                `;
                container.appendChild(div);
                }
                
                function removeEducationField() {
                    const container = document.getElementById('education-fields');
            const items = container.querySelectorAll('.item');
            if (items.length > 0) {
            container.removeChild(items[items.length - 1]);
            }
                    }
                    
        </script>

        <script>
        function addLanguageField() {
    const container = document.getElementById('language-fields');
const li = document.createElement('li');
li.innerHTML = `
<input style="width: 200px; border: none; background-color: #66BC46; color: white" name="language" value="" type="text" placeholder="Ngôn ngữ mới">

`;
container.appendChild(li);
    }
                    
    function removeLanguageField() {
    const container = document.getElementById('language-fields');
const items = container.getElementsByTagName('li');
if (items.length > 0) {
container.removeChild(items[items.length - 1]);
}
        }
                        
        </script>

                        <script>
        function addInterestField() {
    const container = document.getElementById('interest-fields');
const li = document.createElement('li');
li.innerHTML = `
<input style="width: 200px; border: none; background-color: #66BC46; color: white" name="interest" value="" type="text" placeholder="Sở thích mới">
        
`;
container.appendChild(li);
        }
                        
        function removeInterestField() {
    const container = document.getElementById('interest-fields');
const items = container.getElementsByTagName('li');
if (items.length > 0) {
container.removeChild(items[items.length - 1]);
}
        }
                        
        </script>
    </body>
</html>





























