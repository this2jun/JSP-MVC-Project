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
    <title>게시글쓰기</title>
</head>
<body>
	<!-- Header.jsp 추가 -->
    <jsp:include page="Header.jsp" />
    <div class="container">
        <h2 class="mt-5">게시글쓰기</h2>
        <form action="BoardWriterProc.jsp" method="post">
            <div class="form-group">
                <label for="writer">글쓴이</label>
                <input type="text" class="form-control" id="writer" name="writer">
            </div>
            <div class="form-group">
                <label for="subject">글제목</label>
                <input type="text" class="form-control" id="subject" name="subject">
            </div>
            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" class="form-control" id="email" name="email">
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" class="form-control" id="password" name="password">
            </div>
            <div class="form-group">
                <label for="content">글내용</label>
                <textarea class="form-control" id="content" rows="3" name="content"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">글쓰기</button>
            <input type="reset" class="btn btn-secondary" value="다시작성">
            <button type="button" class="btn btn-info" onclick="location.href='BoardList.jsp'">전체 게시글 보기</button>
        </form>
    </div>
</body>
</html>
