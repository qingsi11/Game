<%--
  Created by IntelliJ IDEA.
  User: zhanghong
  Date: 2021/12/20
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>游戏搜索</title>
    <%
        pageContext.setAttribute("ctp",request.getContextPath());
    %>
    <script type="text/javascript" src="${ctp}/static/js/jquery1.11.3.js"></script>
    <link href="${ctp}/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="${ctp}/static/bootstrap/js/bootstrap.js"></script>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">taptap</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">游戏中心</a></li>
                    <li><a href="#">个人中心</a></li>
                </ul>
                <form action="toSearch" class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" name="search" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default" >搜索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="toRegist"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
                    <li><a href="tologin"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>


<div class="container">
    <c:forEach items="${games}" var="game">
    <div class="row ">
            <div class="col-sm-8 col-md-6">
                <div class="thumbnail container-fluid">
                    <img src="${ctp}/${game.gicon}"  alt="...">
                    <div class="caption">
                        <h3>${game.gname}</h3>
                        <p>${game.gbi}</p>
                        <p><a href="#" class="btn btn-primary" role="button">详情</a> <a href="#" class="btn btn-default" role="button">收藏</a></p>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

</div>
    <script type="text/javascript">



    </script>
</body>
</html>
