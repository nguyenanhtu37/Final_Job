var stringeeClient;
var fromNumber = 'FROM_YOUR_NUMBER';
var call;

$(document).ready(function () {
    //check isWebRTCSupported
    console.log('StringeeUtil.isWebRTCSupported: ' + StringeeUtil.isWebRTCSupported());

    $('#loginBtn').on('click', function () {
        $('#loggedUserId').html('Connecting...');
        var accessToken = $('#accessTokenArea').val();
        console.log('accessToken...: ' + accessToken);

        stringeeClient = new StringeeClient();

        settingClientEvents(stringeeClient);

        stringeeClient.connect(accessToken);
    });
});

function testAnswerCall() {
    call.answer(function (res) {
        console.log('answer res', res);
        $('#incoming-call-div').hide();
    });
}

function testRejectCall() {
    callEnded();

    call.reject(function (res) {
        console.log('reject res', res);
        $('#incoming-call-div').hide();
    });
}

function testMakeCall(videocall) {
    console.log('make call, videocall: ' + videocall);
//				var videoCall = false;
    call = new StringeeCall(stringeeClient, fromNumber, $('#callTo').val(), videocall);

//	call.videoResolution = {width: 1280, height: 720};

    settingCallEvent(call);

    call.makeCall(function (res) {
        console.log('make call callback: ' + JSON.stringify(res));
    });
}

function sendScreenStream(stream) {
    if (call) {
        call.sendStream(stream);
        console.log('Sent screen stream to the other party.');
    } else {
        console.error('No active call to send screen stream.');
    }
}

async function startScreenShare1() {
    try {
        const stream = await navigator.mediaDevices.getDisplayMedia({ video: true });
        const screenVideo = document.getElementById('screenVideo');
        screenVideo.srcObject = stream;
        screenVideo.style.display = 'block';
        screenVideo.play(); // Bắt đầu phát video ngay khi có dữ liệu

        // Gửi stream màn hình trong cuộc gọi
        sendScreenStream(stream);

        // In log ra console khi screen đã bắt đầu được gửi sang phía bên kia
        console.log('Screen sharing has started and sent to the other party.');
    } catch (error) {
        console.error('Lỗi khi truy cập màn hình:', error);
    }
}

function settingClientEvents(client) {
    client.on('connect', function () {
        console.log('++++++++++++++ connected to StringeeServer');
    });

    client.on('authen', function (res) {
        console.log('authen', res);
        if (res.r === 0) {
            $('#loggedUserId').html(res.userId);
            $('#loggedUserId').css('color', 'blue');

            $('#callBtn').removeAttr('disabled');
            $('#videoCallBtn').removeAttr('disabled');
        } else {
            $('#loggedUserId').html(res.message);
        }
    });

    client.on('disconnect', function () {
        $('#callBtn').attr('disabled', 'disabled');
        $('#videoCallBtn').attr('disabled', 'disabled');
        console.log('++++++++++++++ disconnected: ' + this.test);
    });

    client.on('incomingcall', function (incomingcall) {
        call = incomingcall;
        settingCallEvent(incomingcall);

//			call.videoResolution = {width: 1280, height: 720};

        $('#incoming-call-div').show();

        call.ringing(function (res) {});

        console.log('++++++++++++++ incomingcall', incomingcall);
    });

    client.on('requestnewtoken', function () {
        console.log('++++++++++++++ requestnewtoken; please get new access_token from YourServer and call client.connect(new_access_token)+++++++++');
        //please get new access_token from YourServer and call: 
        //client.connect(new_access_token);
    });
}

function settingCallEvent(call1) {
    call1.on('addremotestream', function (stream) {
        console.log('Add remote stream');
        var screenVideo = document.getElementById('screenVideo');
        screenVideo.srcObject = stream;
        screenVideo.style.display = 'block';
        screenVideo.play(); // Phát video khi có dữ liệu
    });

    call1.on('error', function (info) {
        console.log('Call error:', info);
    });

    call1.on('signalingstate', function (state) {
        console.log('Signaling state:', state);
    });

    call1.on('mediastate', function (state) {
        console.log('Media state:', state);
    });

    call1.on('info', function (info) {
        console.log('Call info:', info);
    });

    call1.on('otherdevice', function (data) {
        console.log('Other device:', data);
        if ((data.type === 'CALL_STATE' && data.code >= 200) || data.type === 'CALL_END') {
            $('#incoming-call-div').hide();
            callEnded();
        }
    });
}

function testHangupCall() {
    remoteVideo.srcObject = null;
    callEnded();

    call.hangup(function (res) {
        console.log('hangup res', res);
    });
}

function upgradeToVideoCall() {
    call.upgradeToVideoCall();
}


function switchVoiceVideoCall() {
    var info = {requestVideo: true};

    console.log('please using upgradeToVideoCall() method to enable/disable local video, send request enable video to "partner"');

    call.sendInfo(info, function (res) {
        console.log('switchVoiceVideoCall', res);
    });
}



function mute() {
    var muted = !call.muted;
    call.mute(muted);

    if (muted) {
        $('#muteBtn').html('Unmute');
    } else {
        $('#muteBtn').html('Mute');
    }
}

function enableVideo() {
    var success;
    if (call.localVideoEnabled) {
        success = call.enableLocalVideo(false);
    } else {
        success = call.enableLocalVideo(true);
    }
    console.log('enableVideo result: ' + success);
}

function callStarted() {
    $('#hangupBtn').removeAttr('disabled');
    $('#upgradeToVideoCallBtn').removeAttr('disabled');
    $('#switchVoiceVideoBtn').removeAttr('disabled');
    $('#muteBtn').removeAttr('disabled');
    $('#enableVideoBtn').removeAttr('disabled');
}

function callEnded() {
    $('#hangupBtn').attr('disabled', 'disabled');
    $('#upgradeToVideoCallBtn').attr('disabled', 'disabled');
    $('#switchVoiceVideoBtn').attr('disabled', 'disabled');
    $('#muteBtn').attr('disabled', 'disabled');
    $('#enableVideoBtn').attr('disabled', 'disabled');

    setTimeout(function () {
        $('#callStatus').html('Call ended');
    }, 1500);
}

document.getElementById('startScreenShare').addEventListener('click', startScreenShare);
