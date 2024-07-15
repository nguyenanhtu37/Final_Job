<%-- 
    Document   : VideoCall
    Created on : Jun 30, 2024, 10:29:40 PM
    Author     : nguyenanhtu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Video Call with Stringee</title>
    <script src="https://cdn.stringee.com/sdk/web/latest/stringee-web-sdk.min.js"></script>
    <style>
        #localVideo, #remoteVideo {
            width: 300px;
            height: 200px;
        }
    </style>
</head>
<body>
    <h1>Video Call with Stringee</h1>
    <div>
        <input id="userId" type="text" placeholder="Enter your user ID">
        <button id="loginBtn">Login</button>
    </div>
    <div>
        <input id="callTo" type="text" placeholder="Enter callee ID">
        <button id="callBtn">Call</button>
    </div>
    <div>
        <video id="localVideo" autoplay muted></video>
        <video id="remoteVideo" autoplay></video>
    </div>
    <button id="hangupBtn">Hangup</button>
    <script>
        var stringeeClient = new StringeeClient();
        var call;

        document.getElementById('loginBtn').onclick = function() {
            var userId = document.getElementById('userId').value;
            fetch('/your-app/token?userId=' + userId)
                .then(response => response.json())
                .then(data => {
                    stringeeClient.connect(data.token);
                });
        };

        stringeeClient.on('authen', function(res) {
            console.log('authen:', res);
        });

        stringeeClient.on('connect', function() {
            console.log('Connected to Stringee server');
        });

        stringeeClient.on('disconnect', function() {
            console.log('Disconnected from Stringee server');
        });

        document.getElementById('callBtn').onclick = function() {
            var calleeId = document.getElementById('callTo').value;
            call = new StringeeCall(stringeeClient, stringeeClient.userId, calleeId, true);
            call.makeCall(function(res) {
                console.log('makeCall:', res);
            });

            call.on('addlocalstream', function(stream) {
                document.getElementById('localVideo').srcObject = stream;
            });

            call.on('addremotestream', function(stream) {
                document.getElementById('remoteVideo').srcObject = stream;
            });
        };

        document.getElementById('hangupBtn').onclick = function() {
            if (call) {
                call.hangup(function(res) {
                    console.log('hangup:', res);
                });
            }
        };

        stringeeClient.on('incomingcall', function(incomingCall) {
            call = incomingCall;
            call.answer(function(res) {
                console.log('answer:', res);
            });

            call.on('addlocalstream', function(stream) {
                document.getElementById('localVideo').srcObject = stream;
            });

            call.on('addremotestream', function(stream) {
                document.getElementById('remoteVideo').srcObject = stream;
            });
        });
    </script>
</body>
</html>
