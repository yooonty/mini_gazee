<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가지가지</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="resources/css/style2.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() { //body 읽어왔을때
		$.ajax({
			url : "best",
			success : function(res) {
				$('#best').append(res)
			}
		}) 
		$.ajax({
			url : "list",
			success : function(res) {
				$('#items').append(res)
			}
		})
		$('#search_button').click(function() {
			// 기존의 것 삭제됨.
			$('#best').empty()
			$('#items').empty()
			$.ajax({
				url : "search",
				data : {
					search : $('#search_bar').val(),
				},
				success : function(res) {
					alert(res)
					/* $.ajax({
						url : "list5",
						success : function(res) {
							$('#result').append(res + "<br>")
						}
					}) */
					
				},
				error : function() {
					alert('수정 실패!')
				},
			})
		})
	}) 
</script>
<style type="text/css">
	/* #best, .itemContainer {
		width: 1050px;
		margin: 0 auto;
	} */
	
	#search_bar {
		 width: 585px;
		 height: 43px;
		 padding: 0 0 0 20px;
		 border: 1px solid #ccc;
		 border-radius: 3px;
		 font-size: 14px;
		 color: #333;
		 letter-spacing: -1px;
	}
	
	#search_button {
		width: 175px;
  		height: 45px;
  		border-radius: 3px;
	    border: 1px;
	    background-color: #693FAA;
	    color: #fff;
	    line-height: 45px;
	    cursor: pointer;
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
		<div id="search">
			<input type="text" id="search_bar" placeholder="검색어를 입력하세요.">
			<input type="submit" id="search_button" value="검색하기">
		</div>
		<div id="best">
			<h3>오늘의 인기상품</h3>
			
		</div>
		<div id="items">
			<h3>이런 상품은 어때요?</h3>
			
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