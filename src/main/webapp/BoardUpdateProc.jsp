<%@page import="model.BoardDAO"%>
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
	%>

	<jsp:useBean id="boardbean" class="model.BoardBean">
		<jsp:setProperty name="boardbean" property="*" />
	</jsp:useBean>

	<%
	BoardDAO bdao = new BoardDAO();
	String pass = bdao.getPass(boardbean.getNum());
	if (pass.equals(boardbean.getPassword())) {
		// 데이터 수정 매소드 호출
		bdao.updateBoard(boardbean);
		// 수정이 완료되면 전체 게시글 보기
		response.sendRedirect("BoardList.jsp");
	} else { // 패스워드 틀린경우
	%>
	<script>
		alert("패스워드가 다르니 다시 확인 후 수정해주세요");
		history.go(-1);
	</script>
	<%
	}
	%>


</body>
</html>