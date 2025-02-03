<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate, java.time.LocalTime, java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<% String what = request.getParameter("what");
	LocalDate date = LocalDate.now();
	LocalTime time = LocalTime.now();
	String formatter = null;
	
	if(what.equals("date")){
		DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("오늘 날짜는 yyyy년 MM월 dd일 입니다.");
		formatter = date.format(dateFormatter);
	} else{
		DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("현재시간은 HH시 mm분 ss초 입니다.");
		formatter = time.format(timeFormatter);
	}
	%>
	<h2 class="fs-1 fw-light"><%= formatter %></h2>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>