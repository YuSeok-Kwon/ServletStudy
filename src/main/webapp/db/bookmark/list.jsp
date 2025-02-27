<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kepg.common.MysqlService" %>   
<%@ page import="java.sql.ResultSet" %> 
<%@ page import="java.util.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>즐겨찾기 목록</title>
</head>
<body>
<div class="container border-0 mt-5 ">
<%
	MysqlService sql = MysqlService.getInstance();
	sql.connect();
	
	List<Map<String,Object>> resultList= sql.select("SELECT * FROM bookmark ORDER BY id DESC;");
 %>
	<table border=1 class="table text-center">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		<tbody>
			<h1 class="text-center mb-3">즐겨찾기 목록</h1>
			<% 
				for(Map<String,Object> map:resultList){
					
					String name = (String)map.get("id");
					String url = (String)map.get("url");
					String id = (String)map.get("id");
			%>
			
			<tr>
				<td><%= name %></td>
				<td>
					<a href="<%= url %>" target="_blank"><%= url %></a>
					<a href="/db/bookmark/create?id=<%= id %>" class="text-decoration-none text-muted">   	 [삭제하기]</a>
				</td>
			</tr>
			<% } %>
		</tbody>
	</table>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</body>
</html>