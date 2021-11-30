<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
</head>
<body>
<%
    pageContext.setAttribute("ctp",request.getContextPath());
%>
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
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
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
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1" ></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="${ctp}/static/imgs/banner1.jpg" alt="First slide">
                    <div class="carousel-caption">王者荣耀</div>
                </div>
                <div class="item">
                    <img src="${ctp}/static/imgs/banner2.jpg" alt="Second slide">
                    <div class="carousel-caption">标题 2</div>
                </div>
                <div class="item">
                    <img src="${ctp}/static/imgs/banner3.jpg" alt="Third slide">
                    <div class="carousel-caption">标题 3</div>
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
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
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="${ctp}/static/imgs/games/c4.jpg" alt="...">
                    <div class="caption">
                        <h3>庐山</h3>
                        <p>...</p>
                        <p><a href="#" class="btn btn-primary" role="button">查看详情</a> <a href="#" class="btn btn-default" role="button">下载</a></p>

                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="${ctp}/static/imgs/games/c4.jpg" alt="...">
                    <div class="caption">
                        <h3>王者荣耀</h3>
                        <p>5v5竞技....</p>
                        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>

                    </div>
                </div>
            </div>



            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="${ctp}/static/imgs/games/c4.jpg" alt="...">
                    <div class="caption">
                        <h3>庐山</h3>
                        <p>...</p>
                        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>

                    </div>
                </div>
            </div>
        </div>

        `</div>


    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="${ctp}/static/imgs/games/c4.jpg" alt="...">
                    <div class="caption">
                        <h3>庐山</h3>
                        <p>...</p>
                        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>

                    </div>
                </div>
            </div>
        </div>

        </div>




</div>


</body>
</html>
