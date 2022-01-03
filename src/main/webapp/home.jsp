<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <%
        pageContext.setAttribute("ctp",request.getContextPath());
    %>
    <script type="text/javascript" src="${ctp}/static/js/jquery1.11.3.js"></script>
    <link href="${ctp}/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="${ctp}/static/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
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
                    <li><a href="toGameCenter">游戏中心</a></li>
                    <li><a href="#">个人中心</a></li>
                </ul>
                <form action="toSearch" method="get" class="navbar-form navbar-left">
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
    <div class="container-fluid">
        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li class="slider-item" data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li class="slider-item" data-target="#myCarousel" data-slide-to="1" ></li>
                <li class="slider-item" data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <c:forEach items="${pageInfo.list}" var="game">
                    <c:if test="${game.id == 1}">
                        <div class="item active">
                            <img src="${ctp}/${game.gicon}" alt="First slide">
                            <div class="carousel-caption">${game.gname}</div>
                        </div>
                    </c:if>
                   <c:if test="${game.id != 1}">
                       <div class="item">
                           <img src="${ctp}/${game.gicon}" alt="First slide">
                           <div class="carousel-caption">${game.gname}</div>
                       </div>
                   </c:if>

                </c:forEach>
<%--                <div class="item active">--%>
<%--                    <img src="${ctp}/static/imgs/games/banner1.jpg" alt="First slide">--%>
<%--                    <div class="carousel-caption">王者荣耀</div>--%>
<%--                </div>--%>
<%--                <div class="item">--%>
<%--                    <img src="${ctp}/static/imgs/games/banner2.jpg" alt="Second slide">--%>
<%--                    <div class="carousel-caption">标题 2</div>--%>
<%--                </div>--%>
<%--                <div class="item">--%>
<%--                    <img src="${ctp}/static/imgs/games/banner3.jpg" alt="Third slide">--%>
<%--                    <div class="carousel-caption">标题 3</div>--%>
<%--                </div>--%>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" >
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<!--//缩略图-->
<div class="container">

    <div class="container-fluid">
        <div class="row">
            <c:forEach items="${pageInfo.list}" var="game">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="${ctp}/${game.gicon}" + ${game.gicon} alt="...">
                        <div class="caption">
                            <h3>${game.gname}</h3>
                            <p>${game.gbi}</p>
                            <p><a href="#" class="btn btn-primary" role="button">详情</a> <a href="#" class="btn btn-default" role="button">收藏</a></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

</div>
<div class="container container-fluid">
<div class="row">
    <%--            分页文字信息--%>
    <div class="col-md-6">
        当前第${pageInfo.pageNum}页,总共${pageInfo.pages}页,总共有${pageInfo.total}记录
    </div>
    <%--    分页条信息--%>
    <div class="col-md-6">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li><a href="${ctp}/togame/1">首页</a> </li>
                <c:if test="${pageInfo.hasPreviousPage}">
                    <li>
                        <a href="${ctp}/togame/${pageInfo.pageNum - 1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>


                <c:forEach items="${pageInfo.navigatepageNums}" var="paga_Num">
                    <c:if test="${pagaNum == pageInfo.pageNum}">
                        <li class="active"><a href="#">${paga_Num}</a></li>
                    </c:if>
                    <c:if  test="${pagaNum != pageInfo.pageNum}">

                        <li><a href="${ctp}/togame/${paga_Num}">${paga_Num}</a></li>
                    </c:if>
                </c:forEach>

                <c:if test="${pageInfo.hasNextPage}">
                    <li>
                        <a href="${ctp}/togame/${pageInfo.pageNum + 1}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>

                <li><a href="${ctp}/togame/${pageInfo.pages}">尾页</a> </li>
            </ul>
        </nav>
    </div>
</div>
</div>

<script type="text/javascript">

</script>

</body>
</html>
