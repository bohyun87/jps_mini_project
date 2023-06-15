<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>파샨파샨▲_Incheon Hiking Crew</title>
<link rel="stylesheet" href="./css/style.css" />

</head>
<body>

	<c:if test="${epiList == null && error == null}">  
		<jsp:forward page="index" />      
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
		<div class="imgslider"></div>
		<div class="index_epi">
			<div>
				<table class="epi_preview">
					<thead class="epi_th">
						<tr>
							<th>제목</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody class="index_epi_tb">
						<c:forEach var="epi" items="${epiList}" varStatus="epistatus">
						<tr>
							<td class="index_epi_title">
								<a href="./epilogue_view?board_no=${epi.board_no}">${epi.title}</a></td>
							<td>${epi.hiking_date}</td>
						</tr>
						</c:forEach>
					</tbody>
				
				</table>
			</div> 
			<div class="shall">
				<h2>Shall we hiking?</h2>
				<hr>
			<!-- 	<img alt="epilogue" src="./img/"> -->
			</div>
			<a href="list">
				<p>more<i class="fa-sharp fa-light fa-circle-play" style="color: #dbdbdb;"></i>
			</a>
		</div>
		<div class="idex_member">
			<h2>어서와! 등산은 처음이지</h2>
			<hr>
			<div class="mem_preview">
				<div>
					<!-- <img alt="member" src="./img/"> -->
					<p>운영진</p>
				</div>
				<div>
					<p>운영진</p>
				<!-- 	<img alt="member" src="./img/"> -->
				</div>
				<div>
		<!-- 			<img alt="member" src="./img/"> -->
					<p>운영진</p>
				</div>			
			</div>
			<a href="#">
				<p>more<i class="fa-sharp fa-light fa-circle-play" style="color: #dbdbdb;"></i>
			</a>
		</div>
	</main>
	<footer>
		<a href="/">
			<h2>▲pashanpashan</h2>
		</a>
	</footer>

</body>
</html> 