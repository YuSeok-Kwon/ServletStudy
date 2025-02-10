<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kepg.common.MysqlService" %>   
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
		MysqlService mysqlservice = MysqlService.getInstance();
		mysqlservice.connect();
		
		List<Map<String,Object>> resultList = mysqlservice.select("SELECT * FROM `new_user` ORDER BY `id` DESC");
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
		    <% for(Map<String,Object> map:resultList)	{
		    	
		    	String name = (String)map.get("name");
		    	String email = (String)map.get("email");
		    	String introduce = (String)map.get("introduce");
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