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
			</div>
			<div class="epilogue_write_wrap">
				<form name="frm" method="post" action="update?board_no=${epilogue.board_no}" enctype="multipart/form-data">
					<div class="epilogue_write">
						<div class="epi_title">
							<dl>
								<dt>제목</dt>
								<dd> <input type="text" name="title" maxlength="50" value="${epilogue.title}" /> </dd>
							</dl>
						</div>
						<div class="info">
							<dl>
								<dt>글쓴이</dt>
								<dd> <input type="text" name="user_name" maxlength="50" value="${epilogue.user_name}" /> </dd>
							</dl>
						</div>
						<div class="content">
							<textarea name="content">${epilogue.content}</textarea>
						</div>
						<div style="padding-top:10px">
              				<label style="font-size:1.4rem; padding-right: 20px;" for="file">이미지 업로드</label>
             				 <input type="file" name="file" id="file"/>
          				</div>
					</div>
				</form>
				<div class="bt_wrap">
         			<a onclick="chkForm(); return false;" class="on">수정</a>   
          			<a href="list">취소</a> 
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