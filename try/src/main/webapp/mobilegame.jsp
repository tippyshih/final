<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
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
  <div class="py-5 text-center text-white align-items-center d-flex h-50" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .75), rgba(0, 0, 0, .75)), url(https://static.pingendo.com/cover-bubble-dark.svg);  background-position: center center, center center;  background-size: cover, cover;  background-repeat: repeat, repeat;">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-2">mobile GAMES<br></h1>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="text-center mx-auto col-md-8">
          <h1 class="mb-3">I enjoy with my whole heart</h1>
          <p class="lead">I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-1.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-2.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-3.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-4.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-3.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-4.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-1.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-2.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-2.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-1.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-4.svg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block" src="https://static.pingendo.com/img-placeholder-3.svg"> </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center">
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-12">
          <h1 class="mb-3">A wonderful group of colleagues</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 col-6 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="https://static.pingendo.com/img-placeholder-1.svg" width="150" alt="Card image cap">
          <h4> <b>J. W. Goethe</b> </h4>
          <p class="mb-0">CEO and founder</p>
        </div>
        <div class="col-lg-3 col-6 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="https://static.pingendo.com/img-placeholder-2.svg" width="150" alt="Card image cap">
          <h4> <b>G. W. John</b> </h4>
          <p class="mb-0">Co-founder</p>
        </div>
        <div class="col-lg-3 col-6 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="https://static.pingendo.com/img-placeholder-3.svg" width="150">
          <h4> <b>J. G. Wolf</b> </h4>
          <p class="mb-0">CFO</p>
        </div>
        <div class="col-lg-3 col-6 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="https://static.pingendo.com/img-placeholder-4.svg" width="150">
          <h4> <b>A. Gang</b> </h4>
          <p class="mb-0">CTO</p>
        </div>
      </div>
      <div class="row d-flex justify-content-center">
        <div class="col-lg-3 col-6 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="https://static.pingendo.com/img-placeholder-4.svg" width="150" alt="Card image cap">
          <h4> <b>G. W. John</b> </h4>
          <p class="mb-0">Co-founder</p>
        </div>
        <div class="col-lg-3 col-6 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="https://static.pingendo.com/img-placeholder-1.svg" width="150">
          <h4> <b>J. G. Wolf</b> </h4>
          <p class="mb-0">CFO</p>
        </div>
        <div class="col-lg-3 col-6 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="https://static.pingendo.com/img-placeholder-4.svg" width="150">
          <h4> <b>A. Gang</b> </h4>
          <p class="mb-0">CTO</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <p class="mb-0">© 2014-2018 Pingendo. All rights reserved</p>
        </div>
      </div>
    </div>
  </div>
</body>

</html>