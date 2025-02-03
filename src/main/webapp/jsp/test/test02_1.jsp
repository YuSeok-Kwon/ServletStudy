<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSP Method</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<%
		String heightString = request.getParameter("height");
		String weightString = request.getParameter("weight");
		int height = Integer.parseInt(heightString);
		int weight = Integer.parseInt(weightString);
		double bmi = getBMI(height, weight);
	%>
	
	<h3 class= "fw-bold">BMI 측정결과</h3>
	<h2 class= "fs-1 fw-light"> 당신은 <span class="text-primary"> <%= getBMIString(bmi) %></span> 입니다.</h2>
	<h5 class="text-muted">bmi수치 : <%=  bmi %></h5>
	
	<%! 
	public double getBMI(int height, int weight) {
		return (double) weight / ((height / 100.0) * (height / 100.0));
		}
	
	public String getBMIString(double bmi){
		if(bmi >= 30){
			return "비만";
		} else if(bmi >= 25 && bmi < 30){
			return "과체중";
		} else if(bmi >= 18.5 && bmi < 25){
			return "정상";
		} else{
			return "저체중";
		}
	}
	%>
	
	
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>