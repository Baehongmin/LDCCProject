<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Claude Admin - DashBoard Theme</title>

<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/resources/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/morrisjs/morris.css"
	rel="stylesheet">

<!-- button CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Montserrat:200,300,400,600,700'>
<link rel='stylesheet prefetch'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css'>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<br />
	<!-- 
	<input onclick="send_message()" value="Send" type="button">
	<input type="submit" value="Stop" onclick="doClose()" />
	<div id="output"></div>

	<button type="button" class="btn btn-default">come</button>
	<div class="col-sm-5">
		<button type="button" class="btn btn-xs btn-toggle"
			data-toggle="button" aria-pressed="false" autocomplete="off">
			<div class="handle"></div>
		</button>
	</div>
 -->


	<style>
#title {
	text-align: center;
	color: #fff;
	box-shadow: none;
	text-shadow: rgb(255, 255, 255) 0px 0px 10px, rgb(255, 255, 255) 0px 0px
		20px, rgb(255, 255, 255) 0px 0px 30px, rgb(0, 255, 255) 0px 0px 40px,
		rgb(0, 255, 255) 0px 0px 70px, rgb(0, 255, 255) 0px 0px 80px,
		rgb(0, 255, 255) 0px 0px 100px;
	transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
	-webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
	-webkit-transform: none;
	transform: none;
	-webkit-transform-origin: 50% 50% 0px;
	transform-origin: 50% 50% 0px;
}
</style>

	<div id="wrapper">

		<div class="row" style="background-color: black;">
			<div class="col-lg-12" align="Center">
				<div id="title">
					<h1>Canon Dashboard</h1>
					<!-- <h1 class="page-header">Canon Dashboard</h1> -->
				</div>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- 
		<style>
		
.video-container {
	margin: 0;
	padding-bottom: 75%;
	max-width: 100%;
	height: 0;
	position: relative;
	overflow: hidden;
}

.video-container iframe, .video-container object, .video-container embed
	{
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
}
</style>
		<div class="video-container"
			style="border: 1px; padding: 10px; height: 500px;">

			<iframe width="100" height="100" src="http://www.lotte.net"></iframe>
		</div>

-->
		<div class="row">
			<div style="border: 1px; padding: 10px; height: 300px;">
				<h1 class="page-header"></h1>
			</div>
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-footer">
						<span class="pull-left">Bottom RFID</span> <span
							class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea id="messageWindow0" readonly="true"
									style="color: white; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="1" cols="8"></textarea>
							</div>
							<div style="margin: auto; text-align: center;">
								<div class="huge">Bottom RFID</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-green">
					<div class="panel-footer">
						<span class="pull-left">Top RFID</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea id="messageWindow1" readonly="true"
									style="text-align: center; color: white; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="1" cols="8"></textarea>
							</div>
							<div style="margin: auto; text-align: center;">
								<div class="huge">Top RFID</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="pull-left">Line Error</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<fieldset>
									<textarea id="messageWindow2" readonly="true"
										style="color: white; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
										rows="1" cols="8"></textarea>

								</fieldset>
							</div>
							<div style="margin: auto; text-align: center;">
								<div class="huge">Line Error</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-yellow">
					<div class="panel-footer">
						<span class="pull-left">Crash Check</span> <span
							class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea id="messageWindow3" readonly="true"
									style="color: white; text-align: center; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="1" cols="16"></textarea>
							</div>
							<div style="margin: auto; text-align: center;">
								<div class="huge">Crash Check</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="pull-left">Front Detection</span> <span
							class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center">
								<textarea id="messageWindow4" readonly="true"
									style="color: white; border: 0 solid black; font-size: smaller; background-color: transparent; overflow: hidden;"
									rows="1" cols="8"></textarea>
							</div>
							<div style="margin: auto; text-align: center">
								<div class="huge">Front Detection</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-yellow">
					<div class="panel-footer">
						<span class="pull-left">Bettery</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<!-- 
							<div class="huge" style="margin: auto; text-align: center">
								<textarea id="messageWindow5" readonly="true"
									style="color: white; text-align: center; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="1" cols="16"></textarea>
							</div>
 -->
							<div class="container">
								<div class="guage-holder">
									<div class="circle-mask">
										<div class="circle">
											<div class="circle-inner"></div>
										</div>
									</div>
									<div class="gauge-copy"></div>
								</div>
							</div>
							<div style="margin: auto; text-align: center;">
								<div class="huge">Bettery</div>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-6">
				<div class="panel panel-green">
					<div class="panel-footer">
						<span class="pull-left">Action Control</span> <span
							class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<button id="Onbutt" type="button" class="btn btn-primary"
									onclick="stateButtonOn()">On</button>
								<button id="Offbutt" type="button" class="btn btn-primary"
									onclick="stateButtonOff()">Off</button>
							</div>
							<div style="margin: auto; text-align: center;">
								<div class="huge">Action Control</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-footer">
						<span class="pull-left">AGV ON/OFF</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div class="row"
							style="margin: auto; display: inline; text-align: center;">
							<!-- 
							<div class="huge" style="margin: auto; text-align: center">
								<button id="greenbutton" type="button"
									class="btn btn-lg btn-secondary btn-toggle active"
									data-toggle="button" aria-pressed="true" autocomplete="off"
									style="align-items: center" disabled="disable">
									<div class="handle"></div>
								</button>
							</div>
							 -->
							<div id="title">
								<div id="Onb" style="text-align: center; display: none;"
									class="huge">ON</div>
							</div>
							<div id="title">
								<div id="Offb" style="text-align: center; display: block;"
									class="huge">OFF</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /#page-wrapper -->

		</div>

		<div class="col-lg-4"></div>
		<!-- /#wrapper -->



		<input id='text' type="text" class="text-box" value="2"
			visible='hidden' style='display: none' /> <input
			onclick="send_message()" value="Send" type="button"> <input
			type="submit" value="Stop" onclick="doClose()" /> <input
			type="button" value="Go" onclick='onClickC()' /> <input id="joinOk"
			type="button" value="Check" />

	</div>
	<script type="text/javascript">
		var text = new Array();
		for (i = 0; i < 6; i++) {
			text[i] = document.getElementById("messageWindow" + i);
		}
		var wsUri = "ws://127.0.0.1:18080/echo";
		var textarea = document.getElementById("messageWindow");
		//var textarea1 = document.getElementById("messageWindow1");
		var textarea2 = document.getElementById("messageWindow2");

		function onClickC() {
			document.getElementById('text').value = '50';
			$(document.getElementById('text')).keyup();
		}
		//$(document.getElementById('greenbutton')).attr('disabled', false);
		//$(document.getElementById('greenbutton')).click();
		//$(document.getElementById('greenbutton')).attr('disabled', true);		
		function stateButtonOn() {
			if (document.getElementById("Offb").style.display == 'block') {
				document.getElementById("Offb").style.display = 'none';
				document.getElementById("Onb").style.display = 'block';
			}
		}
		function stateButtonOff() {
			if (document.getElementById("Onb").style.display == 'block') {
				document.getElementById("Onb").style.display = 'none';
				document.getElementById("Offb").style.display = 'block';
			}
		}

		function onMessage(event) {
			//textvalue clear checek
			//for(i=0; i<7; i++){
			//	text[i] = "";
			//}
			//textarea.value += "Message Received: " + event.data + "\n";
			//text[0].value = "도착지A " + event.data + "\n";
			text[0].value = event.data;
			text[1].value = "출발" + event.data + "\n";
			text[2].value = "라인이탈" + event.data + "\n";
			text[3].value = "충돌방지를 위해 우선 작동 중" + event.data + "\n";
			text[4].value = "전방장애물" + event.data + "\n";
			//text[5].value = "AGV 동작제한" + event.data + "\n";
			//text[6].value = "전원" + event.data + "\n";

		}
		function send_message() {

			websocket = new WebSocket(wsUri);

			websocket.onopen = function(event) {

				onOpen(event)

			};

			websocket.onmessage = function(event) {

				onMessage(event)

			};

			websocket.onerror = function(event) {

				onError(event)

			};

		}
		/*
		function onMessage(event) {
			//textarea.value += "상대 : " + event.data + "\n";

		}
		 */

		function onOpen(event) {
			textarea.value += "connect\n";
		}
		function onError(event) {
			alert(event.data);
		}

		function doClose() {

			websocket.close();
			for (i = 0; i < 6; i++) {
				text[i].value = "";
			}
		}
	</script>

	<!-- jQuery 
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
		-->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/raphael/raphael.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/morrisjs/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/data/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/dist/js/sb-admin-2.js"></script>


	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'>
		jQuery.noConflict();
	</script>

	<script src="../../resources/js/index.js"></script>
	<!-- Ajax Script
	<script type="text/javascript">
	// Request Method :: GET 
jQuery.ajax({
 type: “GET”, 
 dataType: “json”,
 url: “/onem2m/data”,
 data: “id=”+id.val()+”&password=”+password.val()+”&name=”+name.val(),
 success: reqGetResponse,
 error: errorNoti
});
 
function reqGetResponse(data) {
 if(data.result) {
  alert(“Good Job!!”);
 }
}
 
// Request Method :: POST 
jQuery.ajax({
 type: “POST”, 
 dataType: “json”,
 url: “http://openapi.xxx.com/path/postapi.do”,
 data: {id:id.val(), password:password.val(). name:name.val() },
 success: reqPostResponse,
 error: errorNoti
});
 
function reqPostResponse(data) {
 if(data.result) {
  alert(“Good Job!!”);
 }
}
 
function errorNoti() {
 alert(“Request Fail!!”);
}
</script>
-->
	<script type="text/javascript">
		var device_id = "";
		$("#joinOk").bind("click", function() {
			var param = {
				device_id : "S0001000100010001_device002"
			};

			$.ajax({
				url : "/onem2m/data",
				type : "POST",
				//dataType : 'json',
				//contentType : "application/json",
				data : param,
				success : function(data) {
					console.log(data);
				},
				error : function(data) {
					console.log("s : " + data);
					//alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

				}

			});
		});
	</script>
	<!-- 
	POST /~/charlot/base/S0001000100010001_device002/temperature HTTP/1.1
	Host: 127.0.0.1:8080 Accept: application/json X-M2M-RI:
	1520472953_11_3ad439ed-f5e0-45e3-b3c9-237d878b1257 X-M2M-Origin:
	/S0001000100010001_device002 Content-Type:
	application/vnd.onem2m-res+json;ty=4 Authorization: Bearer
	b6f05af0-9850-081a-0def-4ebb4c465295 Cache-Control: no-cache
	Postman-Token: 8b2d1fd8-ff7f-495e-9af5-d03885bc1752 { "m2m:cin": {
	"cnf": "text", "con": "15" } }
 -->
</body>

</html>

