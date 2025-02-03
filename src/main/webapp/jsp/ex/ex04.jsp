<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료 구조 다루기</title>
</head>
<body>
	<%
		// 과일이름 리스트
		List <String> fruitsList = new ArrayList<>();
		fruitsList.add("사과");
		fruitsList.add("딸기");
		fruitsList.add("바나나");
		
		
	%>
	
	<table border=1>
		<% for(String fruit:fruitsList) { %>
			<tr>
				<td> <%= fruit %></td>
			</tr>
		<% } %>
	</table>
	
	<%
		// 학생1 - 국어:100 수학:89 영어:90
		// {"국어" :90, "수학" : 89, "영어" :90}
		// 학생2 - 국어:78 수학 100 영어 68
		// {"국어" :78, "수학" : 100, "영어" :68}
		
		//[{"국어" :90, "수학" : 89, "영어" :90}, {"국어" :78, "수학" : 100, "영어" :68}]
				
		List<Map<String, Integer>> scoreList = new ArrayList<>();
		
		Map<String, Integer> score1 = new HashMap<>();
		score1.put("국어",100);
		score1.put("영어",89);
		score1.put("수학",90);
		
		scoreList.add(score1);
		
		Map<String, Integer> score2 = new HashMap<>();
		score2.put("국어",78);
		score2.put("영어",68);
		score2.put("수학",100);
		
		scoreList.add(score2);
		
		Set<String> keySet = score1.keySet();
	%>
	
	<table border=1>
		<thead>
		 	<tr>
		 		<th>학생번호</th>
				<% for(String subject: keySet){ %>
				   <th><%= subject %></th>
				<% } %>
			</tr>
		</thead>
			<tbody>
				
				<%
				int studentNumber = 1;
				for(Map<String, Integer> scores : scoreList) {
				%>
				<tr>
					<td><%= studentNumber %></td>	
								
					<% for(String subject : keySet) { %>
						<td><%= scores.get(subject) %></td>
					<% } %>
				</tr>
				<% studentNumber ++;
				} %>	
			</tbody>
	</table>
</body>
</html>