<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>댓글 입력하기</title>
</head>
<body>
	<!-- Header.jsp 추가 -->
    <jsp:include page="Header.jsp" />
    <div class="container">
        <h2 class="mt-5">댓글 입력하기</h2>

        <%
        int num = Integer.parseInt(request.getParameter("num"));
        int ref = Integer.parseInt(request.getParameter("ref"));
        int re_step = Integer.parseInt(request.getParameter("re_step"));
        int re_level = Integer.parseInt(request.getParameter("re_level"));
        %>

        <form action="BoardReWriteProc.jsp" method="post">
            <table class="table">
                <tbody>
                    <tr>
                        <th scope="row">작성자</th>
                        <td><input type="text" class="form-control" name="writer"></td>
                    </tr>
                    <tr>
                        <th scope="row">제목</th>
                        <td><input type="text" class="form-control" name="subject" value="L[답변]"></td>
                    </tr>
                    <tr>
                        <th scope="row">이메일</th>
                        <td><input type="email" class="form-control" name="email"></td>
                    </tr>
                    <tr>
                        <th scope="row">비밀번호</th>
                        <td><input type="password" class="form-control" name="password"></td>
                    </tr>
                    <tr>
                        <th scope="row">글내용</th>
                        <td><textarea class="form-control" name="content"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="hidden" name="ref" value="<%=ref%>" />
                            <input type="hidden" name="re_step" value="<%=re_step%>" />
                            <input type="hidden" name="re_level" value="<%=re_level%>" />
                            <button type="submit" class="btn btn-primary">답글쓰기 완료</button>
                            <button type="reset" class="btn btn-secondary">취소</button>
                            <button type="button" class="btn btn-info" onclick="location.href='BoardList.jsp'">전체글보기</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>
