<%@page import="model.MemberDAO"%>
<%@page import="model.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #7073EB;
            color: white;
        }
    </style>
    <title>��� ȸ�� ����</title>
</head>
<body>
    <!-- Header.jsp �߰� -->
    <jsp:include page="Header.jsp" />

    <%
        MemberDAO mdao = new MemberDAO();
        Vector<MemberBean> vec= mdao.allSelectMember();
    %>
    
    <div class="container mt-5">
        <h2>��� ȸ�� ����</h2>
        <table class="table table-light table-bordered">
            <tr height = "50">
                <td align = "center" width = "150">���̵�</td>
                <td align = "center" width = "250">�̸���</td>
                <td align = "center" width = "200">��ȭ��ȣ</td>
                <td align = "center" width = "200">���</td>
            </tr>
            <%
            for(int i = 0; i<vec.size(); i++){
                MemberBean bean = vec.get(i);
            %>
            <tr height = "50">
                <td align = "center" width = "150">
                <a href="MemberInfo.jsp?id=<%=bean.getId()%>" style="color: blue;">
                    <%=bean.getId() %></a></td>
                <td align = "center" width = "250"><%=bean.getEmail()%></td>
                <td align = "center" width = "200"><%=bean.getTel()%></td>
                <td align = "center" width = "200"><%=bean.getHobby()%></td>
            </tr>
            <%} %>
        </table>
    </div>
</body>
</html>
