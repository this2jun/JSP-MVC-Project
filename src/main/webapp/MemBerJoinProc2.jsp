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
		
		String id = "GIS";
		String pass = "1234";
		String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
		try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("데이터베이스 연결중...");
		
		Connection con = DriverManager.getConnection(url, id, pass);
		System.out.println("데이터베이스 연결성공");
		
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, mbean.getId()); 
		pstmt.setString(2, mbean.getPass1());
		pstmt.setString(3, mbean.getEmail()); 
		pstmt.setString(4, mbean.getTel());
		pstmt.setString(5, mbean.getHobby()); 
		pstmt.setString(6, mbean.getJob());
		pstmt.setString(7, mbean.getAge()); 
		pstmt.setString(8, mbean.getInfo());
		
		pstmt.executeUpdate();
		System.out.println("레코드추가성공");
		
		con.close();
		pstmt.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
		
		<h2>아이디 : <%=mbean.getId() %></h2>
		<h2>이메일 : <%=mbean.getEmail() %></h2>
		<h2>취미 : <%=mbean.getHobby() %></h2>
		

</body>
</html>