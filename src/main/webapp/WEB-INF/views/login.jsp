<%--
  Created by IntelliJ IDEA.
  User: zhanghong
  Date: 2021/11/29
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
</head>
<body>
<%
    pageContext.setAttribute("ctp",request.getContextPath());
%>
<div >
    <div class="container-fluid">
        <form action="${ctp}/login" class="form-horizontal" role="form" method="get">
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label">用户名</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" name="username" id="username" placeholder="请输入用户名">
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-5">
                    <input type="password" class="form-control" name="password" id="password" placeholder="请输入密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">请记住我
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">登录</button>
                </div>
            </div>
        </form>

    </div>
</div>
</body>
</html>
