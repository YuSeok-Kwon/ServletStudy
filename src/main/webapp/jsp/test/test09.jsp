<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="style.css" rel="stylesheet">
<title>SK broadband IPTV</title>
</head>
<body>
	<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    String category = request.getParameter("category");
%>

	<div class="container">
		<header>
			<h1 class="text-center text-danger mb-3">Sk broadband IPTV</h1>
		</header>
			<nav >
				<ul class="nav bg-danger  text-center d-flex">
					<li class="nav-item flex-fill">
						<a href="/jsp/test/test09.jsp" class="nav-link text-white">전체</a>
					</li>
					<li class="nav-item flex-fill">
						<a href="/jsp/test/test09.jsp?category=지상파" class="nav-link text-white">지상파</a>
					</li>
					<li class="nav-item flex-fill">
						<a href="/jsp/test/test09.jsp?category=드라마" class="nav-link text-white">드라마</a>
					</li>
					<li class="nav-item flex-fill">
						<a href="/jsp/test/test09.jsp?category=예능" class="nav-link text-white">예능</a>
					</li>
					<li class="nav-item flex-fill">
						<a href="/jsp/test/test09.jsp?category=영화" class="nav-link text-white">영화</a>
					</li>
					<li class="nav-item flex-fill">
						<a href="/jsp/test/test09.jsp?category=스포츠" class="nav-link text-white">스포츠</a>
					</li>
				</ul>
			</nav>
		<section class="contents">	
			<table class="table text-center">
				<thead>
					<tr>
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				<tbody>
				<% for(Map<String, String>channel:list) { 
					if(channel.get("category").equals(category)|| (category == null)) { %>
						<tr>
							<td><%= channel.get("ch") %></td>
							<td><%= channel.get("name") %></td>
							<td><%= channel.get("category") %></td>
						</tr>
					<% } 
				} %>
				</tbody>
			</table>			
		</section>
		<fooer class="footer mt-6">
			<p class="text-center fs-6">Copyright 2025. marondal All right Reserved</p>
		</fooer>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</body>
</html>