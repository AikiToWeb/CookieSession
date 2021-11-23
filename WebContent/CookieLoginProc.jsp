<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 아이디 저장 체크박스가 체크 되었는지 판단여부
	String save = request.getParameter("save");
	// 아이디 값을 저장
	String id = request.getParameter("id");

	// 체크되었는지를 비교 판단
	if (save != null) { // 아이디 저장이 눌렸다면

		// 쿠키를 사용하려면 쿠키클래스를 생성해줘야 함
		Cookie cookie = new Cookie("id", id); // 첫 번째 스트링 : 키값 | 두번째 스트링 : 해당하는 value값 넣어줌 
		// 쿠키 유효시간 설정
		cookie.setMaxAge(60 * 30);	// 30분간 유효
		
		// 사용자에게 쿠키값을 넘겨줌
		response.addCookie(cookie); 
		
		out.println("쿠키 생성 완료");
	}
	%>
</body>
</html>