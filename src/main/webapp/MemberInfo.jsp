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
    
    <title>ȸ�� ���� ����</title>
</head>
<body>
	<!-- Header.jsp �߰� -->
    <jsp:include page="Header.jsp" />
<%
    String id = request.getParameter("id");
    MemberDAO mdao = new MemberDAO();
    MemberBean mbean = mdao.oneSelectMember(id);
%>
    <div class="container mt-5">
        <h2>ȸ����������</h2>
        <table class="table table-light table-bordered">
            <tr height = "50"> 
                <td align = "center" width = "150"> ���̵�</td>
                <td align = "center" width = "250"> <%=mbean.getId() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> �̸���</td>
                <td align = "center" width = "250"> <%=mbean.getEmail() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> ��ȭ��ȣ</td>
                <td align = "center" width = "250"> <%=mbean.getTel() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> ���</td>
                <td align = "center" width = "250"> <%=mbean.getHobby() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> ���</td>
                <td align = "center" width = "250"> <%=mbean.getJob() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> ����</td>
                <td align = "center" width = "250"> <%=mbean.getAge() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> ����</td>
                <td align = "center" width = "250"> <%=mbean.getInfo() %> </td>
            </tr>
            
            <tr height = "50"> 
                <td align = "center" colspan = "2">
                    <button onclick="location.href='MemberUpdateForm.jsp?id=<%=mbean.getId() %>'" class="btn btn-primary">ȸ������</button>
                    <button onclick="location.href='MemberDeleteForm.jsp?id=<%=mbean.getId()%>'" class="btn btn-danger"> ȸ������</button>
                    <button onclick="location.href='MemberList.jsp?id=<%=mbean.getId()%>'" class="btn btn-success"> ��Ϻ���</button>
                    <button onclick="location.href='MemberJoin.jsp?id=<%=mbean.getId()%>'" class="btn btn-secondary"> ȸ������</button>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
