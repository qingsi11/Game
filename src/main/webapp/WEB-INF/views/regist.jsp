
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>注册</title>
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
			<form action="${ctp}/regist" class="form-horizontal" role="form" method="post">
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
						<label for="email" class="col-sm-2 control-label">邮箱</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" name="email" id="email" placeholder="请输入邮箱">
						</div>
					</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">注册</button>
					</div>
				</div>
			</form>
		</div>
	</div>
		
		
	</body>
</html>
