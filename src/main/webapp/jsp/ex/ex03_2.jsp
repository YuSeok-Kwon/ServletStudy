<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	request.setCharacterEncoding("UTF-8");
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");
	String[] foodArr = request.getParameterValues("food"); // 선택항목이 여러개 일때 getParameterValues();
	
	String foodString = "";
	for(int i = 0; i < foodArr.length; i++){
		if(i == foodArr.length - 1){
			foodString += foodArr[i];
		} else{
			foodString += foodArr[i] + ", ";}
		
	}
	
	String fruit = request.getParameter("fruit");
	%>
	
	<h2>별명 : <%= nickname %></h2>
	<h2>취미 : <%= hobby %></h2>
	<h2>좋아하는 동물 : <%= animal %></h2>
	<h2>좋아하는 음식 : <%= foodString 	%></h2>
	<h2> 좋아하는 과일 : <%= fruit %></h2>
</body>
</html>