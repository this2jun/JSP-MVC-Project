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
        int num = Integer.parseInt(request.getParameter("num").trim());
        BoardDAO bdao = new BoardDAO();
        BoardBean bean = bdao.getOneBoard(num);
        %>

        <h2 class="mt-5">�Խñ� ����</h2>
        <table class="table">
            <tbody>
                <tr>
                    <th scope="row">�۹�ȣ</th>
                    <td><%=bean.getNum()%></td>
                    <th scope="row">��ȸ��</th>
                    <td><%=bean.getReadcount()%></td>
                </tr>
                <tr>
                    <th scope="row">�ۼ���</th>
                    <td><%=bean.getWriter()%></td>
                    <th scope="row">�ۼ���</th>
                    <td><%=bean.getReg_date()%></td>
                </tr>
                <tr>
                    <th scope="row">�̸���</th>
                    <td colspan="3"><%=bean.getEmail()%></td>
                </tr>
                <tr>
                    <th scope="row">����</th>
                    <td colspan="3"><%=bean.getSubject()%></td>
                </tr>
                <tr>
                    <th scope="row">�۳���</th>
                    <td colspan="3"><%=bean.getContent()%></td>
                </tr>
            </tbody>
        </table>
        <button type="button" class="btn btn-primary" onclick="location.href='BoardReWriteForm.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level=<%=bean.getRe_level()%>'">��۾���</button>
        <button type="button" class="btn btn-secondary" onclick="location.href='BoardUpdateForm.jsp?num=<%=bean.getNum()%>'">�����ϱ�</button>
        <button type="button" class="btn btn-danger" onclick="location.href='BoardDeleteForm.jsp?num=<%=bean.getNum()%>'">�����ϱ�</button>
        <button type="button" class="btn btn-info" onclick="location.href='BoardList.jsp'">��Ϻ���</button>
    </div>
</body>
</html>
