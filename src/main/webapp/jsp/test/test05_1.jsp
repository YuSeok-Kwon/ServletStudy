<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>변환 결과</title>
</head>
<body>
	<%
		int length = Integer.parseInt(request.getParameter("length"));
		String [] unitArr = request.getParameterValues("unit");
		String convertLength = "";
		
		for(int i = 0; i < unitArr.length; i++){
			if(unitArr[i].equals("inch")){
				double inch = length * 0.3937;
				convertLength += inch + "in<br>";
			} else if(unitArr[i].equals("yard")){
				double yard = length * 1.0936;
				convertLength += yard + "yd<br>";
			} else if(unitArr[i].equals("feet")){
				double feet = length * 0.0328;
				convertLength += feet + "ft<br>";
			} else if(unitArr[i].equals("meter")){
				double meter = length * 0.01;
				convertLength+= meter + "m<br>";
			} 
		}
	%>
	
	<h2>변환 결과</h2>
	<h5><%= length%>cm</h5>
	<hr>
	<h2>
		<%= convertLength %>
	</h2>
	
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>