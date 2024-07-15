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
        <link rel="stylesheet" href="css/quill.snow.css">


        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/OTPforgot.css">
    </head>




    <body id="top">

        <div class="wrapper">
        <div class="container">

            <div class="title-section">
                <h2 class="title">Please Check Your Mail</h2>
                <form action="VerifyForgotServlet" method="POST" class="form">
                    <div class="message-response h5 " style="color: red">
                        ${inputError}
                    </div>
                    <div class="input-group">
                        <label for="" class="label-title">Enter your OTP</label>
                        <input id="code-verify" name="input-code" type="text" class="form-control"
                            placeholder="Enter your OTP" required></a>
                        <span class="icon">&#9993;</span>
                    </div>
                    <div class="input-group">
                        <button class="submit-btn" type="submit">Verify</button>
                    </div>
                </form>

            </div>
        </div>
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