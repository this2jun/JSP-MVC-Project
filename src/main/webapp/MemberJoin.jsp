<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>회원 가입</title>
</head>
<body>
	<!-- Header.jsp 추가 -->
    <jsp:include page="Header.jsp" />
    <div class="container mt-5">
        <h2>회원 가입</h2>
        <form action="MemBerJoinProc.jsp" method="post">
            <table class="table table-light table-bordered">
                <tr height="50">
                    <td width="150" align="center">아이디</td>
                    <td width="350" align="center"><input type="text" name="id" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">패스워드</td>
                    <td width="350" align="center"><input type="password" name="pass1" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">패스워드확인</td>
                    <td width="350" align="center"><input type="password" name="pass2" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">이메일</td>
                    <td width="350" align="center"><input type="email" name="email" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">전화번호</td>
                    <td width="350" align="center"><input type="tel" name="tel" size="40" class="form-control"/></td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">관심분야</td>
                    <td width="350" align="center">
                        <input type="checkbox" name="hobby" value="Java" />Java &nbsp;&nbsp;
                        <input type="checkbox" name="hobby" value="Python" />Python &nbsp;&nbsp;
                        <input type="checkbox" name="hobby" value="C++" />C++ &nbsp;&nbsp;
                        
                    </td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">희망회사</td>
                    <td width="350" align="center">
                        <select name = "job" id="" class="form-select">
                            <option value="프론트엔드">프론트엔드</option><option value="백엔드">백엔드</option>
                            <option value="DB개발자">DB개발자</option><option value="퍼블리싱">퍼블리싱</option>
                        </select>
                    </td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">병역해당</td>
                    <td width="350" align="center">
                        <input type="radio" name="age" value="군필" />군필 &nbsp;&nbsp;
                        <input type="radio" name="age" value="미필" />미필 &nbsp;&nbsp;
                        <input type="radio" name="age" value="해당없음" />해당없음 &nbsp;&nbsp;
                        
                    </td>
                </tr>
                <tr height="50">
                    <td width="150" align="center">하고싶은말</td>
                    <td width="350" align="center">
                        <textarea name="info" cols="40" rows="5" class="form-control"></textarea>
                    </td>
                </tr>
                <tr height="50">
                    <td align="center" colspan = "2">
                        <input type = "submit" value="회원가입" class="btn btn-primary"/>
                        <input type = "reset" value="취소" class="btn btn-secondary"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
