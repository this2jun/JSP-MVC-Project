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
		// ������ ���� �żҵ� ȣ��
		bdao.updateBoard(boardbean);
		// ������ �Ϸ�Ǹ� ��ü �Խñ� ����
		response.sendRedirect("BoardList.jsp");
	} else { // �н����� Ʋ�����
	%>
	<script>
		alert("�н����尡 �ٸ��� �ٽ� Ȯ�� �� �������ּ���");
		history.go(-1);
	</script>
	<%
	}
	%>


</body>
</html>