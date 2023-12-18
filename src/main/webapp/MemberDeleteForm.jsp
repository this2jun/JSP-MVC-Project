<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>회원 정보 삭제</title>
</head>
<body>
	<!-- Header.jsp 추가 -->
    <jsp:include page="Header.jsp" />
    <div class="container mt-5">
        <h2>회원정보삭제하기</h2>
        <form action="MemberDeleteProc.jsp" method = "post">
            <table class="table table-light table-bordered">
                <tr height="50">
                    <td align="center" width="150">아이디</td>
                    <td align = "center" width = "250"> <%=request.getParameter("id") %> </td>
                </tr>
                <tr height="50">
                    <td align="center" width="150">패스워드</td>
                    <td align="center" width="250">
                    <input type="password" name="pass1" /></td>
                </tr>
                <tr height = "50">
                    <td align = "center" colspan = "2">
                        <input type="hidden" name="id" value = "<%=request.getParameter("id") %>"/>
                        <input type="submit" value="회원삭제하기" class="btn btn-danger"/> &nbsp;&nbsp; </form>
                        <input type="button" value="회원전체보기" onclick ="location.href='MemberList.jsp'" class="btn btn-success"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
