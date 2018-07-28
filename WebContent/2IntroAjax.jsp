<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Ajax Introduction -->
<!--
	1. AJAX is a developer's dream, because you can:
		+ Read data from server - sau khi đã tải trang.
		+ Cập nhật một trang web mà không cần phải load lại page.
		+ Send data into server - in the background.
	2. So, What is AJAX?
		+ AJAX: Asynchronous JavaScript And XML: Javascipt không đồng bộ và XML.
		+ AJAX is not a programming language.
		+ AJAX just users a kết hợp của:
			- Một trình duyệt được xây dựng sẵn đối tượng XMLHttpRequest.(để request data từ server web).
			- JavaSciprt and HTML DOM(để hiển thị hoặc dùng dữ liệu).
			- AJAX có thể sửa dụng XML để truyền tải dữ liệu, mặt khác có thể truyền tải dữ liệu dưới dạng văn bản thuần hoặc văn bản JSON.				 	 			
-->
<script type="text/javascript">
	function loadDoc(){
		var xHttp = new XMLHttpRequest();
		xHttp.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				document.getElementById("divId").innerHTML = this.responseText;
			}
		};
		xHttp.open("GET","ajax_info.txt",true);		
		xHttp.send();
	}
</script>
</head>

<body>
	<div id="divId">
		<h2>XMLHttpRequest Object</h2>
		<button type="button" onclick="loadDoc()">Thay đổi nội dung</button>
	</div>
</body>
</html>