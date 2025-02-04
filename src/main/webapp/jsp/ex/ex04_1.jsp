<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% 
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
		
		Map<String, Integer> score3 = new HashMap<>();
		score3.put("국어",98);
		score3.put("영어",60);
		score3.put("수학",70);
		scoreList.add(score3);
		
		Map<String, Integer> score4 = new HashMap<>();
		score4.put("국어",96);
		score4.put("영어",79);
		score4.put("수학",80);	
		scoreList.add(score4);
		
		Set<String> keys = score1.keySet();
		int studentNumber = 1;
	%>
	
	<table border=1>
		<tr>
			<th>학생번호</th>
			<% for(String subject : keys) { %>
				<th><%= subject %></th>
				<% } %>
		</tr>
		<% for(Map<String, Integer> maps : scoreList ) { %>
		<tr>
			<td><%= studentNumber %></td>
			<% for(String subject : keys) { %>
					<td><%= maps.get(subject) %></td>
					<% } %>
		</tr>
		<% 
		studentNumber++;
		} %>
	</table>
</body>
</html>