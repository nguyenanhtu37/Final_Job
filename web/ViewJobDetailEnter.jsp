<%-- 
    Document   : ViewJobDetailEnter
    Created on : Oct 29, 2023, 2:19:33 PM
    Author     : ASUS
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <title>JobBoard &mdash; Website Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


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
            <header class="site-navbar mt-3">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="site-logo col-6"><a href="index.html">JobBoard</a></div>

                        <nav class="mx-auto site-navigation">
                            <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                                <li><a href="index.html" class="nav-link active">Home</a></li>
                                <li><a href="about.html">About</a></li>
                                <li><a href="blog.html">Post Job</a></li>
                                <li><a href="blog.html">Interview</a></li>
                                <li><a href="blog.html">Posted Job</a></li>

                                <li class="d-lg-none"><a href="post-job.html"><span class="mr-2">+</span> Post a Job</a>
                                </li>
                                <li class="d-lg-none"><a href="login.html">Log In</a></li>
                            </ul>
                        </nav>

                        <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                            <div class="ml-auto">
                                <a href="post-job.html"
                                   class="btn btn-outline-white border-width-2 d-none d-lg-inline-block mx-2"><span
                                        class="mr-2 icon-add"></span>Post a Job</a>
                                <div class="dropdown d-none d-lg-inline-block">

                                    <div class=" mx-2" style="color: white; font-size: 20px;" type="button" id="signUp"
                                         data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa-regular fa-user"></i>
                                        <span class="icon-text mx-2 text-capitalize">Enterprise</span>
                                    </div>
                                    <div class="dropdown-menu mt-2" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Edit a profile</a>
                                        <a class="dropdown-item" href="index.jsp">Log out</a>
                                    </div>

                                </div>

                                <!-- <a href="login.html" class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span class="mr-2 icon-lock_outline"></span>Log In</a> -->
                            </div>
                            <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                                    class="icon-menu h3 m-0 p-0 mt-2"></span></a>
                        </div>

                    </div>
            </header>

            <!-- HOME -->
            <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');"
                     id="home-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7">
                            <h1 class="text-white font-weight-bold">Job Detail</h1>
                            <div class="custom-breadcrumbs">
                                <a href="#">Home</a> <span class="mx-2 slash">/</span>
                                <span class="text-white"><strong>Job Detail</strong></span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="site-section">
                <div class="container">

                    <div class="row align-items-center mb-5">
                        <div class="col-lg-10 mb-4 mb-lg-0">
                            <div class="d-flex align-items-center text-capitalize">
                                <div>
                                    <h2>Job Detail</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-5">
                        <div class="col-lg-12">
                            <form action="PostJobServlet" class="p-4 p-md-5 border rounded" method="post">
                                <h3 class="text-black mb-5 border-bottom pb-2 text-capitalize d-flex justify-content-between align-items-center">Job<button id="reportButton" type="button" class="btn btn-primary" style="background: red"><i class="fa-solid fa-triangle-exclamation" style="background: red" id="reportBt"></i></button></h3>
                                <div class="form-group">
                                    <label for="name" class="text-capitalize">Job Title</label>
                                    <input type="text" class="form-control" id="name" value="${JobDetail.getTitle()}" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="phone" class="text-capitalize">Location</label>
                                    <input type="text" class="form-control" id="phone" value="${JobDetail.getLocation()}" readonly>
                                </div>
                                <div class="form-group row">
                                    <div class="col-4">
                                        <label for="job-location">Type</label>
                                        <input type="text" class="form-control" id="phone" value="${JobDetail.getType()}" readonly>
                                    </div>
                                    <div class="col-4">
                                        <label for="job-location">Skills</label>
                                        <input type="text" class="form-control" id="phone" value="${JobDetail.getSkills()}" readonly>
                                    </div>
                                    <div class="col-4">
                                        <label for="job-location">Salary</label>
                                        <input type="text" class="form-control" id="phone" value="${JobDetail.getSalary()}" readonly>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea rows="4" readonly name="job_description"
                                              class="form-control">${JobDetail.getDescription()}</textarea>
                                </div>

                                <div class="row mb-5 justify-content-end">
                                    <div class="col-lg-3 col-md-3">
                                        <a href="BackHomePage" type="submit" class="btn btn-block btn-secondary btn-md text-white">Back To
                                            Homepage</a>
                                    </div>
                                </div>
                            </form>
                        </div>


                    </div><!--===================Comment======================================-->                                
                    <form id="commet_tag" class="row mb-5" method="post" action="commentE">
                        <div class="col-12" id="createComment" >
                            <button type="button" class="btn btn-primary" id="commentB">Comment <i class="fa-solid fa-comment" id="comment_button"></i></button>
                        </div>

                        <div class="col-11" id="des">
                            <textarea id="desc" rows="4" class="form-control" name="des" placeholder="Description Comment" oninput="checkInputDes()"></textarea>
                        </div>
                        <div class="col-1" id="divComment">

                            <input type="hidden" value="${sessionScope.e.enterpriseID}" name="idU">
                            
                            <input type="hidden" value="${JobDetail.jobId}" name="idJ">
                            <div class="row input-group">
                                <textarea name="des" style="display: none" id="textComment" class="form-control"></textarea>                                        
                                <button type="submit" id="send" class="btn btn-primary" onclick="getValue()"><i class="fa-solid fa-paper-plane"></i></button> 
                            </div>

                            <button type="button" id="removeDiv" class="btn" style="color: #fff; background-color: red">
                                <i class="fa-solid fa-trash-can"></i>
                            </button>
                        </div>
                    </form>
                    <!--===========report=============--> 
                    <form>

                        <div class="col-11">
                            <input id="reportTitle"  class="form-control" type="text" placeholder="Title Report" oninput="checkInputReport()" >                                        
                        </div>
                        <div class="col-11" id="desR">
                            <textarea id="descR" rows="4" class="form-control" name="job_description" placeholder="Description Report" oninput="checkInputReport()"></textarea>
                        </div>

                        <div class="col-1" id="divReport">
                            <button id="sendReport" class="btn" style="color: #fff; background-color: red">
                                <i class="fa-solid fa-paper-plane"></i>
                            </button> 
                            <button type="button" id="removeReport"  class="btn btn-primary" >
                                <i class="fa-solid fa-trash-can"></i>
                            </button>
                        </div>        
                    </form>
                    <!--=================show comment===================-->
                    <ul>
                        <c:forEach items="${list}" var="x">
            <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-2">
                                            <strong>${x.nameUse}</strong>
                                            
                                        </div>
                                        <div class="col-8">
                                            <p id="commentText${x.idC}"> ${x.contentC} ${x.userId}</p>
                                        </div>
                                    </div>
                                        <div >
                                            <c:if test="${sessionScope.e.enterpriseID eq x.enterId}">
                                                <div class="d-flex justify-content-end">
                                                    <form class="col-11 d-flex" style="height: 100%" action="updateCommentE" method="post">
                                                                <input type="hidden" value="${JobDetail.jobId}" name="jobid">
                                                                <input type="hidden" value="${x.idC}" name="idC">
                                                                <textarea class="" name="updateC" id="commentInput${x.idC}" value="${x.contentC}" style="display: none; width: 90%"></textarea>
                                                                
                    <!--============send update========-->                                            
                    <div class="order-last">
                             <button type="submit" id="saveButton${x.idC}" class="btn" style="display: none; color: #fff; background-color: green" onclick="saveComment(${x.idC})">Save</button>
                             <button type="button" id="cancelButton${x.idC}" class="btn" style="display: none; color: #fff; background-color: red" onclick="cancelEdit(${x.idC})">Cancel </button>
                    </div>
                                                            </form>
                                                                
                             <button type="button" id="editButton${x.idC}" class="btn btn-primary" onclick="enableEdit(${x.idC})"><i class="fa-regular fa-pen-to-square"></i></button>   
                                                            
                                                            
                                                                    <form class="col-1" action="deleteE" method="post" onsubmit="return confirmDelete()">
<!--==============Delete comment ===========-->   
                                                                <input type="hidden" value="${JobDetail.jobId}" name="jobid">
                                                                <input type="hidden" value="${x.idC}" name="idC">
                                                                <button type="submit" id="commet${x.idC}" class="btn" style="color : #fff;background-color: red"><i class="fa-solid fa-trash-can"></i></button>                                            
                                                            </form>
                                                    
                                                     
                                                </div>
                                            </c:if>
                                    </div>
                                </li>
       </c:forEach>
                                <c:forEach items="${list2}" var="x">
                        <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-2">
                                            <strong>${x.nameUse}</strong>
                                            
                                        </div>
                                        <div class="col-8">
                                            <p id="commentText${x.idC}"> ${x.contentC}</p>
                                        </div>
                                    </div>
                        </li>
                               </c:forEach>

                    </ul>



                </div>
                

                <!--========================-->
                <!--========================-->
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

        </div>
                                <style>
                    
                    #createComment{
                        opacity: 1;
                        pointer-events: all;
                        height: auto;
                    }
                    #createComment.close{
                        height: 0px;
                        opacity: 0;
                        pointer-events: none;
                    }
                    #reportTitle{
                        height: 0px;
                        opacity: 0;
                        pointer-events: none;
                    }
                    #reportTitle.show{
                        opacity: 1;
                        pointer-events: all;
                        height: auto;
                    }
                    #des{
                        opacity: 0;
                        pointer-events: none;
                        height: 0px
                    }
                    #des.open{
                        opacity: 1;
                        pointer-events: all;
                        height: auto;
                    }
                    #desR{
                        opacity: 0;
                        pointer-events: none;
                        height: 0px
                    }
                    #desR.open{
                        opacity: 1;
                        pointer-events: all;
                        height: auto;
                    }
                    #divComment{
                        opacity: 0;
                        pointer-events: none;
                        height: 0px
                    }
                    #divComment.open{
                        opacity: 1;
                        pointer-events: all;
                        height: auto;
                    }
                    #divReport{
                        opacity: 0;
                        pointer-events: none;
                        height: 0px
                    }
                    #divReport.open{
                        opacity: 1;
                        pointer-events: all;
                        height: auto;
                    }
                    #butComment{
                        /*                                  height: 0px;
                                                            opacity: 0;
                                                            pointer-events: none;*/
                    }
                    #send{
                        opacity: 0;
                        pointer-events: none;
                    }
                    #send.show{
                        opacity: 1;
                        pointer-events: all;
                    }
                    #sendReport{
                        opacity: 0;
                        pointer-events: none;
                    }
                    #sendReport.show{
                        opacity: 1;
                        pointer-events: all;
                    }
                </style>

        <!-- SCRIPTS -->
        <script>
            const openComment = document.getElementById('createComment');
            const des = document.getElementById('des')
            const divComment = document.getElementById('divComment')
            const createComment = document.getElementById('createComment');
            var desc = document.getElementById('desc');

            //nhấn 
            openComment.addEventListener('click', () => {
                des.classList.add('open');
                divComment.classList.add('open');
            });

            const removeDiv = document.getElementById('removeDiv');
            removeDiv.addEventListener('click', () => {
                des.classList.remove('open');
                divComment.classList.remove('open');
            });
            function checkInputDes() {

                var send = document.getElementById('send');
                if (desc.value.trim() != '') {
                    send.classList.add('show');
                } else {
                    send.classList.remove('show');
                }
            }
            function getValue() {
                const textC = document.getElementById('desc');
                var textCInput = textC.value;

                const textCS = document.getElementById('desCommentSend');
                textCS.value = textCInput;
                alert(textCS.value);
                return true;
            }

            const reportButton = document.getElementById('reportButton');
            const reportTitle = document.getElementById('reportTitle');
            reportButton.addEventListener('click', () => {
                des.classList.remove('open');
                divComment.classList.remove('open');
                reportTitle.classList.add('show');
                desR.classList.add('open');
                divReport.classList.add('open');
                createComment.classList.add('close');
            });

            const removeReport = document.getElementById('removeReport');
            removeReport.addEventListener('click', () => {
                reportTitle.classList.remove('show');
                desR.classList.remove('open');
                divReport.classList.remove('open');
                createComment.classList.remove('close');
            });
            function checkInputReport() {
                var sendReport = document.getElementById('sendReport');
                var descR = document.getElementById('descR');
                if (descR.value.trim() != '' && reportTitle.value.trim() != '') {
                    sendReport.classList.add('show')
                } else {
                    sendReport.classList.remove('show')
                }
            }


//        nhấn nút update
            function enableEdit(id) {
//     alert("commentText"+id)
                var commentText = document.getElementById("commentText" + id).textContent;
                document.getElementById("commentInput" + id).value = commentText;
                document.getElementById("commentInput" + id).style.display = "block";
                document.getElementById("commentText" + id).style.display = "none";
                document.getElementById("editButton" + id).style.display = "none";
                document.getElementById("commet" + id).style.display = "none";
                document.getElementById("saveButton" + id).style.display = "block";
                document.getElementById("cancelButton" + id).style.display = "block";
            }
            // Hàm này được gọi khi bạn nhấn vào nút "Hủy"
            function cancelEdit(id) {
                document.getElementById("commentInput" + id).style.display = "none";
                document.getElementById("commentText" + id).style.display = "block";
                document.getElementById("editButton" + id).style.display = "block";
                document.getElementById("commet" + id).style.display = "block";
                document.getElementById("saveButton" + id).style.display = "none";
                document.getElementById("cancelButton" + id).style.display = "none";
            }
            function saveComment(id) {
                var commentInput = document.getElementById("commentInput" + id).value;
                document.getElementById("sendUpdate").value = commentInput;
//    
//    // Lấy giá trị từ commentInput và gán cho updateC
//        updateC.value = commentInput.value;
//        alert(document.getElementById("sendUpdate").value)
                document.getElementById("commentInput" + id).style.display = "none";
                document.getElementById("commentText" + id).style.display = "block";
                document.getElementById("editButton" + id).style.display = "block";
                document.getElementById("commet" + id).style.display = "block";
                document.getElementById("saveButton" + id).style.display = "none";
                document.getElementById("cancelButton" + id).style.display = "none";
            }

            function sendReport() {
                var result = confirm("Send report the Post for admin?");
                if (!result) {
                    alert("don't send")
                } else {
                    alert("Done send")
                    return null;
                }
                return result;
            }


            function confirmDelete() {
                // Sử dụng hàm confirm để hiển thị hộp thoại xác nhận
                var result = confirm("Are your sure to delete?");

                // Nếu người dùng nhấn "OK", form sẽ được gửi đến servlet
                return result;
            }
            const btn_open = document.getElementById('report')
            const btn_close = document.getElementById('closeReport');
            const model_report = document.getElementById('report_tag');
            const model_comment = document.getElementById('commet_tag');
            btn_open.addEventListener('click', () => {
                model_comment.classList.add('close');
                model_report.classList.add('showReport');
            });
            btn_close.addEventListener('click', () => {
                model_comment.classList.remove('close');
                model_report.classList.remove('showReport');
            });

//        function checkInputReport(){
//            var inputTitle = document.getElementById("reportTitle");
//            var inputDes = document.getElementById("descR");
//            var buttonRe = document.getElementById("buttonReport");
//            var iReport = document.getElementById("iReport");
//            
//            if (inputTitle.value.trim() != '' && inputDes.value.trim() != '') {
//                // N?u ? input c? d? li?u, thay ??i m?u n?t
//                document.getElementById("buttonReport").style.display = "block";
//               iReport.style.backgroundColor = 'red';
//               buttonRe.style.backgroundColor = 'red';
//               iReport.style.color = 'white';
//            } else {
//                // N?u ? input r?ng, ??t l?i m?u m?c ??nh c?a n?t
//                buttonRe.style.backgroundColor = '#6c757d';
//               iReport.style.backgroundColor = '#6c757d';
//                iReport.style.color = '';
//            }
//        }
            function checkInput() {
                var inputElement = document.getElementById("commentButton");
                var buttonElement = document.getElementById("postComment");
                var buttonComment = document.getElementById("buttonComment");
                console.log()
                if (inputElement.value.trim() != '') {
                    // N?u ? input c? d? li?u, thay ??i m?u n?t
                    buttonElement.style.backgroundColor = '#89ba16';
                    buttonComment.style.backgroundColor = '#89ba16';
                    buttonElement.style.color = '';
                } else {
                    // N?u ? input r?ng, ??t l?i m?u m?c ??nh c?a n?t
                    buttonElement.style.backgroundColor = '#6c757d';
                    buttonComment.style.backgroundColor = '#6c757d';
                    buttonElement.style.color = '';
                }
            }
        </script>
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



    </body>

</html>