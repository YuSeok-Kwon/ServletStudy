<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 단위 변환</title>
</head>
<body>
	<div class="w-25">
		<h2>길이변환</h2>
		<form method="post" action="/jsp/test/test05_1.jsp">
			<input type="text" name="length"><span class="ms-1">cm</span>
			<div>
				<label for="inchCheck">인치</label><input type="checkbox" name="unit" id="inchCheck" value="inch">
				<label for="yardCheck">야드</label><input type="checkbox" name="unit" id="yardCheck" value="yard">
				<label for="feetCheck">피트</label><input type="checkbox" name="unit" id="feetCheck" value="feet">
				<label for="meterCheck">미터</label><input type="checkbox" name="unit" id="meterCheck" value="meter">
			</div>
			<button type="submit">계산</button>
		</form>
	</div>
</body>
</html>