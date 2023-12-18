<%@page import="model.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		String []hobby = request.getParameterValues("hobby");
		String texthobby = "";
		for(int i = 0; i< hobby.length; i++){
			texthobby += hobby[i]+ " ";
		}
	%> 
		<jsp:useBean id="mbean" class = "model.MemberBean">
			<jsp:setProperty name="mbean" property="*"/>
		</jsp:useBean>
	
	<%
		mbean.setHobby(texthobby);
		MemberDAO mdao = new MemberDAO();
		mdao.insertMember(mbean);
		
		response.sendRedirect("MemberList.jsp");
%>
		
		<h2>아이디 : <%=mbean.getId() %></h2>
		<h2>이메일 : <%=mbean.getEmail() %></h2>
		<h2>취미 : <%=mbean.getHobby() %></h2>
		

</body>
</html>