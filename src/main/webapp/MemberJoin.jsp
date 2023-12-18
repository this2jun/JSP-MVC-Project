<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>ȸ�� ����</title>
</head>
<body>
	<!-- Header.jsp �߰� -->
    <jsp:include page="Header.jsp" />
    <div class="container mt-5">
        <h2>ȸ�� ����</h2>
        <form action="MemBerJoinProc.jsp" method="post">
            <table class="table table-light table-bordered">
                <tr height="50">
                    <td width="150" align="center">���̵�</td>
                    <td width="350" align="center"><input type="text" name="id" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">�н�����</td>
                    <td width="350" align="center"><input type="password" name="pass1" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">�н�����Ȯ��</td>
                    <td width="350" align="center"><input type="password" name="pass2" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">�̸���</td>
                    <td width="350" align="center"><input type="email" name="email" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">��ȭ��ȣ</td>
                    <td width="350" align="center"><input type="tel" name="tel" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">���ɺо�</td>
                    <td width="350" align="center">
                        <input type="checkbox" name="hobby" value="Java" />Java &nbsp;&nbsp;
                        <input type="checkbox" name="hobby" value="Python" />Python &nbsp;&nbsp;
                        <input type="checkbox" name="hobby" value="C++" />C++ &nbsp;&nbsp;
                        
                    </td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">���ȸ��</td>
                    <td width="350" align="center">
                        <select name = "job" id="" class="form-select">
                            <option value="����Ʈ����">����Ʈ����</option><option value="�鿣��">�鿣��</option>
                            <option value="DB������">DB������</option><option value="�ۺ���">�ۺ���</option>
                        </select>
                    </td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">�����ش�</td>
                    <td width="350" align="center">
                        <input type="radio" name="age" value="����" />���� &nbsp;&nbsp;
                        <input type="radio" name="age" value="����" />���� &nbsp;&nbsp;
                        <input type="radio" name="age" value="�ش����" />�ش���� &nbsp;&nbsp;
                        
                    </td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">�ϰ������</td>
                    <td width="350" align="center">
                        <textarea name="info" cols="40" rows="5" class="form-control"></textarea>
                    </td>
                </tr>
                <tr height="50">
                    <td align="center" colspan = "2">
                        <input type = "submit" value="ȸ������" class="btn btn-primary"/>
                        <input type = "reset" value="���" class="btn btn-secondary"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
