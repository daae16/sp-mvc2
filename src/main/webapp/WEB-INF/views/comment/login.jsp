<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form method="POST" action="/comment/login">
			아이디<input type="text" name="cmTitle"> 비밀번호<input
				type="number" name="miNum">
			<button>로그인</button>
		</form>
		${msgLogin }
</body>
</html>