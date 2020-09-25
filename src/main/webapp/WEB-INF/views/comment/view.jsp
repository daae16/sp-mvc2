<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<script>
$.ajax({
	url : '/cm',
	method : "GET",
	data : {
		cmNum : ${param.cmNum}
	},
	success : function(res){
		
	},
	error : function(error){
		
	}
})


</script>
</body>
</html>