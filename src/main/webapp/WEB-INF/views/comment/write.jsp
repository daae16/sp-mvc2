<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="/comment/write">
제목<input type="text" name="cmTitle"><br>
내용<textarea name="cmContent"></textarea><br>
유저 번호<input type="number" name="miNum"><br>
<button>작성</button>
</form>
${msgwrite }
</body>
</html>