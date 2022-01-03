<%--
  Created by IntelliJ IDEA.
  User: zhanghong
  Date: 2021/12/7
  Time: 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <%
        pageContext.setAttribute("ctp",request.getContextPath());
    %>
    <script type="text/javascript" src="${ctp}/static/js/jquery1.11.3.js"></script>
    <link href="${ctp}/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="${ctp}/static/bootstrap/js/bootstrap.js"></script>
<%--    <script type="text/javascript" src="${ctp}/static/js/vue.js"></script>--%>
<%--    <script type="text/javascript" src="${ctp}/static/js/axios.min.js"></script>--%>
</head>

<body>
    <div class="container" id = "container">
<%--        //标题行--%>
        <div class="row">
            <div class="col-md-12">
                <h1>SSM-CRUD</h1>
            </div>
        </div>
<%--        //按钮--%>
        <div class="row">
            <div class="col-md-4 col-md-offset-8">
                <button class="btn btn-primary">新增</button>
                <button class="btn btn-danger">删除</button>
            </div>
        </div>
<%--        //显示表格数据--%>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover">
                    <tr>
                        <th>#</th>
                        <th>empName</th>
                        <th>gender</th>
                        <th>email</th>
                        <th>deptName</th>
                        <th>操作</th>
                    </tr>

                    <c:forEach items="${pageInfo.list}" var="game">
                        <tr>
                            <td>${game.id}</td>
                            <td>${game.gname}</td>
                            <td>{{}</td>
                            <td>aaass</td>
                            <td>asdasd</td>
                            <td>
                                <button class="btn btn-primary btn-sm">
                                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                    编辑
                                </button>
                                <button class="btn btn-danger btn-sm">
                                    <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                    删除
                                </button>
                            </td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
        </div>
<%--        //分页--%>
        <div class="row">
<%--            分页文字信息--%>
            <div class="col-md-6">
                当前第{{}页,总共页,总共有记录
            </div>
<%--    分页条信息--%>
            <div class="c0l-md-6">
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li><a href="${ctp}/tohome?pn=1">首页</a> </li>
                        <c:if test="">
                            <li>
                                <a href="${ctp}/tohome?pn=" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>


                        <c:forEach items="${pageInfo.pageSize}" var="paga_Num">
                            <c:if test="${pagaNum == pageInfo.pageNum}">
                                <li class="active"><a href="#">${paga_Num}</a></li>
                            </c:if>
                            <c:if  test="${pagaNum == pageInfo.pageNum}">

                                <li><a href="${ctp}/tohome?pn=${paga_Num}">${paga_Num}</a></li>
                            </c:if>
                        </c:forEach>

                        <c:if test="${pageInfo.hasNextPage}">
                            <li>
                                <a href="${ctp}/tohome?pn=${pageInfo.pageNum + 1}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>

                        <li><a href="${ctp}/tohome?pn=${pageInfo.pages}">末页</a> </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(function (){
            $.ajax({
                url:"${ctp}/tohome",
                data:"pn=1",
                type:"GET",
                success:function (result){
                    console.log(result)
                }
            })
        })

    </script>
</body>
</html>
