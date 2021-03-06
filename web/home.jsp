<%-- 
    Document   : home
    Created on : 2018-9-17, 20:02:07
    Author     : aodacat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>墨影</title>
    <script type="text/javascript" src="./bin/jquery.js"></script>
    <script type="text/javascript" charset="utf-8" async src="./my_files/my.js"></script>
        
	<meta name="viewport" content="width=device-width, initial-scale=0.5">
    <!-- Bootstrap 核心文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!--script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script-->
	<link href="./my_files/my.css" rel="stylesheet">	
</head>
<body style="overflow:hidden;">
	<div class="LeftBar" id="LeftBar">	
        <div class="column" id="LeftBar_row">			
			<div style="background-image:url(./image/barbk.jpg);
						background-size:cover;
						float:top;overflow:hidden;
						border-bottom: 1px solid rgba(26,26,26,.06);
						box-shadow: 0 1px 3px 0 rgba(23,81,153,.05);
						min-width: 100%;
						height:30%;">
				<div style="width:100%;height:100%;position:relative;bottom:-50%;left:10%">
					<img src="./image/1.png" class="img-responsive img-circle" alt="Cinque Terre"  style="width:36%;border-color:#efef35">
				</div>
				<div style="width:100%;height:100%;position:relative;bottom:-50%;left:10%">
					<img src="" class="img-responsive img-circle img-headicon" alt="Cinque Terre"  style="width:45%;background-color:#efef35">
				</div>
			</div>			
			<div>
				<button type="button" class="btn btn-lg btn-block" onclick="About()" style="text-align:left;">&#160&#160关于我们</button>
				<button type="button" class="btn btn-lg btn-block">&#160&#160收藏</button>
				<button type="button" class="btn btn-lg btn-block" onclick="javascript:top.location='./article.html';" value="原窗口打开">&#160&#160撰写文章</button>
				<button type="button" class="btn btn-lg btn-block" onclick="Quit()">&#160&#160退出</button>
				<div class="blank-area"></div>
			</div>
			<div class="BottomBar" style="border:0px;float:bottom;">
				<div class="BottomBar-inner" style="border:0px;">
				
					<div id="BottomBarBtn_1" style="align:center;width:33%;">
						<button class="btn btn-block height"><span class="glyphicon glyphicon-cog"></span>设置</button>    
					</div>
					<div id="BottomBarBtn_2" style="align:center;width:34%;">
						<button class="btn btn-block height"><span class="glyphicon glyphicon-share"></span>分享</button>
					</div>
					<div id="BottomBarBtn_3" style="align:center;width:33%;">
						<button class="btn btn-block height"><span class="glyphicon glyphicon-map-marker"></span>定位</button>
					</div>
				</div>
			</div>
		</div>
    </div>
    <div class="MainPage" id="MainPage">
        <div class="TopBar">
            <div class="TopBar-inner">
				<div id="btnShowLeftBar">
					<button class="glyphicon glyphicon-list" style="font-size:45px;left:-120%;"></button>
				</div>
				<p style="font-family: 华文行楷;font-size: 80px;">墨影</p>
				<div id="btnShowSearch">	
					<button class="glyphicon glyphicon-search" style="font-size:45px;left:120%"></button>
				</div>
            </div>
        </div>
        
        <iframe class="ContentPage" src="./pContent" frameborder="0" marginheight="0" marginwidth="0" scrolling="yes" id="ContentPage"></iframe>
        
        <div class="BottomBar">
            <div class="BottomBar-inner">
            <div id="BottomBarBtn_1" style="align:center;width:33%;">
				<button class="btn btn-block height"><span class="glyphicon glyphicon-home"></span></button>    
            </div>
            <div id="BottomBarBtn_2" style="align:center;width:34%;">
				<button class="btn btn-block height"><span class="glyphicon glyphicon-camera"></span></button>
            </div>
            <div id="BottomBarBtn_3" style="align:center;width:33%;">
				<button class="btn btn-block height"><span class="glyphicon glyphicon-user"></span></button>
            </div>
            </div>
        </div>
    </div>
</body>
</html>
