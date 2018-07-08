<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Ajax. -->
<!--
	 	 				
-->
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnSubmit').click(function(){
			var fullName=$('#fullName').val();
			$.ajax({
				type:'POST',
				data:{fullName:fullName},
				url:'ControlServlet',
				success:function(result){
					$('#spanResult').html(result);
				}				
			});
		});
	});
</script>
</head>

<body>
	<form>		 
		Name:<input id="fullName" type="text"/>
		<input id="btnSubmit" type="button" value="Submit" />
		<br>
		<span id="spanResult"></span>
	</form>
</body>
</html>