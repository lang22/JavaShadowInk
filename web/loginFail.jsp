<!DOCTYPE html>
<html style="height:100%">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <title>?? - ??</title>
    <meta id="viewport" name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,minimal-ui">
    <link rel="stylesheet" href="./login_files/login.css">	
    <script type="text/javascript" src="./login_files/patternLock.min.js" charset="utf-8"></script>
	
	<script>
	function Toast(msg,duration){
		duration=isNaN(duration)?3000:duration;
		var m = document.createElement('div');
		m.innerHTML = msg;
		m.style.cssText="opacity: 0.7;width:50%;height:30px;color:#000;line-height: 30px;text-align: center;border-radius: 5px;position: relative;top: 10px ;left:25%;z-index: 99999;background:#fff;font-size: 20px;";
		document.getElementById("ToastDiv").appendChild(m);
		setTimeout(function() {
			var d = 0.5;
			m.style.webkitTransition = '-webkit-transform ' + d + 's ease-in, opacity ' + d + 's ease-in';
			m.style.opacity = '0';
			setTimeout(function() { document.getElementById("ToastDiv").removeChild(m) }, d * 1000);
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
            font-size: 16 px;
            font-color: red;
        }
	</style>
<div class="login-wrapper" id="loginWrapper" style="display: block; min-height: initial;">
    <section class="avatar-wrapper" id="avatarWrapper">
	<img src="./image/icon.png">
	</section>
    <form id="loginForm" action="/JavaShadowInk/slogin" method="POST">
        <div class="box">
            <div class="input-wrapper">
                <i class="icon forName"></i>
                <p class="input-box">
                    <input type="text" placeholder="???/???" id="loginName" name="name">
                    <a href="javascript:;" class="input-clear hid" id="loginnameclear"></a>
                </p>
            </div>
            <div class="input-wrapper">
                <i class="icon forPwd"></i>
                <p class="input-box">
                <input type="password" placeholder="?????" id="loginPassword" name="password">
                </p>
            </div>
        </div>
		
		<div id="ToastDiv" style=" height:30px; width:100%;">
			<script>
				Toast( "${HelloMessage}" ,2000)
			</script>
		</div>
        <a href="javascript:document.getElementById('loginForm').submit()" class="btn btnRed" id="loginAction">??</a>
        
    </form>
    <footer class="footer">
        <a href="/JavaShadowInk/register">????</a>
        <a href="">????</a>
    </footer>
</body>
</html>