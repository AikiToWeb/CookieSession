<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>세션 로그인</h2>
<form action="SessionLoginProc.jsp" method="post">
<table width="400" border="1">
<tr height="50">
	<td width="150">아이디</td>
	<td width="*"><input type="text" name="id"></td>
</tr>
<tr height="50">
	<td width="150">비밀번호</td>
	<td width="*"><input type="password" name="pass"></td>
</tr>
<tr height="50">
	<td colspan="2" align="center"><input type="submit" value="로그인" /></td>
</tr>
</table>
</form>
</body>
</html>