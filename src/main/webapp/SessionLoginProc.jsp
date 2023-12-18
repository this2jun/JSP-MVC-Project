<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 로그인 처리1</h2>
	
	<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	session.setAttribute("id",id);
	session.setAttribute("pass",pass);
	
	session.setMaxInactiveInterval(60*2);
	response.sendRedirect("SessionMain.jsp");
	%>

</body>
</html>