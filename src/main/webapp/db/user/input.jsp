<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력</title>
</head>
<body>
	<form method=post action="/db/user/create">
		<label>이름 :<input type=text name=name></label></br>
		<label>생년월일 :<input type=text name=birthday></label></br>
		<label>이메일 :<input type=text name=email></label></br>
		<textarea rows=5 cols=30 name=introduce>자기소개</textarea>
		<button type=submit>제출</button>
	</form>

</body>
</html>