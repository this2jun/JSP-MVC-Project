<%@page import="model.BoardBean"%>
<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>�Խñ� ����</title>
</head>
<body>
	<!-- Header.jsp �߰� -->
    <jsp:include page="Header.jsp" />
    <div class="container">
        <%
        BoardDAO bdao = new BoardDAO();
        int num = Integer.parseInt(request.getParameter("num"));
        //�ϳ��� �Խñ��� ����
        BoardBean bean = bdao.getOneUpdateBoard(num);
        %>
        <h2 class="mt-5">�Խñ� ����</h2>
        <form action="BoardDeleteProc.jsp" method="post">
            <table class="table">
                <tbody>
                    <tr>
                        <th scope="row">�ۼ���</th>
                        <td><%=bean.getWriter()%></td>
                        <th scope="row">�ۼ���</th>
                        <td><%=bean.getReg_date()%></td>
                    </tr>
                    <tr>
                        <th scope="row">����</th>
                        <td colspan="3"><%=bean.getSubject()%></td>
                    </tr>
                    <tr>
                        <th scope="row">�н�����</th>
                        <td colspan="3"><input type="password" class="form-control" name="password"></td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <input type="hidden" name="num" value="<%=num%>" />
                            <button type="submit" class="btn btn-danger">�ۻ���</button>
                            <button type="button" class="btn btn-secondary" onclick="location.href='BoardList.jsp'">��Ϻ���</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>
