<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>���� �α���</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2 class="my-3">�α���</h2>
        <form action="SessionLoginProc.jsp" method="post">
            <div class="form-group row">
                <label for="id" class="col-sm-2 col-form-label">���̵�</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="id" name="id">
                </div>
            </div>
            <div class="form-group row">
                <label for="password" class="col-sm-2 col-form-label">�н�����</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="password" name="pass">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">�α���</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
	