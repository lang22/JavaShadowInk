<%-- 
    Document   : LoginSuccessful
    Created on : 2018-9-17, 11:24:16
    Author     : LittleDva
--%>

<%@page import="toolsing.NetWorkUtil"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>å¢¨å½±</title>
    <script type="text/javascript" src="../bin/jquery.js"></script>
    <script type="text/javascript" charset="utf-8" async src="../my_files/my.js"></script>       
	<meta name="viewport" content="width=device-width, initial-scale=0.5">
    <!-- Bootstrap æ ¸å¿æä»¶ -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>	
	<link href="../my_files/my.css" rel="stylesheet">
</head>
<body>
	<div class="MainPage-TopBar" id="MainPage-TopBar">
            <div class="imgContainer">           
                    <img src="../image/bk.jpg" style="height:100%;width:100%;"> 
            </div>
	</div>
	<div class="ArticleBar">
        <div class="left_ArticleBar">
            <div class="left_imgContainer">           
                <img src="{{article.picurl}}" style="height:100%;width:100%;"> 
            </div>
        </div>
        <div class="right_ArticleBar">
            <div class="imgContainer" style=""> 
                <br/>
                <span style="font-size:35px;">{{article.title}}</span>
                <br/><br/><br/><br/><br/><br/><br/>
                <p class="glyphicon glyphicon-time" style="font-size:25px;float:right;">{{article.time}}</p>
            </div>
        </div>
	</div>
</body>
</html>
