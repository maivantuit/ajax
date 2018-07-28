<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Ajax: Request -->
<!--
	1. POST và GET: POST mạnh mẽ và an toàn hơn GET.
	2. Để gửi request lên server, use cách method: open() và send() của XMLHttpRequest Object.
		+ open(method, url, async): Chỉ định loại request.
			- method: GET or POST.
			- url: vị trí của file server.
			- async: true (asynchronous) và false (synchronous).
		+ send(): Gửi request đến server (used GET)
		+ send(string): Gửi request đến server (used POST)
		+ setRequestHeader(header, value): Adds HTTP headers đến request.
			- header: chỉ định header name.
			- value: chi định header value.
-->
</head>

<body>
	<!-- Request GET -->
	<h2>XMLHttpRequest</h2>
	<div id="divId"></div>
	<button type="button" onclick="loadDoc()">Request data</button>
	
	<script type="text/javascript">
	function loadDoc(){
		var xHttp = new XMLHttpRequest();
		xHttp.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				document.getElementById("divId").innerHTML = this.responseText;
			}
		};
		xHttp.open("GET","ajax_info.txt",true);
		
		/* Request POST */
		//xHttp.open("GET","ajax_info.txt",true);
		
		xHttp.send();
	}
	</script>	
</body>
</html>