<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form action="/auth/loginProc" method="POST">
		<div class="form-group">
			<label for="username">username:</label> <input type="text" name="username" class="form-control" placeholder="Enter Username" id="username">
		</div>
		<div class="form-group">
			<label for="password">Password:</label> <input type="password" name="password" class="form-control" placeholder="Enter password" id="password">
		</div>

		<button id="btn-login" class="btn btn-primary">·Î±×ÀÎ</button>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=200a8505f21aeb2b8d4ea17c9bc5e609&redirect_uri=http://localhost:8000/auth/kakao/callback&response_type=code"><image height="38px" src="/image/kakao_login_button.png" /></a>
	</form>
</div>

<!-- <script src="/js/user/user.js"></script> -->
<%@ include file="../layout/footer.jsp"%>
