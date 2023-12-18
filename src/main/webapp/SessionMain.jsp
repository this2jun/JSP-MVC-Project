<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>메인 홈페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
    String section = request.getParameter("section");
    if (section == null) {
        section = "Section.jsp";
    }
%>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <jsp:include page="Header.jsp" />
            </div>
        </div>
        
            <div class="col-12">
                <jsp:include page="<%=section%>" />
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <jsp:include page="Footer.jsp" />
            </div>
        </div>
       
    </div>
</body>
</html>
