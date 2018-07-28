<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Ajax: Response -->
<!--
	1. Property onreadystatechange:
		+ readyState: giữ status của XMLHttpRequest			
		+ onreadystatechange: định nghĩa một function được thực thi khi readyState thay đổi.
		+ status và statusText: giữ status của XMLHttpRequest Object.
	2. Callback function(gọi lại).
	3. Property response server.
		+ getResponseHeader(): Trả về thông tin header chỉ định từ nguồn server.
		+ getAllResponseHeader(): Trả về all thông tin header từ nguồn server.
	4. responseText property: trả về response server như là 1 chuỗi JS.	
	5. responseXML property: trả về response server như là một đối tượng XML DOM.
	6. getAllResponseHeaders() method: trả về tất cả thông tin headers từ response của server.
		+ Thông tin của headers gồm:
			- date:Sat, 28 Jul 2018 14:58:51 GMT
			- last-modified: Sat, 28 Jul 2018 09:55:44 GMT
			- server: Apache-Coyote/1.1
			- accept-ranges:bytes 
			- etag: W/"178-1532771744726"
			- content-length: 178 
			- content-type: text/plain
	7. getResponseHeaders() method: trả về thông tin header chỉ định từ response server. 
-->
</head>

<body>
	<!-- Callback(gọi lại) function -->
	<!-- <h2>XMLHttpRequest Object</h2>
	<div id="divId"></div>
	<button type="button" onclick="loadDoc('ajax_info.txt',myFunction)">Request data</button>
	
	<script type="text/javascript">
	function loadDoc(url,cFunction){
		var xHttp = new XMLHttpRequest();
		xHttp.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				cFunction(this);
			}
		};
		xHttp.open("GET",url,true);
		xHttp.send();
	}
	function myFuntion(xHttp){
		document.getElementById("divId").innerHTML = xHttp.responseText;
	} 
	</script>-->

	<!-- The responseXML property -->
	<!-- <h2>XMLHttpRequest Object</h2>
	<p id="divId"></p>
	<script type="text/javascript">
		var xHttp, xmlDoc, txt, x, i;
		xHttp = new XMLHttpRequest();
		xHttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				xmlDoc = this.responseXML;
				txt = '';
				x = xmlDoc.getElementsByTagName("ARTIST");
				for (i = 0; i < x.length; i++) {
					txt = txt + x[i].childNodes[0].nodeValue + "<br>";
				}
				document.getElementById("divId").innerHTML = txt;
			}
		};
		xHttp.open("GET","cd_catalog.xml",true);
		xHttp.send();
	</script> -->
	
	<!-- The getAllResponseHeaders() -->
	<h2>The XMLHttpRequest Object</h2>
	<p id="pId"></p>
	<script type="text/javascript">
		var xHttp = new XMLHttpRequest();
		xHttp.onreadystatechange = function(){
			if(this.readyState == 4 && this.status ==200){
				document.getElementById("pId").innerHTML = this.getAllResponseHeaders();
			}
		};
		xHttp.open("GET","ajax_info.txt",true);
		xHttp.send();
	</script> 
	
	<!-- The getResponseHeaders() -->
	<!-- <p>Last modified: <span id="spanId"></span></p>
	<script type="text/javascript">
		var xHttp = new XMLHttpRequest();
		xHttp.onreadystatechange = function(){
			if(this.readyState ==4 && this.status ==200){
				document.getElementById("spanId").innerHTML = this.getResponseHeader("Last-Modified");
			}
		};
		xHttp.open("GET","ajax_info.txt",true);
		xHttp.send();
	</script> -->
</body>
</html>