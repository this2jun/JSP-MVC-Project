<%@page import="model.MemberBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <title>회원 정보 보기</title>
</head>
<body>
	<!-- Header.jsp 추가 -->
    <jsp:include page="Header.jsp" />
<%
    String id = request.getParameter("id");
    MemberDAO mdao = new MemberDAO();
    MemberBean mbean = mdao.oneSelectMember(id);
%>
    <div class="container mt-5">
        <h2>회원정보보기</h2>
        <table class="table table-light table-bordered">
            <tr height = "50"> 
                <td align = "center" width = "150"> 아이디</td>
                <td align = "center" width = "250"> <%=mbean.getId() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> 이메일</td>
                <td align = "center" width = "250"> <%=mbean.getEmail() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> 전화번호</td>
                <td align = "center" width = "250"> <%=mbean.getTel() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> 취미</td>
                <td align = "center" width = "250"> <%=mbean.getHobby() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> 취미</td>
                <td align = "center" width = "250"> <%=mbean.getJob() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> 나이</td>
                <td align = "center" width = "250"> <%=mbean.getAge() %> </td>
            </tr>
            <tr height = "50"> 
                <td align = "center" width = "150"> 정보</td>
                <td align = "center" width = "250"> <%=mbean.getInfo() %> </td>
            </tr>
            
            <tr height = "50"> 
                <td align = "center" colspan = "2">
                    <button onclick="location.href='MemberUpdateForm.jsp?id=<%=mbean.getId() %>'" class="btn btn-primary">회원수정</button>
                    <button onclick="location.href='MemberDeleteForm.jsp?id=<%=mbean.getId()%>'" class="btn btn-danger"> 회원삭제</button>
                    <button onclick="location.href='MemberList.jsp?id=<%=mbean.getId()%>'" class="btn btn-success"> 목록보기</button>
                    <button onclick="location.href='MemberJoin.jsp?id=<%=mbean.getId()%>'" class="btn btn-secondary"> 회원가입</button>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
