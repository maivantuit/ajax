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
	1.  
-->
<style>
table,th,td {
	border: 1px solid black;
	border-collapse: collapse;
}

th,td {
	padding: 5px;
}
</style>
</head>

<body>
	<h2>XML File - XMLHttpRequest Object</h2>
	<button type="button" onclick="loadDoc()">Get my CD Collection
	</button>
	<br>
	<br>
	<span id="showC"></span>
	<table id="tableId"></table>
	<script type="text/javascript">
		var x;
		
		function loadDoc() {
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					myFunction(this);
				}
			};
			xhttp.open("GET", "cd_catalog.xml", true);
			xhttp.send();
		}
		function myFunction(xml) {
			var i;
			var xmlDoc = xml.responseXML;
			var table = "<tr><th>Artist</th><th>Title</th></tr>";
			x = xmlDoc.getElementsByTagName("CD");			
			for (i = 0; i < x.length; i++) {
				table += "<tr onclick='alertFunc(" + i + ")'><td>"
						+ x[i].getElementsByTagName("ARTIST")[0].childNodes[0].nodeValue
						+ "</td><td>"
						+ x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue
						+ "</td></tr>";
			}
			document.getElementById("tableId").innerHTML = table;
		}
		function alertFunc(index){
			table = "ARTIST: "+x[index].getElementsByTagName("ARTIST")[0].childNodes[0].nodeValue+"<br> TITLE: "+
			x[index].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue;
			document.getElementById("showC").innerHTML = table;
		}
	</script>	
</body>
</html>