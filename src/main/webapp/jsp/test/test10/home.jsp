<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="style10.css" rel="stylesheet">
<title>MELONG</title>
</head>
<body>
	<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    String searchParam = request.getParameter("search");
    String search = (searchParam != null && !searchParam.isEmpty()) ?request.getParameter("search") : ""; 
    String idParam = request.getParameter("id");
    int id = (idParam != null && !idParam.isEmpty()) ? Integer.parseInt(idParam) : -1;
%>
	
	<div class="container">
		<header class="mb-3">
			<div class="d-flex me-5 align-items-center">
				<h1 class="text-success me-5">Melong</h1>
				<form method="get" action="/jsp/test/test10/detail.jsp">
					<div class="input-group" style="width : 500px">
					  <input type="text" class="form-control" name="search" >
					  <button class="btn btn-success" type="submit">검색</button>
					</div>
				</form>
			</div>
		</header>
		<nav class="mb-3">
			<ul class="nav text-center ">
				<li class="nav-item nav-fill">
					<a href="#" class="nav-link">메롱차트</a>
				</li>
				<li class="nav-item nav-fill">
					<a href="#" class="nav-link">최신음악</a>
				</li>
				<li class="nav-item nav-fill">
					<a href="#" class="nav-link">장르음악</a>
				</li>
				<li class="nav-item nav-fill">
					<a href="#" class="nav-link">멜롱DJ</a>
				</li>
				<li class="nav-item nav-fill">
					<a href="#" class="nav-link">뮤직어워드</a>
				</li>
			</ul>
		</nav>
		<main>
			<div class="profile d-flex">
				<div class="me-3">
					<img src="<%= artistInfo.get("photo") %>" alt="가수 프로필 사진" class="artistImg">	
				</div>
				<div>
					<p class="fs-1 mb-2"><%= artistInfo.get("name") %></p>
					<p class="mb-1 fs-5 fw-normal"><%= artistInfo.get("agency") %></p>
					<p class="fs-5 fw-normal"><%= artistInfo.get("debute") %>데뷔</p>
				</div>
			</div>
		<div class="fs-1 fw-normal mt-2"> 곡 목록</div>
		<table class="table table-sm">
			<thead>
				<tr>
					<th>no</th>
					<th>제목</th>
					<th>앨범</th>
				</tr>
			</thead>
			<tbody>
				<%for(Map<String, Object>music:musicList) { %>
				<tr>
					<td><%= music.get("id") %></td>
					<td><a href="/jsp/test/test10/detail.jsp?id=<%= music.get("id") %>" class="text-decoration-none"><%= music.get("title") %></a></td>
					<td><%= music.get("album") %></td>
				</tr>
				<% } %>
			</tbody>	
			</table>
		</main>
		<footer>
			<hr>
			<p class="fs-6 text-secondary">Copyright marondal all right reserved</p>
		</footer>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</body>
</html>