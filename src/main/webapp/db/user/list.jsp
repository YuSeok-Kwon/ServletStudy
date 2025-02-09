<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kepg.common.MysqlService" %>   
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
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
	
	ResultSet resultSet = mysqlservice.select("SELECT * FROM `new_user` ORDER BY `id` DESC");
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
		    <% while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String introduce = resultSet.getString("introduce");
   		    %>
                <tr>
                    <td><%= name %></td>
                    <td><%= email %></td>
                    <td><%= introduce %></td>
                </tr>
            <% } %>
        </tbody>
	</table>
</body>
</html>