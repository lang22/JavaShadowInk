<%-- 
    Document   : LoginSuccessful
    Created on : 2018-9-17, 11:24:16
    Author     : lang22
--%>

<%@page import="toolsing.NetWorkUtil"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height:100%">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="Refresh" content="3; url=./explore">
    <title>墨影 - 欢迎</title>
    <meta id="viewport" name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,minimal-ui">
    <link rel="stylesheet" href="./login_files/login.css">
    <script type="text/javascript" src="./login_files/patternLock.min.js" charset="utf-8"></script>
</head>
<body style="height:100%">
	<style type="text/css">
		body{
			background-image:url(./image/bk.jpg);
			background-size:cover;
		}
        center{
            font-size: 20px;
        }
	</style>
<div class="login-wrapper" id="loginWrapper" style="display: block; min-height: 100px;">
    <section class="avatar-wrapper" id="avatarWrapper">
	<img src="./image/icon.png">
	</section>
    <br />
    <center>
        ${HelloMessage}
    </center>
    <style>
        .footer{
            width: 100%;
            height: 100px;
            position: fixed;
            bottom: 0;
            text-align: center;
            color:#000;
            font-size: 40px;
        }
        
    </style>
    <div class="footer">
        <div>本次登录信息</div>
        <% out.print(NetWorkUtil.getIpAddress(request)); %>
        <br/>
        <% out.print((new Date()).toLocaleString()); %> 
    </div>
</body>
</html>