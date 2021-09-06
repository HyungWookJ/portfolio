<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
	<link rel="shortcut icon" href="<c:url value='/resources/favicon.ico'/>" type="images/x-icon"/>
    <link rel="icon" href="<c:url value='/resources/favicon.ico'/>" type="images/x-icon"/>
    <script type="text/javascript" src="../resources/js/script.js"></script>
<title>회원가입</title>
<style type="text/css">
	.account{
		margin: 0 auto;
		margin-top: 200px;
		text-align: center;
		color: #fff;
	}
</style>
</head>
<body>
<form role="form" action="sign_Up" method="post">
	<table border="1" style="border: none; background-color: rgb(33, 39, 61); width: 500px; height: 500px;"  class="account">
		<tr>
			<th colspan="2" style="text-align: center;">회원가입</th>
		</tr>
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="id" id="id" style="border-color: blue;">
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw" id="pw" style="border-color: blue;"></td>
		</tr>
		<tr>
			<td>비밀번호 재확인</td>
			<td><input type="password" name="pwc" id="pwc" style="border-color: blue;"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" style="border-color: blue;"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="date" name="birthday"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<input type="radio" name="gender" value="남">남
				<input type="radio" name="gender" value="여">여
			</td>
		</tr>
		<tr>
			<td>휴대전화번호</td>
			<td><input type="text" name="phone" style="border-color: blue;" placeholder="' - '없이 11자리 입력하세요."></td>
		</tr>
		<tr>
			<td>E-Mail</td>
			<td><input type="text" name="email" style="border-color: blue;" placeholder="E-mail 주소를 입력하세요."></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<input type="submit" value="가입하기" style="background-color: aqua; font-weight: bold; color: #000; width: 200px; height: 40px;">
				<input type="submit" formaction="/" formmethod="get" value="홈으로" style="background-color: aqua; font-weight: bold; color: #000; width: 200px; height: 40px;">
			</td>
		</tr>
	</table>
</form>
</body>
</html>