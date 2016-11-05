<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><html class="no-js fixed-layout">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>用户组管理</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/resources/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/app.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/amazeui.datatables.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/css/admin.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/layer/skin/layer.css">
</head>
<body>
	<!-- header start -->
	<jsp:include page="/jsp/admin/header.jsp" />
	<!-- header end -->
	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<jsp:include page="/jsp/admin/sidebar.jsp" />
		<!-- sidebar end -->
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg">用户管理</strong> / <small>用户组管理</small>
					</div>
				</div>
				<hr>
				<div class="am-u-sm-12">
					<table class="am-table am-table-striped am-table-bordered am-table-compact am-text-nowrap" width="100%" id="example">
						<thead>
							<tr>
								<th><input type="checkbox" id='checkAll'></th>
								<th>组 ID</th>
								<th>组名称</th>
								<th>组描述</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
			<!-- footer start -->
			<jsp:include page="/jsp/admin/footer.jsp" />
			<!-- footer end -->
		</div>
		<!-- content end -->
	</div>
	<div id="add-modal">
		<form class="am-form am-form-horizontal" id="add-form">
			<br>
			<div class="am-form-group">
				<label class="am-u-sm-2 am-form-label">组名称</label>
				<div class="am-u-sm-10">
					<input type="text" id="" name="username" placeholder="用户组名称(必填)" minlength="3" required>
				</div>
			</div>
			<div class="am-form-group">
				<label class="am-u-sm-2 am-form-label">组描述</label>
				<div class="am-u-sm-10">
					<textarea id="" name="descr" placeholder="用户组的描述信息" maxlength="100"></textarea>
				</div>
			</div>
		</form>
	</div>
	<div id="edit-modal">
		<form class="am-form am-form-horizontal" id="edit-form">
			<br>
			<input type="hidden" name="id">
			<div class="am-form-group">
				<label class="am-u-sm-2 am-form-label">组名称</label>
				<div class="am-u-sm-10">
					<input type="text"  name="name" placeholder="用户组名称(必填)" required>
				</div>
			</div>
			<div class="am-form-group">
				<label class="am-u-sm-2 am-form-label">组描述</label>
				<div class="am-u-sm-10">
					<textarea name="descr" placeholder="用户组的描述信息" maxlength="100"></textarea>
				</div>
			</div>
		</form>
	</div>
	<script src="<%=request.getContextPath()%>/resources/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/layer/layer.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/amazeui.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/amazeui.datatables.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/amazeui.datatables.plugin.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/dateFormat.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/dwrService.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/app.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/admin/group.js"></script>
</body>
</html>