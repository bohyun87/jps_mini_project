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
				<hr>
			</div>
			<div class="epilogue_view_wrap">
				<div class="board_view">
					<div class="view_title">${epilogue.title}</div>
					<div class="view_info">
						<dl>
							<dt>번호</dt>
							<dd>${epilogue.board_no}</dd>
						</dl>
						<dl>
							<dt>글쓴이</dt>
							<dd>${epilogue.user_name}</dd>
						</dl>
						<dl>
							<dt>산행일자</dt>
							<dd>${epilogue.hiking_date}</dd>
						</dl>
						<dl>
							<dt>조회수</dt>
							<dd>${epilogue.views}</dd>
						</dl>
						<dl>
							<dt><a onclick="chkDelete(${epilogue.board_no}); return false;" class="on">삭제하기</a></dt>
						</dl>
					</div>
					<div class="view_content" style="white-space: pre-wrap;">${epilogue.content}</div>
					<div class="view_content"><img alt="업로드 이미지" src="${epilogue.img}"></div>
				</div>
				<div class="bt_wrap">
				<a href="list" class="on">목록</a>
				<a href="edit?board_no=${epilogue.board_no}">수정</a>
			</div>			
			</div>
		 </div>
	</main>
	<footer>
		<a href="/">
			<h2>▲pashanpashan</h2>
		</a>
	</footer>
	
	<script type="text/javascript" src="./script.js"></script>
</body>
</html>