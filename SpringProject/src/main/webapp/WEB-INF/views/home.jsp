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



<!-- button CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<link rel='stylesheet prefetch'
	href='https://fonts.googleapis.com/css?family=Montserrat:200,300,400,600,700'>
<link rel='stylesheet prefetch'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css'>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
	
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
</head>

<body style="background-color:#e9ecef;  margin-left: 1%;margin-right: 1%">
	<br />

	<style>

.textareac{
margin-top:40px; 
color: black; 
font-size: 40px;
font-weight:bold;
border: 0 solid black; 
background-color: transparent; 
overflow: hidden;"
margin:auto;
text-align: center;
resize: none;
}
.marginx{
margin-top:5px;
}
.gradtext {
    background: #55ffaa;
    background: -webkit-linear-gradient(left, #FFFFFF, #FFFFFF);
    background:    -moz-linear-gradient(right, #FFFFFF, #FFFFFF);
    background:      -o-linear-gradient(right, #FFFFFF, #FFFFFF);
    background:         linear-gradient(to right, #FFFFFF, #FFFFFF);
    color: transparent;
	height: 270px;
}

.gradtextchange {
    background: #55ffaa;
    background: -webkit-linear-gradient(left, #FA2222, #F39A9A);
    background:    -moz-linear-gradient(right, #FA2222, #F39A9A);
    background:      -o-linear-gradient(right, #FA2222, #F39A9A);
    background:         linear-gradient(to right, #FA2222, #F39A9A);
    color: transparent;
	height: 270px;
}
#title {
	text-align: center;
	color: #000;
	box-shadow: none;
	font-size:50px;
	font-weight:bold;
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
	width: 1000px;
	height: 10px;
	margin: auto;
	text-align: center;
	color: #000000;
	line-height: 0.85;
	font-family: Tahoma, Geneva, sans-serif;
	font-weight: bold;
}

.Ohno span:nth-child(1) {
	font-size: 100px;
}


.Ohno span:nth-child(2) {
	font-family: 'Nanum Gothic', sans-serif;
	font-weight: 400;
	font-size: 80px;
	position: relative;
	z-index: 1;

	transform-origin: 0 0;
	color: #000;
	margin-top: 30px;
}

#loding {
	margin: auto;
	width: 40px;
	height: 40px;
	border: 10px solid #f3f3f3;
	border-top: 10px solid #3498db;
	border-radius: 50%;
	animation: spin 2s linear infinite;
	background-color: #fff;
	text-align: center;
	line-height: 0px;
	margin-top:5px;
}

@keyframes spin { 
0% {transform: rotate(0deg);} 
100% {transform: rotate(360deg);}
}
.Boldand{
	color : black;
	font-size: 30px;
	font-weight: bold;
	
}
.Bottomtext{
	color : black;
	font-size: 20px;
	font-weight: bold;
	margin: auto;
	text-align: center;
	margin-top:70px;
}

</style>

    

	<div class="Ohno"style="width:80%;margin-top: 50px">
	
		<span>AGV 로봇관제</span> <span id="titlesub">1번 로봇</span>
		<!-- <h1 class="page-header">Canon Dashboard</h1> -->
	</div>
<div>
<img src='/resources/lotte.png' style="width:8%; vertical-align: middle" />
<img src='/resources/cannon.png' style="width:15%; float:right;" />
</div>
	<div id="wrapper">
		<!-- /.col-lg-12 -->

		<div class="row">
		
		</div>
			<input id='text1' type="text" class="text-box" value="2"
			visible='hidden' style='display: none' /> 
			<!-- <input id="joinOk" type="button" value="Check" /> --> 
<div class="dropdown"style="margin-top: 40px">
  <button id = "Dbutton" type="button" class="btn btn-success dropdown-toggle btn-lg" data-toggle="dropdown" value="1">
     DEVICE_ID NAME
  </button>
  <div class="dropdown-menu">
    <a id = "link1" onclick ='getCseData("0001000200010002_robot01");changeBox()' class="dropdown-item">1번 로봇</a>
    <a id = "link2" onclick ='getCseData("0001000200010002_robot02");changeBox2()' class="dropdown-item">2번 로봇</a>
  </div>
  <input class="btn btn-success btn-lg" type="button" value="UWB"/>
  <div id= "nowdate" class ='right-box' style="float: right;font-size: 30px;color: black;font-weight: bold;">
  
  </div>
</div>
		<!-- <input type="button" value="Go" onclick='onClickC()' /> --> 
		<!-- /.row -->
		<div class="row" style="margin-top: 10px">
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-default">
					<div class="panel-footer" style="background-color: #A3CCA3;height: 80px">
						<div class=marginx>
						<span class="Boldand">Bottom RFID</span> <span
							class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
						</div>
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
				<div class="panel panel-default">
					<div class="panel-footer" style="background-color: #A3CCA3;height: 80px">
					<div class=marginx>
						<span class="Boldand">Top RFID</span> <span class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
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
				<div class="panel panel-default">
					<div class="panel-footer" style="background-color: #A3CCA3;height: 80px">
					<div class=marginx>
						<span class="Boldand">Line Error</span> <span class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					</div>
					<div id="lview" class="gradtext">
					
						<div class="row" style="margin-top: 20px;margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<fieldset style="margin-top: 10px">
									<textarea class = "textareac" id="messageWindow2" readonly="true" rows="1" cols="10"></textarea>
								</fieldset>
							</div>
				
							<div id="LerrorM" class="Bottomtext">Line Error</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-default">
					<div class="panel-footer" style="background-color: #A3CCA3;height: 80px">
					<div class=marginx>
						<span class="Boldand">Crash Check</span> <span
							class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					</div>
					<div id="cview" class="gradtext">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea style="margin-top:30px;"class = "textareac" id="messageWindow3" readonly="true" rows="2" cols="16"></textarea>
							</div>
	
							<div id="CcheckM" class="Bottomtext" style="margin-top:40px;">Crash Check
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-default">
					<div class="panel-footer" style="background-color: #A3CCA3;height: 80px">
					<div class=marginx>
						<span class="Boldand">전방 장애물 감지</span> <span
							class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					</div>
					<div id="fview" class="gradtext">
						
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center">
								<textarea style="margin-top:50px;"class = "textareac" id="messageWindow4" readonly="true" rows="1" cols="10"></textarea>
							</div>
					
							<div id="FDetecM" class="Bottomtext"style="margin-top:70px;">Front Detection</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-default">
					<div class="panel-footer" style="background-color: #A3CCA3;height: 80px">
					<div class=marginx>
						<span class="Boldand">Battery</span> <span class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					</div>
					<div id="bview" class="gradtext">
					
						<div class="row" style="margin: auto; display: inline;">
							<div class="container">
							
								<div class="guage-holder" style="margin-top: 30px">
									
										<textarea style="font-size: 30px;margin-top: 0px;"class = "textareac" id="messageWindow5" readonly="true" rows="1" cols="8"></textarea>
									
									<div class="circle-mask">
										<div class="circle">
											<div class="circle-inner"></div>
										</div>
									</div>
									<div class="gauge-copy"></div>
								</div>
							</div>
							
							<div id="BatteryM" class="Bottomtext" style="margin-top: 10px">Battery</div>

						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-6">
				<div class="panel panel-default">
					<div class="panel-footer" style="background-color: #A3CCA3;height: 80px">
					<div class=marginx>
						<span class="Boldand">AGV 출발/정지</span> <span
							class="pull-right"></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
</div>
					</div>
					<div class="gradtext">
						
						<div class="row" style="margin: auto; display: inline;">
							
							<div style="margin-top:50px; auto; text-align: center;">
							<div id="title">
								<div id="Onb1" style="text-align: center; display: none;"
									class="huge">주행 중</div>
							</div>
							<div id="title">
								<div id="Offb1" style="text-align: center; display: block;"
									class="huge">정지</div>
							</div>
							<div class="huge" style="margin-top:40px; text-align: center;">
								<button id="Onbutt" type="button" class="btn btn-success btn-lg"
									onclick="stateButtonOn()">START</button>
								<button id="Offbutt" type="button" class="btn btn-danger btn-lg"
									onclick="stateButtonOff()">STOP</button>
							</div>
							</div>

						</div>
						<div style="margin: 50px;"></div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-default">
					<div class="panel-footer" style="background-color: #A3CCA3;height: 80px">
					<div class=marginx>
						<span class="Boldand">AGV PowerStatus</span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div id="loding" style="float: right;"></div>
						<div class="clearfix"></div>
					</div>
					</div>
					<div class="gradtext">
						<div class="row"
							style="margin: auto; display: inline; text-align: center;">
							
							<div style="margin: 60px;"></div>
							<div id="title">
								<div id="Onb" style="text-align: center; display: none;"
									class="huge">ON</div>
							</div>
							<div id="title">
								<div id="Offb" style="text-align: center; display: block;"
									class="huge">OFF</div>
							</div>
							<div id="ApowerS" class="Bottomtext" style="margin-top:50px;">power
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
		var wsUri = "ws://210.93.172.174/echo";
		//var wsUri = "http://210.93.172.174/echo";
		//var wsUri = "ws://127.0.0.1:18080/echo";
		function changeBox(){
			
			document.getElementById("Dbutton").innerHTML = document.getElementById("link1").innerHTML
			document.getElementById("titlesub").innerHTML = document.getElementById("link1").innerHTML
			document.getElementById("Dbutton").value = "1"
		}
		function changeBox2(){
			
			document.getElementById("Dbutton").innerHTML = document.getElementById("link2").innerHTML
			document.getElementById("titlesub").innerHTML = document.getElementById("link2").innerHTML
			document.getElementById("Dbutton").value = "2"
		}
		function onClickC() {
			getCseData("0001000100010001_device002");
		}
		
		function stateButtonOn() {
			if(document.getElementById("Dbutton").value=="1"){
				mgmt("0001000200010002_robot01","ON");
			}else if(document.getElementById("Dbutton").value=="2"){
				mgmt("0001000200010002_robot02","ON");
			}
			
		}
		function stateButtonOff() {
			if(document.getElementById("Dbutton").value=="1"){
				mgmt("0001000200010002_robot01","OFF");
			}else if(document.getElementById("Dbutton").value=="2"){
				mgmt("0001000200010002_robot02","OFF");
			}
			
		}

		function onMessage(event) {
			
			var obj = JSON.parse(event.data);
			if(obj.name == "bottomrfid"){
				document.getElementById("messageWindow0").value = "0x"+obj.con;
				document.getElementById("BrfidM").innerHTML = "";
				document.getElementById("BrfidM").innerHTML += obj.ct;
			}
			if(obj.name == "toprfid"){
				document.getElementById("messageWindow1").value = "0x"+obj.con;
				document.getElementById("TrfidM").innerHTML = "";
				document.getElementById("TrfidM").innerHTML += obj.ct;
			}
			if(obj.name == "linetracer" && obj.con == "2"){
				document.getElementById("lview").className="gradtext";
				document.getElementById("messageWindow2").value = "라인 진입";
				document.getElementById("LerrorM").innerHTML = "";
				document.getElementById("LerrorM").innerHTML += obj.ct;
			}
			if(obj.name == "linetracer" && obj.con == "1"){
				//Messagebox.show();
				//alert("라인이탈!\n"+obj.ct);
				document.getElementById("lview").className="gradtextchange";
				document.getElementById("messageWindow2").value = "라인 이탈";
				document.getElementById("LerrorM").innerHTML = "";
				document.getElementById("LerrorM").innerHTML += obj.ct;
			}
			
			if(obj.name == "casystem" && obj.con =="3"){
				document.getElementById("cview").className="gradtext";
				document.getElementById("messageWindow3").value = "충돌 방지 시스템 완료 및 AGV 재출발";
				document.getElementById("CcheckM").innerHTML = "";
				document.getElementById("CcheckM").innerHTML = obj.ct;
			}else if(obj.name == "casystem" && obj.con =="1"){
				document.getElementById("cview").className="gradtextchange";
				document.getElementById("messageWindow3").value = "충돌 방지를 위해 대기 상태";
				document.getElementById("CcheckM").innerHTML = "";
				document.getElementById("CcheckM").innerHTML = obj.ct;
			}
			if(obj.name == "obstacle" && obj.con =="1"){

				document.getElementById("fview").className="gradtextchange";
				document.getElementById("messageWindow4").value = "장애물 있음";
				document.getElementById("FDetecM").innerHTML = obj.ct;
			}else if(obj.name == "obstacle" && obj.con =="2"){
				document.getElementById("fview").className="gradtext";
				document.getElementById("messageWindow4").value =  "장애물 없음";
				document.getElementById("FDetecM").innerHTML = obj.ct;
			}
			if(obj.name == "battery"){
			if(obj.con == "1"){
				//alert("Battery LoW!\n"+obj.ct);
				document.getElementById("bview").className="gradtextchange";
				document.getElementById("messageWindow5").value = "LOW";
				document.getElementById('text1').value = "15";
				$(document.getElementById('text1')).keyup();
			}else if(obj.con == "2"){
				document.getElementById("bview").className="gradtext";
				document.getElementById("messageWindow5").value = "MIDDLE";
				document.getElementById('text1').value = "50";
				$(document.getElementById('text1')).keyup();
			}else if(obj.con == "3"){
				document.getElementById("bview").className="gradtext";
				document.getElementById("messageWindow5").value = "HIGH";
				document.getElementById('text1').value = "85";
				$(document.getElementById('text1')).keyup();
			}
			document.getElementById("BatteryM").innerHTML = obj.ct;	
			}

			if(obj.name == "power"){
			if (document.getElementById("Offb").style.display == 'block' && obj.con == "ON") {
				document.getElementById("Offb").style.display = 'none';
				document.getElementById("Onb").style.display = 'block';
			}else if (document.getElementById("Onb").style.display == 'block' && obj.con == "OFF") {
				document.getElementById("Onb").style.display = 'none';
				document.getElementById("Offb").style.display = 'block';
			}
			document.getElementById("ApowerS").innerHTML = obj.ct;	
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

	

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'>
		jQuery.noConflict();
	</script>

	<script src="../../resources/js/index.js"></script>

	<script type="text/javascript">
	window.onload = function () {
	getCseData("0001000200010002_robot01");
	send_message();
	getDate();
	}
	function getDate(){
		var d = new Date();
		var date = d.getFullYear() +"년 "+(d.getMonth()+1)+"월 "+d.getDate()+"일";
		document.getElementById("nowdate").innerHTML = date;
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
					
						document.getElementById("messageWindow0").value = "0x"+data.Brfid.con;
						document.getElementById("BrfidM").innerHTML = "";
						document.getElementById("BrfidM").innerHTML += data.Brfid.ct;
						document.getElementById("messageWindow1").value = "0x"+data.Trfid.con;
						document.getElementById("TrfidM").innerHTML = "";
						document.getElementById("TrfidM").innerHTML += data.Trfid.ct;
						
						if(data.Lerror.con == "1"){
						document.getElementById("lview").className="gradtextchange";
						document.getElementById("messageWindow2").value = "라인 이탈";
						document.getElementById("LerrorM").innerHTML = "";
						document.getElementById("LerrorM").innerHTML += data.Lerror.ct;
						}else if(data.Lerror.con == "2"){
						document.getElementById("lview").className="gradtext";
						document.getElementById("messageWindow2").value = "라인 진입";
						document.getElementById("LerrorM").innerHTML = "";
						document.getElementById("LerrorM").innerHTML += data.Lerror.ct;
						}else{
							document.getElementById("lview").className="gradtextchange";
							document.getElementById("messageWindow2").value = data.Lerror.con;
							document.getElementById("LerrorM").innerHTML = "";
							document.getElementById("LerrorM").innerHTML += data.Lerror.ct;
						}
						
						if(data.Ccheck.con == "1"){
							document.getElementById("cview").className="gradtextchange";
						document.getElementById("messageWindow3").value = "충돌 방지를 위해 대기 상태";
						document.getElementById("CcheckM").innerHTML = "";
						document.getElementById("CcheckM").innerHTML += data.Ccheck.ct;
						}else if(data.Ccheck.con == "3"){
							document.getElementById("cview").className="gradtext";
							document.getElementById("messageWindow3").value = "충돌 방지 시스템 완료 및 AGV 재출발";
							document.getElementById("CcheckM").innerHTML = "";
							document.getElementById("CcheckM").innerHTML += data.Ccheck.ct;
						}else{
							document.getElementById("cview").className="gradtextchange";
							document.getElementById("messageWindow3").value = data.Ccheck.con;
							document.getElementById("CcheckM").innerHTML = "";
							document.getElementById("CcheckM").innerHTML += data.Ccheck.ct;
						}
						
						if(data.Fdetec.con == "1"){
							document.getElementById("fview").className="gradtextchange";
							document.getElementById("messageWindow4").value = "장애물 있음";
							document.getElementById("FDetecM").innerHTML = "";
							document.getElementById("FDetecM").innerHTML += data.Fdetec.ct;
						}else if(data.Fdetec.con == "2"){
							document.getElementById("fview").className="gradtext";
							document.getElementById("messageWindow4").value =  "장애물 없음";
							document.getElementById("FDetecM").innerHTML = "";
							document.getElementById("FDetecM").innerHTML += data.Fdetec.ct;
						}else{
							document.getElementById("fview").className="gradtextchange";
							document.getElementById("messageWindow4").value = data.Fdetec.con;
							document.getElementById("FDetecM").innerHTML = "";
							document.getElementById("FDetecM").innerHTML += data.Fdetec.ct;
						}
						
						if(data.Battery.con == "1"){
							document.getElementById("bview").className="gradtextchange";
							document.getElementById("messageWindow5").value = "LOW";
							document.getElementById('text1').value = "15";
							$(document.getElementById('text1')).keyup();
						}else if(data.Battery.con == "2"){
							document.getElementById("bview").className="gradtext";
							document.getElementById("messageWindow5").value = "MIDDLE";
							document.getElementById('text1').value = "50";
							$(document.getElementById('text1')).keyup();
						}else if(data.Battery.con == "3"){
							document.getElementById("bview").className="gradtext";
							document.getElementById("messageWindow5").value = "HIGH";
							document.getElementById('text1').value = "85";
							$(document.getElementById('text1')).keyup();
						}else{
							document.getElementById("bview").className="gradtextchange";
							document.getElementById("messageWindow5").value = data.Battery.con;
						}
						document.getElementById("BatteryM").innerHTML = "";
						document.getElementById("BatteryM").innerHTML += data.Battery.ct;				
						
						if (document.getElementById("Offb").style.display == 'block' && data.AGVonf.con == "ON") {
							document.getElementById("Offb").style.display = 'none';
							document.getElementById("Onb").style.display = 'block';
							document.getElementById("ApowerS").innerHTML = "";
							document.getElementById("ApowerS").innerHTML += data.AGVonf.ct;
						}else if (document.getElementById("Onb").style.display == 'block' && data.AGVonf.con == "OFF") {;
							document.getElementById("Onb").style.display = 'none';
							document.getElementById("Offb").style.display = 'block';
							document.getElementById("ApowerS").innerHTML = "";
							document.getElementById("ApowerS").innerHTML += data.AGVonf.ct;
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
						
						document.getElementById('text1').value = data.Battery.con;
						$(document.getElementById('text1')).keyup();
						if(data.Battery.con<20){
							document.getElementById("messageWindow5").value = "LOW";
						}else if(data.Battery.con<80){
							document.getElementById("messageWindow5").value = "MIDDLE";
						}else{
							document.getElementById("messageWindow5").value = "HIGH";
						}
						document.getElementById("BatteryM").innerHTML = data.Battery.ct;				
						
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

