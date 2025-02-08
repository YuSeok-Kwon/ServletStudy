<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kepg.common.MysqlService" %>   
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 	MysqlService mysqlservice = new MysqlService();

	mysqlservice.connect();
	
	ResultSet resultset = mysqlservice.select("SELECT * FROM `new_user` ORDER BY `id` DESC");
%>
	
	<h3>사용자 목록</h3>
	
	<table border=1>
		<thead>
			<tr>
				<th>이름</th>
				<th>이메일</th>
				<th>자기소개</th>	
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>유재석</td>
				<td>yjs@naver.com</td>
				<td>안녕하세요 유재석입니다.</td>
			</tr>
			<tr>
				<td>이광수
				<td>lgs@gmail.com</td>
				<td>안녕하세요 이광수 입니다.</td>
			</tr>
		</tbody>
	</table>
</body>
</html>