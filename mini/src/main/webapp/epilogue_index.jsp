<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>파샨파샨▲_Incheon Hiking Crew</title>
<link rel="stylesheet" href="./css/style.css"/>
</head>
<body>
	<c:if test="${epiList == null}">  
		<jsp:forward page="list" />
	</c:if>
	<header class="header">
	<div class="logo">
		<a href="/">
			<h2>▲PS</h2>
		</a>
	</div>
	<nav class="navi">
		<ul class="menu">
			<li><a href="list">epilogue</a></li>
			<li><a href="#">membership</a></li>
			<li><a href="#">rule</a></li>
		</ul>
	</nav>
	</header>
	<main>
		<div class="wrap">
			<div class="title">
				<h1>산행후기</h1>				
			</div>
			<table class="board_list">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th>글쓴이</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="epilogue" items="${epiList}" varStatus="epilogueStatus">
						<tr>
							<td>${epilogue.board_no}</td>
							<td class="title">
								<a href="./view?board_no=${epilogue.board_no}">${epilogue.title}</a></td>
							<td>${epilogue.hiking_date}</td>
							<td>${epilogue.user_name}</td>
							<td>${epilogue.views}</td>
						</tr>
					</c:forEach>
				</tbody>				
			</table>
			<div class="bt_wrap bt_list">
				<a href="write">글쓰기</a>
			</div>
			<div class="board_page">
				<a href="#" class="bt first">&lt;&lt;</a> <a href="#" class="bt prev">&lt;</a>
				<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
					href="#" class="num">3</a> <a href="#" class="num">4</a> <a href="#"
					class="num">5</a> <a href="#" class="bt next">&gt;</a> <a href="#"
					class="bt last">&gt;&gt;</a>
			</div>
		</div> 	
	</main>
	<footer>
		<a href="/">
			<h2>▲pashanpashan</h2>
		</a>
	</footer>
</body>
</html>