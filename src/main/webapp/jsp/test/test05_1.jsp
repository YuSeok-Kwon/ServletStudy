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
		
		
		double inch = 0.0;
		double yard = 0.0;
		double feet = 0.0;
		double meter = 0.0;
		for(int i = 0; i < unitArr.length; i++){
			if(unitArr[i].equals("inch")){
				inch = length * 0.3937;
			} else if(unitArr[i].equals("yard")){
				yard = length * 1.0936;
			} else if(unitArr[i].equals("feet")){
				feet = length * 0.0328;
			} else if(unitArr[i].equals("meter")){
				meter = length * 0.01;
			} 
		}
	%>
	
	<h2>변환 결과</h2>
	<h5><%= length%>cm</h5>
	<hr>
	<h1 id="inch"><%= inch %>in</h1>
	<h1 id="yard"><%= yard %>yd</h1>
	<h1 id="feet"><%= feet %>ft</h1>
	<h1 id="meter"><%= meter %>m</h1>
	
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>