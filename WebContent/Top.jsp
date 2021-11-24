<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 로그아웃 클릭시 파라미터를 통해서 로그아웃인지 여부를 확인
	String logout = request.getParameter("logout");	
	
	if (logout != null) {
		// 아이디에 null을 부여
		session.setAttribute("id", null);
		
		//즉시 세션 유지시간을 죽임
		session.setMaxInactiveInterval(0);	
	}
	
	
	// 세션을 통하여 id를 읽어들임
	String id = (String)session.getAttribute("id");

	// 로그인이 되어있지 않다면(세션값이 null일 경우 처리)
	if (id == null) {
		id = "게스트";
	}


%>




<!-- Top -->
<table width="800">
	<tr height="100">
		 <!-- 로고 이미 -->
		 <td colspan="2" align="center" width="200">
		 	<img alt="logo image" src="img/logo.png" width="200" height="70" onclick="location.href='SessionMain.jsp'">
		 </td>
		 <td colspan="5" align="center">
		 	<font size="10">공유해방</font>
		 </td>
	</tr>
	<tr height="50">
		<td width="100" align="center"> 연습실 </td>
		<td width="100" align="center"> 연습실 </td>
		<td width="100" align="center"> 연습실 </td>
		<td width="100" align="center"> 연습실 </td>
		<td width="100" align="center"> 연습실 </td>
		<td width="100" align="center"> 연습실 </td>
		<td width="200" align="center">
		<%
			if (id.equals("게스트")) {
		%>
			 <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>
		<%	} else { %>
		
			<%=id %>님 환영합니다.<button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>	
		<%} %>
		
		
		</td>
	</tr>
</table>
</body>
</html>