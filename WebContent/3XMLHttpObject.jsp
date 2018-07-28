<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Ajax: XMLHttp Object -->
<!--
	1. Tất cả các browser hiện đại đều được hổ trợ obj này.
	2. Sử dụng để trao đổi data với một server, mà k cần load lại page.	
	3. Truy cập domain:
		+ Vì lý do bảo mật, trình duyệt hiện đại không cho phép truy cập trên các tên miền.
		+ Nghĩa là website và tệp XML muốn tải phải đặt trên cùng một máy chủ. EX: Các tệp XML của W3 được đặt trên W3Schools.
	4. Các trình duyệt IE5 và IE6 thì sử dụng ActiveX object thay vì XMLHttpRequest object.
			 	 
	5. Các method của đối tượng XMLHttpRequest:
		+ new XMLHttpRequest(): Tạo một obj XMLHttpRequest.
		+ abort(): Hủy request hiện tại.
		+ getAllResponseHeaders(): Trả về info header.
		+ getResponseHeader(): Trả về thông tin header chỉ định.
		+ opne(method, url, async, user, psw):Chỉ định yêu cầu.
			- method: request type GET or POST.
			- url: vị trí file.
			- async: true(asynchronous) or false (synchronous: đồng bộ).
			- user: name user.
			- psw: password user.
		+ send(): Gửi request lên server, used cho POST request.
		+ setRequestHeader(): Add a cặp giá trị label/value đến header để gửi.
	6. Các thuộc tính của XMLRequest Object.(Properties)
		+ onreadystatechange: định nghĩa một function để được gọi khi thuộc tính readyState thay đổi.
		+ readyState: Gửi trạng thái của XMLHttpRequest.
			- 0: request không được khởi tại.
			- 1: đã thiết lập connect đến server.
			- 2: request được thừa nhận là đúng.
			- 3: request processing.
			- 4: request được hoàn thành và response là sẵn sàng.
		+ responseText: Trả về dữ liệu response là 1 string.
		+ responseXML: Trả về dữ liệu response là data XML.
		+ status: Trả về status-number của 1 request
			- 200: "OK"
			- 403: "Forbidden": ngăn cấm.
			- 404: "Not found"
		+ statusText: Trả về status-text ("OK" or "Not Found").				
-->
<script type="text/javascript">
	function loadDoc(){
		var xHttp;
		if(window.XMLHttpRequest){
			// code cho các trình duyệt hiện đại
			xHttp = new XMLHttpRequest();			
		}else{
			// code cho IE6, IE5.
			xHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xHttp.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				document.getElementById("divId").innerHTML = this.responseText;				
			}
		};
		xHttp.open("GET", "ajax_info.txt", true);
		xHttp.send();
	}
</script>
</head>

<body>
	<div id="divId">
		Let AJAX change this text.
	</div>
	<button type="button" onclick="loadDoc()">Thay đổi nội dung</button>
</body>
</html>