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

.Ohno span {
	display: block;
}

.Ohno {
	width: 400px;
	height: 10px;
	margin: auto;
	text-align: center;
	color: #F5C4B6;
	line-height: 0.85;
	font-family: Tahoma, Geneva, sans-serif;
	font-weight: bold;
}

.Ohno span:nth-child(1) {
	font-size: 100px;
}

.Ohno span:nth-child(2) {
	font-family: 'Pacifico', cursive;
	font-weight: 400;
	font-size: 40px;
	position: relative;
	z-index: 1;
	text-shadow: 5px 0 0 #F94F6A, -5px 0 0 #F94F6A, 0 5px 0 #F94F6A, 0 -5px
		0 #F94F6A, 4px 4px #F94F6A, -4px -4px 0 #F94F6A, 4px -4px 0 #F94F6A,
		-4px 4px 0 #F94F6A;
	-webkit-transform: rotate(-3deg);
	transform: rotate(-3deg);
	-webkit-transform-origin: 0 0;
	transform-origin: 0 0;
	color: #fff;
	margin-top: -1px;
}

#loding {
	margin: auto;
	width: 20px;
	height: 20px;
	border: 5px solid #f3f3f3;
	border-top: 5px solid #3498db;
	border-radius: 50%;
	animation: spin 2s linear infinite;
	background-color: #fff;
	text-align: center;
	line-height: 0px;
}

@keyframes spin { 
0% {transform: rotate(0deg);} 
100% {transform: rotate(360deg);}
}

</style>
	<div class="Ohno">
		<span>Canon</span> <span>대시 보드</span>
		<!-- <h1 class="page-header">Canon Dashboard</h1> -->
	</div>
	<div id="wrapper">
		<!-- /.col-lg-12 -->

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
				<input id='text1' type="text" class="text-box" value="2"
			visible='hidden' style='display: none' /> <input
			onclick="send_message()" value="Send" type="button"> <input
			type="submit" value="Stop" onclick="doClose()" /> <input id="joinOk"
			type="button" value="Check" /> 
		<input type="text" value="OID" visible='hidden'/>
		<input type="text" value="KEY" visible='hidden'/>
		<input
			type="button" value="Go" onclick='onClickC()' /> 
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-footer">
						<span class="pull-left">Bottom RFID</span> <span
							class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div style="margin: 70px;"></div>
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea id="messageWindow0" readonly="true"
									style="text-align: center;color: white; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="1" cols="8"></textarea>
							</div>
							<div style="margin: 70px;"></div>
							<div id="BrfidM" style="margin: auto; text-align: center;">Line tag</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-footer">
						<span class="pull-left">Top RFID</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div style="margin: 70px;"></div>
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea id="messageWindow1" readonly="true"
									style="text-align: center; color: white; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="1" cols="8"></textarea>
							</div>
							<div style="margin: 70px;"></div>
							<div id="TrfidM" style="margin: auto; text-align: center;">Robot tag</div>
						</div>
					</div>

				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="pull-left">Line Error</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div style="margin: 70px;"></div>
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<fieldset>
									<textarea id="messageWindow2" readonly="true"
										style="text-align: center;color: white; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
										rows="1" cols="8"></textarea>

								</fieldset>
							</div>
							<div style="margin: 70px;"></div>
							<div id="LerrorM"style="margin: auto; text-align: center;">Line Error</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="pull-left">Crash Check</span> <span
							class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div style="margin: 45px;"></div>
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea id="messageWindow3" readonly="true"
									style="color: white; text-align: center; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="2" cols="16"></textarea>
							</div>
							<div style="margin: 45px;"></div>
							<div id="CcheckM" style="margin: auto; text-align: center;">Crash Check
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="pull-left">전방 장애물 감지</span> <span
							class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div style="margin: 70px;"></div>
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center">
								<textarea id="messageWindow4" readonly="true"
									style="text-align: center;color: white; border: 0 solid black; font-size: smaller; background-color: transparent; overflow: hidden;"
									rows="1" cols="8"></textarea>
							</div>
							<div style="margin: 70px;"></div>
							<div id="FDetecM" style="margin: auto; text-align: center">Front Detection</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="pull-left">Bettery</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="container">
								<div class="guage-holder">
									<div style="margin: auto; text-align: center">
										<textarea id="messageWindow5" readonly="true"
											style="color: white; text-align: center; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
											rows="1" cols="16"></textarea>
									</div>
									<div class="circle-mask">
										<div class="circle">
											<div class="circle-inner"></div>
										</div>
									</div>
									<div class="gauge-copy"></div>
								</div>
							</div>
							<div style="margin: 30px;"></div>
							<div id="BetteryM" style="margin: auto; text-align: center;">Bettery</div>

						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-footer">
						<span class="pull-left">AGV 출발/정지</span> <span
							class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>

					</div>
					<div class="panel-heading">
						<div style="margin: 50px;"></div>
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<button id="Onbutt" type="button" class="btn btn-success"
									onclick="stateButtonOn()">START</button>
								<button id="Offbutt" type="button" class="btn btn-danger"
									onclick="stateButtonOff()">STOP</button>
							</div>
							<div style="margin: auto; text-align: center;">
								<div class="huge">AGV</div>
							</div>

						</div>
						<div style="margin: 50px;"></div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-footer">
						<span class="pull-left">AGV ON/OFF</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
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
							<div style="margin: 80px;"></div>
							<div id="title">
								<div id="Onb" style="text-align: center; display: none;"
									class="huge">ON</div>
							</div>
							<div id="title">
								<div id="Offb" style="text-align: center; display: block;"
									class="huge">OFF</div>
							</div>
							<div style="margin: 80px;"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-footer">
						<span class="pull-left">AGV Activating</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
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
							<div style="margin: 80px;"></div>
							<div id="title">
								<div id="Onb1" style="text-align: center; display: none;"
									class="huge">ON</div>
							</div>
							<div id="title">
								<div id="Offb1" style="text-align: center; display: block;"
									class="huge">OFF</div>
							</div>
							<div style="margin: 80px;"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- /#page-wrapper -->

		</div>

		<div class="col-lg-4"></div>
		<!-- /#wrapper -->
	</div>
	

	
	<script type="text/javascript">
		var wsUri = "ws://127.0.0.1:18080/echo";

		function onClickC() {
			getCseData("0001000100010001_device002");
		}
		
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
			
			
			var obj = JSON.parse(event.data);
			if(obj.name == "temperature"){
				document.getElementById("messageWindow0").value = obj.con;
				document.getElementById("BrfidM").innerHTML = obj.ct;
			}
			if(obj.name == "temperature"){
				document.getElementById("messageWindow1").value = obj.con;
				document.getElementById("TrfidM").innerHTML = obj.ct;
			}
			
				document.getElementById("messageWindow2").value = obj.con;
				document.getElementById("LerrorM").innerHTML = obj.ct;
			
			
				document.getElementById("messageWindow3").value = obj.con;
				document.getElementById("CcheckM").innerHTML = obj.ct;
			
			
				document.getElementById("messageWindow4").value = obj.con;
				document.getElementById("FDetecM").innerHTML = obj.ct;
			
			
				document.getElementById('text1').value = obj.con;
				$(document.getElementById('text1')).keyup();
				if(obj.con<20){
					document.getElementById("messageWindow5").value = "LOW";
				}else if(obj.con<80){
					document.getElementById("messageWindow5").value = "MIDDLE";
				}else{
					document.getElementById("messageWindow5").value = "HIGH";
				}
				document.getElementById("BetteryM").innerHTML = obj.ct;
			
			
			if (document.getElementById("Offb").style.display == 'block' && obj.con == "23") {
				document.getElementById("Offb").style.display = 'none';
				document.getElementById("Onb").style.display = 'block';
			}else if (document.getElementById("Onb").style.display == 'block' && obj.con == "23") {
				document.getElementById("Onb").style.display = 'none';
				document.getElementById("Offb").style.display = 'block';
			}
			if (document.getElementById("Offb1").style.display == 'block'&& obj.con == "23") {
				document.getElementById("Offb1").style.display = 'none';
				document.getElementById("Onb1").style.display = 'block';
			}else if (document.getElementById("Onb1").style.display == 'block'&& obj.con == "23") {
				document.getElementById("Onb1").style.display = 'none';
				document.getElementById("Offb1").style.display = 'block';
			}
			
			//document.getElementById("messageWindow0").value = obj.con;
			//text[0].value = event.data + "\n";


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

	<script type="text/javascript">
	window.onload = function () {
	getCseData("0001000100010001_device002");
	send_message();
	}
	function getCseData(device_id){
		//var device_id = "";
		var param = {
				device_id : "0001000100010001_device002"
			};

			$.ajax({
				url : "/onem2m/data",
				type : "POST",
				//dataType : 'json',
				contentType : "application/json",
				data : JSON.stringify(param),
				processData: false,
				success : function(data) {
					console.log(data);
						document.getElementById("messageWindow0").value = data.Brfid.con;
						document.getElementById("BrfidM").innerHTML = data.Brfid.ct;
						document.getElementById("messageWindow1").value = data.Trfid.con;
						document.getElementById("TrfidM").innerHTML = data.Trfid.ct;
						document.getElementById("messageWindow2").value = data.Lerror.con;
						document.getElementById("LerrorM").innerHTML = data.Lerror.ct;
						document.getElementById("messageWindow3").value = data.Ccheck.con;
						document.getElementById("CcheckM").innerHTML = data.Ccheck.ct;
						document.getElementById("messageWindow4").value = data.Fdetec.con;
						document.getElementById("FDetecM").innerHTML = data.Fdetec.ct;
						
						document.getElementById('text1').value = data.Bettery.con;
						$(document.getElementById('text1')).keyup();
						if(data.Bettery.con<20){
							document.getElementById("messageWindow5").value = "LOW";
						}else if(data.Bettery.con<80){
							document.getElementById("messageWindow5").value = "MIDDLE";
						}else{
							document.getElementById("messageWindow5").value = "HIGH";
						}
						document.getElementById("BetteryM").innerHTML = data.Bettery.ct;				
						
						if (document.getElementById("Offb").style.display == 'block' && data.AGVonf.con == "23") {
							document.getElementById("Offb").style.display = 'none';
							document.getElementById("Onb").style.display = 'block';
						}else if (document.getElementById("Onb").style.display == 'block' && data.AGVonf.con == "23") {
							document.getElementById("Onb").style.display = 'none';
							document.getElementById("Offb").style.display = 'block';
						}
						if (document.getElementById("Offb1").style.display == 'block'&& data.AGVactiva.con == "23") {
							document.getElementById("Offb1").style.display = 'none';
							document.getElementById("Onb1").style.display = 'block';
						}else if (document.getElementById("Onb1").style.display == 'block'&& data.AGVactiva.con == "23") {
							document.getElementById("Onb1").style.display = 'none';
							document.getElementById("Offb1").style.display = 'block';
						}
						
				},
				error : function(data) {
					console.log("s : " + data);
					//alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

				}

			});
	}
	/*
		var device_id = "";
		$("#joinOk").bind("click", function() {
			var param = {
				device_id : "S0001000100010001_device002"
			};

			$.ajax({
				url : "/onem2m/data",
				type : "POST",
				//dataType : 'json',
				contentType : "application/json",
				data : JSON.stringify(param),
				processData: false,
				success : function(data) {
					console.log(data);
						document.getElementById("messageWindow0").value = data.Brfid.con;
						if(data.Brfid.con=="23"){
							alert(data.Brfid.name+"   "+data.Brfid.ct);
						}
						document.getElementById("BrfidM").innerHTML = data.Brfid.ct;
						document.getElementById("messageWindow1").value = data.Trfid.con;
						document.getElementById("TrfidM").innerHTML = data.Trfid.ct;
						document.getElementById("messageWindow2").value = data.Lerror.con;
						document.getElementById("LerrorM").innerHTML = data.Lerror.ct;
						document.getElementById("messageWindow3").value = data.Ccheck.con;
						document.getElementById("CcheckM").innerHTML = data.Ccheck.ct;
						document.getElementById("messageWindow4").value = data.Fdetec.con;
						document.getElementById("FDetecM").innerHTML = data.Fdetec.ct;
						
						document.getElementById('text1').value = data.Bettery.con;
						$(document.getElementById('text1')).keyup();
						if(data.Bettery.con<20){
							document.getElementById("messageWindow5").value = "LOW";
						}else if(data.Bettery.con<80){
							document.getElementById("messageWindow5").value = "MIDDLE";
						}else{
							document.getElementById("messageWindow5").value = "HIGH";
						}
						document.getElementById("BetteryM").innerHTML = data.Bettery.ct;				
						
						if (document.getElementById("Offb").style.display == 'block' && data.AGVonf.con == "23") {
							document.getElementById("Offb").style.display = 'none';
							document.getElementById("Onb").style.display = 'block';
						}else if (document.getElementById("Onb").style.display == 'block' && data.AGVonf.con == "23") {
							document.getElementById("Onb").style.display = 'none';
							document.getElementById("Offb").style.display = 'block';
						}
						if (document.getElementById("Offb1").style.display == 'block'&& data.AGVactiva.con == "23") {
							document.getElementById("Offb1").style.display = 'none';
							document.getElementById("Onb1").style.display = 'block';
						}else if (document.getElementById("Onb1").style.display == 'block'&& data.AGVactiva.con == "23") {
							document.getElementById("Onb1").style.display = 'none';
							document.getElementById("Offb1").style.display = 'block';
						}
						
				},
				error : function(data) {
					console.log("s : " + data);
					//alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

				}

			});
			
		});
		*/
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

