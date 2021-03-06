<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.wms.model.Store,com.wms.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head lang="en">
        <meta charset="UTF-8">
        <title>登录</title>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
		<link type="text/css" rel="stylesheet" href="css/bootstrap-dialog.min.css">
        <link type="text/css" rel="stylesheet" href="css/commone.css" /> 
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-dialog.min.js"></script>
        <script type="text/javascript" src="js/login.js"></script>                     
    </head>
    <style>
    .table th, .table td {
		text-align: center;
		vertical-align: middle!important;}
		a{cursor: pointer;}
    </style>
    <body>
	<div class="panel">
		<div class="panel-content">
			<div class="row">
				<div class="modal-header" style="background: #428bca; color: #fff;">
					<h4 class="modal-title" id="myModalLabel">仓库货物管理系统</h4>
				</div>

				<div class="modal-body">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>顺序号</th>
								<th>货物种类</th>
								<th>货物编号</th>
								<th>到货时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${Store}" var="store">
								<tr>
									<th scope="row">${store.storeid}</th>
									<td>${store.storename}</td>
									<td>${store.storecode}</td>
									<td>${store.storetime}</td>
									<td><a href="getStoreById.action?storecode=${store.storecode}"class="btn btn-link"><span
											class=" glyphicon glyphicon-eye-open"></span>查看</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<a class="btn btn-primary" href="login.jsp"
						style="margin: 0px 170px 20px"> <span
						class="glyphicon glyphicon-off"></span>&nbsp;&nbsp;退出
					</a>
				</div>

			</div>
		</div>
	</div>
	<div class="modal fade" id="mymodal" tabindex="-1" role="dialog"
		aria-labelledby="modal-small-label">
		<div class="modal-dialog modal-sm" role="document"">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">提醒</h4>
				</div>
				<div class="modal-body">
					 <span class="msg"></span>
					<table class="table table-bordered table-striped">					
						<tbody>	
							<c:forEach items="${product}" var="product">					
							<tr>														
								<td>货物编号</td>
								<td class="storecode">${product.store.storecode}</td>
							</tr>
							<tr>
								<td>货物种类</td>
								<td class="storename">${product.store.storename}</td>
							</tr>
							<tr>
								<td>货物品牌</td>
								<td class="productname">${product.productname}</td>
							</tr>
							<tr>
								<td>到货时间</td>
								<td class="storetime">${product.store.storetime}</td>
							</tr>
							<tr>
								<td>有效时间</td>
								<td class="producttime">${product.producttime}</td>
							</tr>
							</c:forEach>							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">  		
		$(document).ready(function () {
			$('#mymodal').modal();
	    });
	</script>
</body>
</html>