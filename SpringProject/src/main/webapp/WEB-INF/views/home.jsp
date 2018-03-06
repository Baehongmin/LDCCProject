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

    <div class="percentage">0 %</div>
    <input type="text" class="text-box" />


	<input onclick="send_message()" value="Send" type="button">
	<input type="submit" value="Stop" onclick="doClose()" />
	<div id="output"></div>


	<div id="wrapper">

		<div class="row">
			<div class="col-lg-12" align="Center">
				<h1 class="page-header">Canon Dashboard</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<div class="row">
			<div style="border: 1px; padding: 10px; height: 200px;">
				<h1 class="page-header"></h1>
			</div>
		</div>

		<!-- /.row -->
		<div class="row">
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea id="messageWindow0" readonly="true"
									style="color: black; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="1" cols="8"></textarea>
							</div>
							<div style="margin: auto; text-align: center;">Bottom RFID</div>

						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">Activating</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-green">
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea id="messageWindow1" readonly="true"
									style="text-align: center; color: black; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="1" cols="8"></textarea>
							</div>
							<div style="margin: auto; text-align: center;">Top RFID</div>
						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">Activating</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-yellow">
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<fieldset>
									<textarea id="messageWindow2" readonly="true"
										style="color: black; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
										rows="1" cols="8"></textarea>

								</fieldset>
							</div>
							<div style="margin: auto; text-align: center;">Line Error</div>

						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">Activating</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<textarea id="messageWindow3" readonly="true"
									style="color: black; text-align: center; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
									rows="1" cols="16"></textarea>
							</div>
							<div style="margin: auto; text-align: center;">Crash Check</div>

						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">Activating</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">


							<div class="huge" style="margin: auto; text-align: center">
								<textarea id="messageWindow4" readonly="true"
									style="color: black; border: 0 solid black; font-size: smaller; background-color: transparent; overflow: hidden;"
									rows="1" cols="8"></textarea>
							</div>
							<div style="margin: auto; text-align: center">Front
								Detection</div>

						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">Activating</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-green">
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
<!-- 
							<div class="huge" style="margin: auto; text-align: center">
								<textarea id="messageWindow5" readonly="true"
									style="color: black; text-align: center; font-size: smaller; border: 0 solid black; background-color: transparent; overflow: hidden;"
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
							<div style="margin: auto; text-align: center;">Bettery</div>

						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">Activating</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-yellow">
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center">

								<button type="button" class="btn btn-toggle active"
									data-toggle="button" aria-pressed="true" autocomplete="off"
									style="align-items: left">
									<div class="handle"></div>
								</button>
							</div>
							<div style="margin: auto; text-align: center;">AGV ON/OFF</div>
						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">Activating</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-heading">
						<div class="row" style="margin: auto; display: inline;">
							<div class="huge" style="margin: auto; text-align: center;">
								<button type="button"
									class="btn btn-lg btn-secondary btn-toggle active"
									data-toggle="button" aria-pressed="true" autocomplete="off">
									<div class="handle"></div>
								</button>
							</div>
							<div style="margin: auto; text-align: center;">Action
								Control</div>

						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">Activating</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>

			<!-- /#page-wrapper -->

		</div>

		<div class="col-lg-4"></div>
		<!-- /#wrapper -->
		<div class="col-lg-6">
			<div class="panel panel-default">
				<div class="panel-heading">Moving Line Chart Example</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="flot-chart">
						<div class="flot-chart-content" id="flot-line-chart-moving"
							style="padding: 0px; position: relative;">
							<canvas class="flot-base" width="540" height="400"
								style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 540px; height: 400px;"></canvas>
							<div class="flot-text"
								style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
								<div class="flot-y-axis flot-y1-axis yAxis y1Axis"
									style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px;">
									<div class="flot-tick-label tickLabel"
										style="position: absolute; top: 361px; left: 34px; text-align: right;">0</div>
									<div class="flot-tick-label tickLabel"
										style="position: absolute; top: 298px; left: 27px; text-align: right;">20</div>
									<div class="flot-tick-label tickLabel"
										style="position: absolute; top: 234px; left: 27px; text-align: right;">40</div>
									<div class="flot-tick-label tickLabel"
										style="position: absolute; top: 171px; left: 27px; text-align: right;">60</div>
									<div class="flot-tick-label tickLabel"
										style="position: absolute; top: 107px; left: 27px; text-align: right;">80</div>
									<div class="flot-tick-label tickLabel"
										style="position: absolute; top: 44px; left: 21px; text-align: right;">100</div>
								</div>
							</div>
							<canvas class="flot-overlay" width="540" height="400"
								style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 540px; height: 400px;"></canvas>
						</div>
					</div>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
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
		function onMessage(event) {
			//textvalue clear checek
			//for(i=0; i<7; i++){
			//	text[i] = "";
			//}
			//textarea.value += "Message Received: " + event.data + "\n";
			text[0].value = "도착지A " + event.data + "\n";
			text[1].value = "출발" + event.data + "\n";
			text[2].value = "라인이탈" + event.data + "\n";
			text[3].value = "충돌방지를 위해 우선 작동 중" + event.data + "\n";
			text[4].value = "전방장애물" + event.data + "\n";
			text[5].value = "AGV 동작제한" + event.data + "\n";
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

		}
	</script>

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>

	-->
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
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'>jQuery.noConflict();</script>

	<script src="../../resources/js/index.js"></script>
</body>

</html>

