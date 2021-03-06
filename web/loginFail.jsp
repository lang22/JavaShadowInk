<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html style="height:100%">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <title>墨影-登录</title>
    <meta id="viewport" name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,minimal-ui">
    <link rel="stylesheet" href="./login_files/login.css">	
    <script type="text/javascript" src="./login_files/patternLock.min.js" charset="utf-8"></script>
	
	<script>
	function Toast(msg,duration){
		duration=isNaN(duration)?3000:duration;
		var m = document.createElement('div');
		m.innerHTML = msg;
		m.style.cssText="opacity: 0.7;width:100%;height:30px;color:#000;line-height: 30px;text-align: center;border-radius: 5px;position: relative;top: 10px ;left:0px;z-index: 99999;background:#fff;font-size: 20px;";
		document.getElementById("ToastDiv").appendChild(m);
		setTimeout(function() {
			var d = 0.5;
			m.style.webkitTransition = '-webkit-transform ' + d + 's ease-in, opacity ' + d + 's ease-in';
			m.style.opacity = '0';
			setTimeout(function() { document.getElementById("ToastDiv").removeChild(m); }, d * 1000);
		}, duration);
	}
	</script> 
</head>
<body style="height:100%">
	<style type="text/css">
		body{
			background-image:url(./image/bk.jpg);
			background-size:cover;
		}
        center{
            font-size: 16px;
            color: red;
        }
	</style>
<div class="login-wrapper" id="loginWrapper" style=" display: block; min-height: 100px;">
    <section class="avatar-wrapper" id="avatarWrapper">
	<img src="./image/icon.png">
	</section>
    <form id="loginForm" action="./login" method="POST">
        <div class="box">
            <div class="input-wrapper">
                <i class="icon forName"></i>
                <p class="input-box">
                    <input type="text" placeholder="用户名/手机号" id="loginName" name="name">
                    <a href="javascript:;" class="input-clear hid" id="loginnameclear"></a>
                </p>
            </div>
            <div class="input-wrapper">
                <i class="icon forPwd"></i>
                <p class="input-box">
                <input type="password" placeholder="密码" id="loginPassword" name="password">
                </p>
            </div>
        </div>
        
        <div id="ToastDiv" style=" height:30px; width:100%;">
            <script>
                    Toast( "${HelloMessage}" ,2000);
            </script>
        </div>
        <a href="javascript:document.getElementById('loginForm').submit()" class="btn btnRed" id="loginAction">登录</a>
        
    </form>
    <footer class="footer">
        <a href="./register.html">注册</a>
        <a href="">忘记密码</a>
    </footer>
</body>
</html>