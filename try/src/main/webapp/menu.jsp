<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="#">
        <i class="fa d-inline fa-lg fa-stop-circle"></i>
        <b> 玩伴平台</b>
      </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar10">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar10">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link" href="index.jsp">HOME</a> </li>
          <li class="nav-item"> <a class="nav-link" href="login.jsp">Login</a> </li>
          <li class="nav-item"> <a class="nav-link" href="signup.jsp">SignUP</a> </li>
        </ul> <a class="btn navbar-btn ml-md-2 btn-light text-dark" href="contacy.jsp">Contact us</a>
      </div>
    </div>
  </nav>
</body>
</html>