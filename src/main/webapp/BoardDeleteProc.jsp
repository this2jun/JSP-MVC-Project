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
	String pass = request.getParameter("password");
	int num = Integer.parseInt(request.getParameter("num"));
	//�����ͺ��̽� ����
	BoardDAO bdao = new BoardDAO();
	String password = bdao.getPass(num);
	// ���� �н����� ���� delete form���� �ۼ��� �н����� ��
	if (pass.equals(password)) {
		//�н����� �Ѵ� ���ٸ�
		bdao.deleteBoard(num);
		response.sendRedirect("BoardList.jsp");
	} else {
	%>
	<script>
		alert("�н����� �޶� ������ �� �����ϴ�");
		history.go(-1);
	</script>
	<%
	}
	%>
</body>
</html>