<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
    <link rel="shortcut icon" href="<c:url value='/resources/favicon.ico'/>" type="images/x-icon"/>
    <link rel="icon" href="<c:url value='/resources/favicon.ico'/>" type="images/x-icon"/>
<title>로그인</title>
<style type="text/css">
	.login{
		margin: 0 auto;
		margin-top: 200px;
		width: 500px;
		height: 500px;
		color: #fff;
	}
</style>
</head>
<body>
<form role="form" method="post">
	<table border="1" style="border: none; background-color: rgb(33, 39, 61);" class="login">
		<tr>
			<th colspan="2">로그인</th>
		</tr>
		<tr>
			<td style="text-align: center;">아이디</td>
			<td><input type="text" name="id" style="margin-left: 10px; width: 200px;"></td>
		</tr>
		<tr>
			<td style="text-align: center;">비밀번호</td>
			<td><input type="password" name="pw" style="margin-left: 10px; width: 200px;"></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<input type="submit" formaction="sign_in" value="로그인"  style="background-color: aqua; font-weight: bold; color: #000; width: 200px; height: 30px">
				<button formaction="sign_up" formmethod="get" style="background-color: aqua; font-weight: bold; color: #000; width: 200px; height: 30px">회원가입</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>