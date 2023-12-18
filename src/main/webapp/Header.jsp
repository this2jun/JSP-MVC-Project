<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>헤더 영역</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .nav-link {
            color: #495057 !important;
            transition: color 0.3s;
            border: 1px solid #495057;
            border-radius: 5px;
            padding: 5px;
            margin-right: 35px;
        }
        .nav-link:hover {
            color: #007bff !important;
            border-color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
<%
    String logout = request.getParameter("logout");
    if(logout != null){
        session.setAttribute("id", null);
        session.setMaxInactiveInterval(0);
    }
    
    String id = (String) session.getAttribute("id");
    if (id == null) {
        id = "Guest";
    }
%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="SessionMain.jsp">
            <img src="img/inha.png" width="120" height="100" alt="Logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
            	<li class="nav-item">
                    <a class="nav-link" href="#">동아리 소개</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">동아리 일정</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">활동사진</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">동아리 수상내역</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">팀 소개</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">가입안내</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="BoardWriteForm.jsp">게시판</a>
                </li>
            </ul>
            <div class="ml-auto">
                <span class="navbar-text">
                    <%=id%>님
                    <%if(id.equals("Guest")){ %>
                        <button onclick="location.href='SessionMain.jsp?section=SessionLoginForm.jsp'" class="btn btn-primary">로그인</button>
                        <button onclick="location.href='MemberJoin.jsp'" class="btn btn-secondary ml-3">회원가입</button>
                    <%}else{ %>
                        <button onclick="location.href='SessionMain.jsp?logout=1'" class="btn btn-secondary">로그아웃</button>
                    <%} %>
                </span>
            </div>
        </div>
    </nav>
</body>
</html>
