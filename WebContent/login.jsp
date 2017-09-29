<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <body>
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document" style="width:420px;">
                <div class="modal-content" style="width:420px;">
                    <div class="modal-header" style="background:#428bca; color:#fff;">
                        <h4 class="modal-title" id="myModalLabel">仓库货物管理系统</h4>
                    </div>
                    <form>
                    <div class="modal-body">
                        <table>
                            <tr>
                            	<td class="login-key"><font style="color:red">*</font>用户名称：</td>
                            	<td style="color:red;"><input type="text" maxlength="32" value="admin" name="username" id="username"  class="form-control login-input "  placeholder="用户名" />
                            	<div id="show" style="margin-top:5px"></div></td>
                            	
                            </tr>                                               
                            <tr class="login-tr">
                                <td class="login-key"><font style="color:red">*</font>登录密码：</td>
                                <td class="login-val"><input type="password" maxlength="32" value="123"name="password" id="password" class="form-control login-input " placeholder="密码" value="" /></td>
                            </tr>                                                            
                        </table>
                    </div>
                    <div class="modal-footer">
                        <a href="getStoreList.action" class="btn btn-primary" >登录</a>                       
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
 <div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="modal-small-label">
		<div class="modal-dialog modal-sm" role="document"">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">提醒</h4>
				</div>
				<div class="modal-body">
					 <span id="msg"></span>
				</div>		
			</div>			
		</div>		
</div>
<script type="text/javascript">  		
		 function checklogin(){
			 $("#msg").css("color","green");
				$("#msg").text("登录成功！3秒后跳转");
				$("#msg").append("&nbsp\;<i class=\"fa fa-spinner\"></i>");
				$("#mymodal").modal();
				setTimeout("window.location.href='<%=request.getContextPath()%>/getStoreList.action'",2000);	 
		 }
</script>
</html>