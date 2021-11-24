<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	// Center값을 변경하기 위해서 request 객체를 이용하여 Center값을 받아옴
	String center = request.getParameter("center");
	
	// 처음 SessionMain.jsp를 실행하면 null 값이 실행되기 때문에 null 처리를 해줘야 함
	if (center == null) {
		center = "Center.jsp";
	}

%>
<center>
	<table border="1" width="800">
	<!-- top -->
	<tr height="150">
		<td align="center" colspan="2">
			<jsp:include page="Top.jsp" />
		</td>
	</tr>
	
	<!-- left -->
	<tr height="400">
		<td align="center" width="200">
			<jsp:include page="Left.jsp" />
		</td>
		
	<!-- center -->
		<td align="center" width="600">
			<jsp:include page="<%=center %>" />
		</td>
	</tr>
	
	<!-- Bottom -->
	<tr height="100">
		<td align="center" colspan="2">
			<jsp:include page="Bottom.jsp" />
		</td>
	</tr>
	</table>
</center>
</body>
</html>