<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='finalproject.DBConfig' />
<%
if(request.getParameter("playerid") !=null &&
	request.getParameter("playpwd") !=null){
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getpaperdata = "SELECT * FROM playerlist WHERE playerid='"+
			request.getParameter("playerid")+"' AND playpwd='" +
			request.getParameter("playpwd")+"'";
	ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		session.setAttribute("accessId",request.getParameter("playerid"));
		//session.setMaxInactiveInterval(20); �۰ʵn�X
		response.sendRedirect("index.jsp");
	}else
		out.println("�b���K�X���šI�Э��s�n�J");
}
%>
<html>
<head><title>�n�J</title></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="BIG5">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="assets/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
			<form class="login100-form validate-form flex-sb flex-w" action="login_DBSelect.jsp">
					 
					<span class="login100-form-title p-b-53">
						�n�J�t��
						<%if (request.getParameter("status")!="" && request.getParameter("status")!=null){
							if(request.getParameter("status").equals("loginerror")){ %>
							<p><font color="red">�b���αK�X���~�A�Э��s��J!</font></p>
						<%}else if(request.getParameter("status").equals("newmember")){%>
							<p><font color="blue">���\�[�J�|��!�Шϥαz���b�K�n�J</font></p>
						<%}else{} }%>					
					</span>   
				    <!--
					<a href="#" class="btn-face m-b-20">
						<i class="fa fa-facebook-official"></i>
						Facebook
					</a>
					<a href="#" class="btn-google m-b-20">
						<img src="assets/images/icons/icon-google.png" alt="GOOGLE">
						Google
					</a>
					 -->
					<div class="p-t-31 p-b-9">
						<span class="txt1">�b��
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="�п�J�b��">
						<input class="input100" type="text" name="memberId" required >
						<span class="focus-input100"></span>
					</div>
					
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							�K�X
						</span>

						<a href="#" class="txt2 bo1 m-l-5">
							�ѰO?
						</a>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "�п�J�K�X">
						<input class="input100" type="password" name="memberPwd"  required>
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							�n�J
						</button>
					</div>

					<div class="w-full text-center p-t-55">
						<span class="txt2">
							�|�L�b���H
						</span>

						<a href="signUp.jsp" class="txt2 bo1">
							�߰����U
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="assets/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="assets/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="assets/js/main.js"></script>

</body>
</html>