<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="wireframe.css">
  <title>登出</title>
</head>
	<%
	//if(session.getAttribute("access") !="n"){
	//session.removeAttribute("accessid");
	//session.invalidate();
	//}else{
	//response.sendRedirect("login.jsp");
	//}%>
<body>
  
	<div class="py-5 text-center text-white h-100 align-items-center d-flex pi-draggable" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .75), rgba(0, 0, 0, .75)), url(https://static.pingendo.com/cover-bubble-dark.svg);  background-position: center center, center center;  background-size: cover, cover;  background-repeat: repeat, repeat;" draggable="true">
    <div class="container py-5">
      <div class="row">
        <div class="mx-auto col-lg-8 col-md-10">
          <h1 class="display-3 mb-4">登出成功</h1>
          <a href="login.jsp" class="btn btn-lg btn-primary mx-1">登入</a> <a class="btn btn-lg mx-1 btn-outline-primary" href="index.jsp">首頁</a> </div>
	</div>
    </div>
  </div>
</body>

</html>