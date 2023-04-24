<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가지가지</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() { //body 읽어왔을때
		/* $.ajax({
			url : "best",
			success : function(res) {
				$('#best').append(res)
			}
		}) */
		$.ajax({
			url : "list",
			success : function(res) {
				$('.itemContainer').append(res)
			}
		})
	}) 
</script>
<style type="text/css">
	#best, .itemContainer {
		width: 1050px;
		margin: 0 auto;
	}
	.item {
		width: 200px;
		float: left;
		margin-right: 10px;
    	margin-bottom: 10px;
	}
	.itemImage {
		width: 100%;
		height: 200px;
	}
	.itemContent {
		display: flex;
		justify-content: flex-start;
		font-weight: bold;
	}
</style>
</head>
<body>
<div id = "wrap">
	<div id = "header">
		<div id = "login">
			<ul class = "user">
				<li>로그인</li>
				<li id = "line">|</li>
				<li>회원가입</li>
			</ul>
		</div>
		<div class = "headerContent">
			<img src="resources/img/gazee_logo.png" id = "logo">
			<ul class = "menu">
				<li>마이페이지</li>
				<li>커뮤니티</li>
				<li>고객센터</li>
				<li>신고하기</li>
				<li><button id = "sell">판매하기</button></li>
			</ul>
		</div>
	</div>
	<div id = "content">
		<h3>오늘의 인기상품</h3>
		<div id="best">
			
		</div>
		<h3>이런 상품은 어때요?</h3>
		<div class="itemContainer">
			
		</div>
		
	</div>
</div>
<div id = "footer">
	<div>
		<p style = "margin: 0; font-size: 12px;">Copyrightⓒ 2023. gazee. All rights reserved.</p>
	</div>
</div>
	
</body>
</html>