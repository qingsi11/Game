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
<!--修改员工信息的模态框-->
<div class="modal fade" id="gameUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel1">游戏修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">游戏名称</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="gameName_update_static"></p>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">游戏简介</label>
                        <div class="col-sm-10">
                            <input type="text" name="gbi" class="form-control" id="gamebi_update_input"
                                   placeholder="xxx">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">发行时间</label>
                        <div class="col-sm-10">
                            <input type="text" name="gtime" class="form-control" id="gtime_update_input"
                                   placeholder="xxxx-xx-xx">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">类别</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="gtype" id="type_update_select"></select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="game_update_btn">更新</button>
            </div>
        </div>
    </div>
</div>
<!-- 新增员工信息的模态框 -->
<div class="modal fade" id="gameAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">添加游戏</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">游戏名称</label>
                        <div class="col-sm-10">
                            <input type="text" name="gname" class="form-control" id="gname_add_input"
                                   placeholder="xxx">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">游戏简介</label>
                        <div class="col-sm-10">
                            <input type="text" name="gbi" class="form-control" id="gamebi_add_input"
                                   placeholder="xxx">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">发行时间</label>
                        <div class="col-sm-10">
                            <input type="text" name="gtime" class="form-control" id="gtime_add_input"
                                   placeholder="xxxx-xx-xx">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">类别</label>
                        <div class="col-sm-4">
                            <!--传送类别id即可-->
                            <select class="form-control" name="gtype" id="type_add_select"></select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="game_save_btn">保存</button>
            </div>
        </div>
    </div>
</div>


<%--数据显示页面--%>
<div class="container" id = "container">
    <%--        //标题行--%>
    <div class="row">
        <div class="col-md-12">
            <h1>游戏管理</h1>
        </div>
    </div>
    <%--        //按钮--%>
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <button class="btn btn-primary" id="game_add_model">新增</button>
            <button class="btn btn-danger">删除</button>
        </div>
    </div>
    <%--        //显示表格数据--%>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" id="games">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>游戏名称</th>
                        <th>游戏类型</th>
                        <th>游戏简介</th>
                        <th>发行时间</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>

                </tbody>


            </table>
        </div>
    </div>
    <%--        //分页--%>
    <div class="row">
        <%--            分页文字信息--%>
        <div class="col-md-6" id="page_info_area">

        </div>
         <div class="col-md-6" id="page_nav_area">

         </div>

    </div>
</div>

<script type="text/javascript">
    //总记录数,当前页码
    var totalRecord;
    var currentNum;


    $(function (){
        to_page(1)
    });

    function to_page(pn){
        $.ajax({
            url:"${ctp}/tohome",
            data:"pn=" + pn,
            type:"GET",
            success:function (result){
                build_games_table(result);
                build_page_info(result);
                build_page_nav(result);
                //console.log(result);
            }
        })
    }



    function build_games_table(result){
        //清空表格
        $("#games tbody").empty();
        var games = result.extend.pageInfo.list;
        $.each(games,function (index,item){
            var gameIdTd = $("<td></td").append(item.id);
            var gameNameTd = $("<td></td").append(item.gname);
            var gametypeTd = $("<td></td").append(item.gtype);
            var gameBiTd = $("<td></td").append(item.gbi);
            var gametimeTd = $("<td></td").append(item.gtime);
            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            editBtn.attr("edit-id",item.id);
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            delBtn.attr("delete-id",item.id);

            var btnTd = $("<td></td>").append(editBtn).append(delBtn);
            $("<tr></tr>").append(gameIdTd).append(gameNameTd).append(gametypeTd).append(gameBiTd).append(gametimeTd).append(btnTd).
            appendTo("#games tbody");
        });

    }
    //分页
    function build_page_info(result){
        $("#page_info_area").empty();
        $("#page_info_area").append("当前" + result.extend.pageInfo.pageNum + "页，总共有" +result.extend.pageInfo.pages+"页数,总共用" +result.extend.pageInfo.total +"条记录" )
        currentNum = result.extend.pageInfo.pageNum
        totalRecord = result.extend.pageInfo.total;
    }

    function build_page_nav(result){
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
        var prePageli = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if (result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageli.addClass("disabled");
        }else {
            firstPageLi.click(function (){
                to_page(1);
            })
            prePageli.click(function (){
                to_page(result.extend.pageInfo.pageNum - 1);
            })
        }
        var nextPageli = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));

        if (result.extend.pageInfo.hasNextPage == false){
            nextPageli.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else {

            nextPageli.click(function (){
                to_page(result.extend.pageInfo.pageNum + 1);
            })

            lastPageLi.click(function (){
                to_page(result.extend.pageInfo.pages);
            })
        }

        ul.append(firstPageLi).append(prePageli);
        $.each(result.extend.pageInfo.navigatepageNums,function (index,item){

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if (result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function (){
                to_page(item);
            })
            ul.append(numLi)
        });
        ul.append(nextPageli).append(lastPageLi);

        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area")

    }

    //点击新增按钮弹出模态框
    $("#game_add_model").click(function (){
        getTypes("#type_add_select");
        $("#gameAddModal").modal({
            backdrop:"static"
        });
    });
    //查出游戏类别信息
    function getTypes(ele) {
        $(ele).empty();
        $.ajax({
            url:"${ctp}/types",
            type: "GET",
            success:function (result) {
                 console.log(result);
                $.each(result.extend.types,function (){
                    let optionEle = $("<option ></option>").append(this.typename).attr("value", this.typename);
                    optionEle.appendTo(ele);
                });
            }
        })
    }

    //校验表单数据
    function validate_add_form(){
        //校验游戏名称
        let gname = $("#gname_add_input").val();
        var regName = /(^[a-zA-Z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,8})/;

        if (! regName.test(gname)){
            // alert("用户名可以是3-16位英文数字和2-8位中文字符")
            show_validate_msg("#gname_add_input","error","用户名可以是3-16位英文数字和2-8位中文字符")
            return false;
        }else {
            show_validate_msg("#gname_add_input","success","");

        }

        return true;

    }

    
    function show_validate_msg(ele,status,msg) {
        $(ele).parent().remove("has-success has-error");
        $(ele).next().text("")
        if ("success"==status){
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text(msg);
        }else if ("error" == status){
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(msg);
        }
    }
    



    //保存员工
    $("#game_save_btn").click(function () {
        if (!validate_add_form()) {
            return false;
        }
        $.ajax({
            url:"${ctp}/game",
            type:"POST",
            data: $("#gameAddModal form").serialize(),
            success:function (result) {
               $("#gameAddModal").modal('hide')
                to_page(totalRecord);
            }
        })
    });






    //点击修改按钮
    $(document).on("click",".edit_btn",function (){
        getTypes("#type_update_select")

        getGame($(this).attr("edit-id"));
        $("#game_update_btn").attr("edit-id",$(this).attr("edit-id"));
        $("#gameUpdateModal").modal({
            backdrop:"static"
        });
    });

    //点击更新,更新游戏信息
    $("#game_update_btn").click(function () {
            $.ajax({
                url:"${ctp}/game/" + $(this).attr("edit-id"),
                type:"PUT",
                data:$("#gameUpdateModal form").serialize(),
                success:function (result) {
                    //alert(result.msg)
                    //关闭模态框
                    $("#gameUpdateModal").modal("hide");
                    to_page(currentNum);
                }
            })
    });

    //删除按钮
    $(document).on("click",".delete_btn",function () {
        //选择所删除的游戏
        // alert($(this).parents("tr").find("td:eq(1)").text());
        var  game = $(this).parents("tr").find("td:eq(1)").text()
        var gameId = $(this).attr("delete-id")
        if (confirm("确认删除【"+game+"】游戏吗？")){
            //确认删除
            $.ajax({
                url:"${ctp}/game/" + gameId,
                type:"DELETE",
                success:function (result) {
                    alert(result.msg);
                    to_page(currentNum);
                }
            })
        }


    });
    //获取游戏数据用于回显 <select class="form-control" name="gtype" id="type_update_select"></select>
    function getGame(id){
        $.ajax({
            url:"${ctp}/game/"+ id,
            type:"GET",
            success:function (result) {
               var  game = result.extend.game;
               $("#gameName_update_static").text(game.gname);
               $("#gamebi_update_input").val(game.gbi);
               $("#gtime_update_input").val(game.gtime);
               $("#gameUpdateModal select").val(game.gtype);
            }
        })
    }



</script>
</body>
</html>
