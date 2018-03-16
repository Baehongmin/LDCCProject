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

</head>

<body style="margin-left: 10px;margin-right: 10px">
	<br />

	<style>

.textareac{
margin-top:70px; 
color: white; 
font-size: smaller; 
border: 0 solid black; 
background-color: transparent; 
overflow: hidden;"
margin:auto;
text-align: center;

}

.gradtext {
    background: #55ffaa;
    background: -webkit-linear-gradient(left, #56ADDF, #BCA9F5);
    background:    -moz-linear-gradient(right, #56ADDF, #BCA9F5);
    background:      -o-linear-gradient(right, #56ADDF, #BCA9F5);
    background:         linear-gradient(to right, #56ADDF, #BCA9F5);
    color: transparent;
	height: 270px;
}
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
.Boldand{
	color : black;
	font-size: 15px;
	font-weight: bold;
}
.Bottomtext{
	color : white;
	font-size: 20px;
	font-weight: bold;
	margin: auto;
	text-align: center;
	margin-top:70px;
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
		<div style="border: 1px; padding: 10px; height: 100px;">
		</div>
		</div>
			<input id='text1' type="text" class="text-box" value="2"
			visible='hidden' style='display: none' /> 
			<!-- <input id="joinOk" type="button" value="Check" /> --> 
<div class="dropdown"style="margin-top: 200px">
  <button id = "Dbutton" type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
     DEVICE_ID NAME
  </button>
  <div class="dropdown-menu">
    <a id = "link1" onclick ='getCseData("0001000200010002_robot01");changeBox()' class="dropdown-item">Robot 1ST</a>
    <a id = "link2" onclick ='getCseData("0001000200010002_robot02");changeBox2()' class="dropdown-item">Robot 2ND</a>
  </div>
  <input class="btn btn-danger" type="button" value="UWB"/>
</div>
		<!-- <input type="button" value="Go" onclick='onClickC()' /> --> 
		<!-- /.row -->
		<div class="row" style="margin-top: 10px">
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="Boldand">Bottom RFID</span> <span
							class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="gradtext">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea class = "textareac"id="messageWindow0" readonly="true" rows="1" cols="8"></textarea>
							</div>
							
							<div id="BrfidM" class="Bottomtext">Line tag</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="Boldand">Top RFID</span> <span class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="gradtext">
						
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea class = "textareac" id="messageWindow1" readonly="true" rows="1" cols="8"></textarea>
							</div>
							
							<div id="TrfidM" class="Bottomtext">Robot tag</div>
						</div>
					</div>

				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="Boldand">Line Error</span> <span class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="gradtext">
					
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<fieldset>
									<textarea class = "textareac" id="messageWindow2" readonly="true" rows="1" cols="10"></textarea>
								</fieldset>
							</div>
				
							<div id="LerrorM" class="Bottomtext">Line Error</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="Boldand">Crash Check</span> <span
							class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="gradtext">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea style="margin-top:30px;"class = "textareac" id="messageWindow3" readonly="true" rows="2" cols="20"></textarea>
							</div>
	
							<div id="CcheckM" class="Bottomtext">Crash Check
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="Boldand">전방 장애물 감지</span> <span
							class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="gradtext">
						
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center">
								<textarea style="margin-top:30px;"class = "textareac" id="messageWindow4" readonly="true" rows="2" cols="8"></textarea>
							</div>
					
							<div id="FDetecM" class="Bottomtext">Front Detection</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="Boldand">Battery</span> <span class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="gradtext">
						<div class="row" style="margin: auto; display: inline;">
							<div class="container">
								<div class="guage-holder">
									<div style="margin: auto; text-align: center">
										<textarea style="margin-top:0px;font-size: 15px"class = "textareac" id="messageWindow5" readonly="true" rows="1" cols="16"></textarea>
									</div>
									<div class="circle-mask">
										<div class="circle">
											<div class="circle-inner"></div>
										</div>
									</div>
									<div class="gauge-copy"></div>
								</div>
							</div>
							
							<div id="BetteryM" class="Bottomtext" style="margin-top: 30px">Battery</div>

						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="Boldand">AGV 출발/정지</span> <span
							class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>

					</div>
					<div class="gradtext">
						
						<div class="row" style="margin: auto; display: inline;">
							
							<div style="margin-top:70px; auto; text-align: center;">
							<div id="title">
								<div id="Onb1" style="text-align: center; display: none;"
									class="huge">주행 중</div>
							</div>
							<div id="title">
								<div id="Offb1" style="text-align: center; display: block;"
									class="huge">정지</div>
							</div>
							<div class="huge" style="margin-top:40px; text-align: center;">
								<button id="Onbutt" type="button" class="btn btn-success"
									onclick="stateButtonOn()">START</button>
								<button id="Offbutt" type="button" class="btn btn-danger"
									onclick="stateButtonOff()">STOP</button>
							</div>
							</div>

						</div>
						<div style="margin: 50px;"></div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-footer">
						<span class="Boldand">AGV PowerStatus</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					<div class="gradtext">
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
							<div style="margin: 100px;"></div>
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
	</div>

	
	<script type="text/javascript">
		//var wsUri = "ws://210.93.172.174/echo";
		//var wsUri = "http://210.93.172.174/echo";
		var wsUri = "ws://127.0.0.1:18080/echo";
		function changeBox(){
			
			document.getElementById("Dbutton").innerHTML = document.getElementById("link1").innerHTML
		}
		function changeBox2(){
			
			document.getElementById("Dbutton").innerHTML = document.getElementById("link2").innerHTML
		}
		function onClickC() {
			getCseData("0001000100010001_device002");
		}
		
		function stateButtonOn() {
			if(document.getElementById("Dbutton").innerHTML == "Robot 1ST"){
				mgmt("0001000200010002_robot01","ON");
			}else if(document.getElementById("Dbutton").innerHTML == "Robot 2ND"){
				mgmt("0001000200010002_robot02","ON");
			}
			
		}
		function stateButtonOff() {
			if(document.getElementById("Dbutton").innerHTML == "Robot 1ST"){
				mgmt("0001000200010002_robot01","OFF");
			}else if(document.getElementById("Dbutton").innerHTML == "Robot 2ND"){
				mgmt("0001000200010002_robot02","OFF");
			}
			
		}

		function onMessage(event) {
			
			
			var obj = JSON.parse(event.data);
			if(obj.name == "bottomrfid"){
				document.getElementById("messageWindow0").value = "0x"+obj.con;
				document.getElementById("BrfidM").innerHTML = obj.ct;
			}
			if(obj.name == "toprfid"){
				document.getElementById("messageWindow1").value = "0x"+obj.con;
				document.getElementById("TrfidM").innerHTML = obj.ct;
			}
			if(obj.name == "linetracer" && obj.con == "2"){
				document.getElementById("messageWindow2").value = "라인 진입";
				document.getElementById("LerrorM").innerHTML = obj.ct;
			}else if(obj.name == "linetracer" && obj.con == "1"){
				alert("라인이탈!\n"+obj.ct);
				document.getElementById("messageWindow2").value = "라인 이탈";
				document.getElementById("LerrorM").innerHTML = obj.ct;
			}
			
			if(obj.name == "casystem" && obj.con =="3"){
				document.getElementById("messageWindow3").value = "충돌 방지 시스템 완료 및 AGV 재출발";
				document.getElementById("CcheckM").innerHTML = obj.ct;
			}else if(obj.name == "casystem" && obj.con =="1"){
				alert("충돌 방지 시스템 발동!\n"+obj.ct);
				document.getElementById("messageWindow3").value = "충돌 방지를 위해 대기 상태";
				document.getElementById("CcheckM").innerHTML = obj.ct;
			}
			if(obj.name == "obstacle" && obj.con =="1"){
				alert("장애물 발견!\n"+obj.ct);
				document.getElementById("messageWindow4").value = "장애물 있음";
				document.getElementById("FDetecM").innerHTML = obj.ct;
			}else if(obj.name == "obstacle" && obj.con =="2"){
				document.getElementById("messageWindow4").value =  "장애물 없음";
				document.getElementById("FDetecM").innerHTML = obj.ct;
			}
			if(obj.name == "battery"){
			if(obj.con == "1"){
				alert("Battery LoW!\n"+obj.ct);
				document.getElementById("messageWindow5").value = "LOW";
				document.getElementById('text1').value = "15";
				$(document.getElementById('text1')).keyup();
			}else if(obj.con == "2"){
				document.getElementById("messageWindow5").value = "MIDDLE";
				document.getElementById('text1').value = "50";
				$(document.getElementById('text1')).keyup();
			}else if(obj.con == "3"){
				document.getElementById("messageWindow5").value = "HIGH";
				document.getElementById('text1').value = "85";
				$(document.getElementById('text1')).keyup();
			}
			document.getElementById("BetteryM").innerHTML = obj.ct;	
			}

			if(obj.name == "power"){
			if (document.getElementById("Offb").style.display == 'block' && obj.con == "ON") {
				document.getElementById("Offb").style.display = 'none';
				document.getElementById("Onb").style.display = 'block';
			}else if (document.getElementById("Onb").style.display == 'block' && obj.con == "OFF") {
				document.getElementById("Onb").style.display = 'none';
				document.getElementById("Offb").style.display = 'block';
			}
			
			}
			if(obj.name == "running"){
			if (document.getElementById("Offb1").style.display == 'block' && obj.con == "3") {;
				document.getElementById("Offb1").style.display = 'none';
				document.getElementById("Onb1").style.display = 'block';
			}else if (document.getElementById("Onb1").style.display == 'block' && obj.con == "1") {
				document.getElementById("Onb1").style.display = 'none';
				document.getElementById("Offb1").style.display = 'block';
			}
			}



		}
		function send_message() {

			websocket = new WebSocket(wsUri);

			websocket.onopen = function(event) {
				console.log(event);

			};

			websocket.onmessage = function(event) {

				onMessage(event)

			};

			websocket.onerror = function(event) {

				onError(event)

			};

		}
		
		function onError(event) {
			alert(event);
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
	getCseData("0001000200010002_robot01");
	send_message();
	}
	function getCseData(device){
		
		var OID = device;
		var param = {
				"device_id" : OID,
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
						document.getElementById("BrfidM").innerHTML = "0x"+data.Brfid.ct;
						document.getElementById("messageWindow1").value = data.Trfid.con;
						document.getElementById("TrfidM").innerHTML = "0x"+data.Trfid.ct;
						
						if(data.Lerror.con == "1"){
						document.getElementById("messageWindow2").value = "라인 이탈";
						document.getElementById("LerrorM").innerHTML = data.Lerror.ct;
						}else if(data.Lerror.con == "2"){
						document.getElementById("messageWindow2").value = "라인 진입";
						document.getElementById("LerrorM").innerHTML = data.Lerror.ct;
						}else{
							document.getElementById("messageWindow2").value = data.Lerror.con;
							document.getElementById("LerrorM").innerHTML = data.Lerror.ct;
						}
						
						if(data.Ccheck.con == "1"){
						document.getElementById("messageWindow3").value = "충돌 방지를 위해 대기 상태";
						document.getElementById("CcheckM").innerHTML = data.Ccheck.ct;
						}else if(data.Ccheck.con == "3"){
							document.getElementById("messageWindow3").value = "충돌 방지 시스템 완료 및 AGV 재출발";
							document.getElementById("CcheckM").innerHTML = data.Ccheck.ct;
						}else{
							document.getElementById("messageWindow3").value = data.Ccheck.con;
							document.getElementById("CcheckM").innerHTML = data.Ccheck.ct;
						}
						
						if(data.Fdetec.con == "1"){
							document.getElementById("messageWindow4").value = "장애물 있음";
							document.getElementById("FDetecM").innerHTML = data.Fdetec.ct;
						}else if(data.Fdetec.con == "2"){
							document.getElementById("messageWindow4").value =  "장애물 없음";
							document.getElementById("FDetecM").innerHTML = data.Fdetec.ct;
						}else{
							document.getElementById("messageWindow4").value = data.Fdetec.con;
							document.getElementById("FDetecM").innerHTML = data.Fdetec.ct;
						}
						
						if(data.Bettery.con == "1"){
							document.getElementById("messageWindow5").value = "LOW";
							document.getElementById('text1').value = "15";
							$(document.getElementById('text1')).keyup();
						}else if(data.Bettery.con == "2"){
							document.getElementById("messageWindow5").value = "MIDDLE";
							document.getElementById('text1').value = "50";
							$(document.getElementById('text1')).keyup();
						}else if(data.Bettery.con == "3"){
							document.getElementById("messageWindow5").value = "HIGH";
							document.getElementById('text1').value = "85";
							$(document.getElementById('text1')).keyup();
						}else{
							document.getElementById("messageWindow5").value = data.Bettery.con;
						}
						document.getElementById("BetteryM").innerHTML = data.Bettery.ct;				
						
						if (document.getElementById("Offb").style.display == 'block' && data.AGVonf.con == "ON") {
							document.getElementById("Offb").style.display = 'none';
							document.getElementById("Onb").style.display = 'block';
						}else if (document.getElementById("Onb").style.display == 'block' && data.AGVonf.con == "OFF") {;
							document.getElementById("Onb").style.display = 'none';
							document.getElementById("Offb").style.display = 'block';
						}
						
						if (document.getElementById("Offb1").style.display == 'block'&& data.AGVactiva.con == "3") {;
							document.getElementById("Offb1").style.display = 'none';
							document.getElementById("Onb1").style.display = 'block';
						}else if (document.getElementById("Onb1").style.display == 'block'&& data.AGVactiva.con == "1") {
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
	
	function mgmt(oid,cmd) {
		var param = {
			"device_id" : oid,
			"cmd" : cmd
		};

		$.ajax({
			url : "/switchOnoff",
			type : "POST",
			//dataType : 'json',
			contentType : "application/json",
			data : JSON.stringify(param),
			processData: false,
			success : function(data) {
				console.log(data);
					
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

</body>

</html>

