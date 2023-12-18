<%@page import="model.MemberBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
   
    <title>ȸ�����������ϱ�</title>
</head>
<body>
	<!-- Header.jsp �߰� -->
    <jsp:include page="Header.jsp" />
    <%
    String id = request.getParameter("id");
    MemberDAO mdao = new MemberDAO();
    MemberBean mbean = mdao.oneSelectMember(id);
    %>
    <div class="container">
        <h2 class="mt-5">ȸ�����������ϱ�</h2>
        <form action="MemberUpdateProc.jsp" method = "post">
            <div class="form-group">
                <label for="id">���̵�</label>
                <input type="text" class="form-control" id="id" value="<%=mbean.getId()%>" readonly>
            </div>
            <div class="form-group">
                <label for="email">�̸���</label>
                <input type="email" class="form-control" id="email" name="email" value="<%=mbean.getEmail()%>">
            </div>
            <div class="form-group">
                <label for="tel">��ȭ��ȣ</label>
                <input type="tel" class="form-control" id="tel" name="tel" value="<%=mbean.getTel()%>">
            </div>
            <div class="form-group">
                <label for="pass1">�н�����</label>
                <input type="password" class="form-control" id="pass1" name="pass1">
            </div>
            <input type="hidden" name="id" value="<%=mbean.getId()%>">
            <button type="submit" class="btn btn-primary">ȸ�������ϱ�</button>
            <button type="button" class="btn btn-secondary" onclick="location.href='MemberList.jsp'">ȸ����ü����</button>
        </form>
    </div>
</body>
</html>
