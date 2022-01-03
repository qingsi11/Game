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
    <%
        pageContext.setAttribute("ctp",request.getContextPath());
    %>
    <script type="text/javascript" src="${ctp}/static/js/jquery1.11.3.js"></script>
    <link href="${ctp}/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="${ctp}/static/bootstrap/js/bootstrap.js"></script>
</head>
<body>

<div >
    <div class="container-fluid">
        <form action="${ctp}/login" class="form-horizontal" role="form" method="post">
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

<%--            验证码--%>

            <div class="form-group">
                <label for="code" class="col-sm-2 control-label">验证码</label>
                <div class="col-sm-1">
                    <input type="text" class="form-control" id="code" name="code" placeholder="验证码" />
                </div>
                <div class="col-sm-1 ">
                    <img src="checkCode" alt="" width="100" height="32" class="passcode" style="height:43px;cursor:pointer;" onclick="this.src=this.src+'?'">
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

<script type="text/javascript" >
    function flushCode() {
        var time = new Date();
        document.getElementById("code").src = "/HelpProject/ImageServlet?time="
            + time;
    }
</script>
</body>
</html>
