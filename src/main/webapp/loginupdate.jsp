<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>登录页[教师版]</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets//css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets//font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets//css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets//css/ace.min.css" />

		<!--[if lte IE 9]>
    <link rel="stylesheet" href="assets//css/ace-part2.min.css"/>
    <![endif]-->
		<link rel="stylesheet" href="assets//css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
    <link rel="stylesheet" href="assets//css/ace-ie.min.css"/>
    <![endif]-->

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
    <script src="assets//js/html5shiv.min.js"></script>
    <script src="assets//js/respond.min.js"></script>
    <![endif]-->
	</head>

	<body class="login-layout light-login">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center" style="margin-top: 100px;">
								<h1>
                            <i class="ace-icon fa fa-leaf green"></i>
                            <span class="grey" id="id-text2" style="font-size: 21px;">人体运动测试数据分析与管理系统</span>
                        </h1>
								<h4 class="blue" id="id-company-text"></h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main" style="padding-bottom: 20px;">
											<h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-coffee green"></i>
                                       				 请输入登录信息
                                    </h4>

											<div class="space-6"></div>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="工号"
                                                                   id="login_name" value="11001"/>
															<i class="ace-icon fa fa-user"></i>
														</span>
                                            </label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码"
                                                                   id="login_pd" value="12"/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

													<div class="space-4"></div>

													<div class="clearfix">
													
													<div class="radio-box">
										<input type="radio" id="user_type" name="type" value="student" />
										<label >普通用户</label>
										</div>
										<div class="radio-box">
										<input type="radio" id="user_type" name="type" value="teacher" />
										<label>管理员</label>
										</div>
										
														<button type="reset" class="width-45 pull-left btn btn-sm">
                                                    <i class="ace-icon fa fa-refresh"></i>
                                                    <span class="bigger-110">重置</span>
                                                </button>

														<button type="button" class="width-45 pull-right btn btn-sm btn-primary" id="login">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">登录</span>
                                                </button>
													</div>
												</fieldset>
											</form>

										</div>
										<!-- /.widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="#" data-target="#forgot-box" class="forgot-password-link" style="visibility: hidden;">
													<i class="ace-icon fa fa-arrow-left"></i> 忘记密码？
												</a>
											</div>

											<div>
												<a href="#" data-target="#signup-box" class="user-signup-link">
													去注册
													<i class="ace-icon fa fa-arrow-right"></i>
												</a>
											</div>
										</div>
									</div>
									<!-- /.widget-body -->
								</div>
								<!-- /.login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main" style="padding-bottom: 20px;">
											<h4 class="header red lighter bigger">
                                        <i class="ace-icon fa fa-key"></i>
                                                                                                      重置密码
                                    </h4>

											<div class="space-6"></div>
											<p>
												输入邮箱获得重置邮件
											</p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control"
                                                                   placeholder="Email"/>
															<i class="ace-icon fa fa-envelope"></i>
														</span>
                                            </label>

													<div class="clearfix">

														<button type="reset" class="width-45 pull-left btn btn-sm">
                                                    <i class="ace-icon fa fa-refresh"></i>
                                                    <span class="bigger-110">重置</span>
                                                </button>
														<button type="button" class="width-45 pull-right btn btn-sm btn-danger">
                                                    <i class="ace-icon fa fa-lightbulb-o"></i>
                                                    <span class="bigger-110">发送</span>
                                                </button>
													</div>
												</fieldset>
											</form>
										</div>
										<!-- /.widget-main -->

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												返回登录
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div>
									<!-- /.widget-body -->
								</div>
								<!-- /.forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main" style="padding-bottom: 20px;">
											<h4 class="header green lighter bigger">
                                        <i class="ace-icon fa fa-users blue"></i>
                                        请输入注册信息
                                    </h4>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="工号"
                                                                   id="register_name"/>
															<i class="ace-icon fa fa-user"></i>
														</span>
                                            </label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码"
                                                                   id="register_pd"/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                            </label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control"
                                                                   placeholder="重复输入密码" id="register_pd_again"/>
															<i class="ace-icon fa fa-retweet"></i>
														</span>
                                            </label>

													<div class="space-4"></div>

													<div class="clearfix">
														<button type="reset" class="width-45 pull-left btn btn-sm">
                                                    <i class="ace-icon fa fa-refresh"></i>
                                                    <span class="bigger-110">重置</span>
                                                </button>

														<button type="button" class="width-45 pull-right btn btn-sm btn-success" id="register">
                                                    <span class="bigger-110">注册</span>

                                                    <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                                </button>
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												<i class="ace-icon fa fa-arrow-left"></i> 返回登录
											</a>
										</div>
									</div>
									<!-- /.widget-body -->
								</div>
								<!-- /.signup-box -->
							</div>
							<!-- /.position-relative -->

						</div>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder" style="margin-right: 10px;">人体运动测试数据分析与管理系统</span> 北京航天二院
						</span>
					</div>
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div>
		<!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets//js/jquery-2.1.4.min.js"></script>
		<script src="/assets/js/jquery.cookie.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets//js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets//js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				$(document).on('click', '.toolbar a[data-target]', function(e) {
					e.preventDefault();
					var target = $(this).data('target');
					$('.widget-box.visible').removeClass('visible'); //hide others
					$(target).addClass('visible'); //show target
				});
			});
		</script>

		<script type="text/javascript">
			jQuery(function($) {
				//登录
				$('#login').on('click', function(e) {
					$.ajax({
						type: "post",
						url: "/user/login2",
						dataType: "json",
						data: {
							"user_name": $("#login_name").val(),
							"password": $("#login_pd").val()
						},
						success: function(data) {
							if(data.success) {
								window.open("/student/stuList.jsp", "_self"); 
								$.cookie("login_name", $("#login_name").val(), {
								});
								$.cookie("login_name", data.info, {
									path: "/"
								});

							} else {
								alert(data.info);
							}

						},
						error: function(err) {
							alert("error:" + err.info);
						}
					});
				});

				$('#register').on('click', function(e) {
					//先判断两次输入的密码是否相同
					var pd = $("#register_pd").val();
					var pd_again = $("#register_pd_again").val();
					if(pd != pd_again) {
						alert("两次输入的密码不一致！");
						$("#register_pd").val("");
						$("#register_pd_again").val("");
						return false;
					}
					$.ajax({
						type: "post",
						url: "/user/register",
						dataType: "json",
						data: {
							"user_name": $("#register_name").val(),
							"password": $("#register_pd").val()
						},
						success: function(data) {
							if(data.success) {
								alert(data.info + ",需要重新登录！");
								window.open("/loginupdate.jsp", "_self");
								$.cookie("user_name", $("#login_name").val(), {
									path: "/"
								});
								$.cookie("password", data.info, {
									path: "/"
								});
							} else {
								alert(data.info);
							}
						},
						error: function(err) {
							alert("error:" + err.info);
						}
					});
				});
			});
		</script>
	</body>

</html>