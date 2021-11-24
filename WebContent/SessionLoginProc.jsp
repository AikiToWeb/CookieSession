<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2> 세션 로그인 처리1</h2>


<%
	request.setCharacterEncoding("utf-8");
	
	// 사용자로부터 데이터를 읽어들임
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	// 아이디와 패스워드를 세션으로 저장해 다음 페이지에도 가져갈 수 있음
	session.setAttribute("id", id);
	session.setAttribute("pass", pass);
	
	// 세션 유지시간 설정()
	session.setMaxInactiveInterval(60 * 3);	// 세션 3분간 아이디 유지
	
	response.sendRedirect("SessionMain.jsp");
	
%>

</body>
</html>