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
    <div class="container mt-5">
        <h2>ȸ�����������ϱ�</h2>
        <form action="MemberDeleteProc.jsp" method = "post">
            <table class="table table-light table-bordered">
                <tr height="50">
                    <td align="center" width="150">���̵�</td>
                    <td align = "center" width = "250"> <%=request.getParameter("id") %> </td>
                </tr>
                <tr height="50">
                    <td align="center" width="150">�н�����</td>
                    <td align="center" width="250">
                    <input type="password" name="pass1" /></td>
                </tr>
                <tr height = "50">
                    <td align = "center" colspan = "2">
                        <input type="hidden" name="id" value = "<%=request.getParameter("id") %>"/>
                        <input type="submit" value="ȸ�������ϱ�" class="btn btn-danger"/> &nbsp;&nbsp; </form>
                        <input type="button" value="ȸ����ü����" onclick ="location.href='MemberList.jsp'" class="btn btn-success"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
