<%@page import="model.BoardBean"%>
<%@page import="model.BoardDAO"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>전체 게시글 보기</title>
</head>
<body>
	<!-- Header.jsp 추가 -->
    <jsp:include page="Header.jsp" />
    <div class="container">
        <h2 class="mt-5">전체 게시글 보기</h2>

        <%
        int pageSize = 10;
        String pageNum = request.getParameter("pageNum");

        if (pageNum == null) {
            pageNum = "1";
        }
        int count = 0;
        int number = 0;

        int currentPage = Integer.parseInt(pageNum);

        BoardDAO bdao = new BoardDAO();

        count = bdao.getAllCount();

        int startRow = (currentPage - 1) * pageSize + 1;
        int endRow = currentPage * pageSize;

        Vector<BoardBean> vec = bdao.getAllBoard(startRow, endRow);
        number = count - (currentPage - 1) * pageSize;
        %>

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">글제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                    <th scope="col">조회수</th>
                </tr>
            </thead>
            <tbody>
                <% 
                for (int i = 0; i < vec.size(); i++) {
                    BoardBean bean = vec.get(i);
                %>
                <tr>
                    <td><%=i + 1%></td>
                    <td><a href="BoardInfo.jsp?num=<%=bean.getNum()%>" style="text-decoration: none"><%=bean.getSubject()%></a></td>
                    <td><%=bean.getWriter()%></td>
                    <td><%=bean.getReg_date()%></td>
                    <td><%=bean.getReadcount()%></td>
                </tr>
                <% 
                }
                %>
            </tbody>
        </table>
        <button type="button" class="btn btn-primary" onclick="location.href='BoardWriteForm.jsp'">글쓰기</button>

        <%
        if (count > 0) {
            int pagecount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
            int startPage = 1;
            if (currentPage % 10 != 0) {
                startPage = (int) (currentPage / 10) * 10 + 1;
            } else {
                startPage = ((int) (currentPage / 10) - 1) * 10 + 1;
            }
            int pageBlock = 10;
            int endPage = startPage + pageBlock - 1;
            if (endPage > pagecount)
                endPage = pagecount;

            if (startPage > 10) {
        %>
        <a href="BoardList.jsp?pageNum=<%=startPage - 10%>">[이전]</a>
        <% 
            }
            for (int i = startPage; i <= endPage; i++) {
        %>
        <a href="BoardList.jsp?pageNum=<%=i%>">[<%=i%>]</a>
        <% 
            }
            if (endPage < pagecount) {
        %>
        <a href="BoardList.jsp?pageNum=<%=startPage + 10%>">[다음]</a>
        <% 
            }
        } 
        %>
    </div>
</body>
</html>
