<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모집 게시판 페이지</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<h1> 로그인 성공 page</h1>


<div>
	<p>${member.uid}님 환영합니다 !!</p>

</div>


<form id="logout_form">
	<input type="button" class="logout_btn" value="로그아웃">
</form>


<form id="mypage_form">
	<input type="button" class="mypage_btn" value="마이페이지">
</form>

<script>
$(document).ready(function(){
	$(".logout_btn").click(function(){
	alert("로그아웃 실행")
	$("#logout_form").attr("action", "/member/logout").submit();
	});
	  
	
	$(".mypage_btn").click(function(){
		alert("마이페이지 이동")
		$("#mypage_form").attr("action", "/member/mypage").submit();
		});
});
</script>
</body>
</html>