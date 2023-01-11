<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%@include file = "menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <title>µn¤J</title>
</head>

<body>
  <div class="text-center" style="">
    <div class="text-center" style="	background-image: url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;);	background-size: cover;	background-position: top left;	background-repeat: repeat;">
      <div class="container">
        <div class="row" style="">
          <div class="col-md-7 col-10 bg-white p-5 mx-auto mb-5 mt-5" style="">
            <h1 class="mb-4" style="">Log in</h1>
            <form action="login_DBSelect.jsp" style="">
              <div class="form-group"> <input type="text" class="form-control" placeholder="Enter account" id="playerid" name="playerid"> </div>
              <div class="form-group mb-3"> <input type="password" class="form-control" placeholder="Password" id="playpwd" name="playpwd"> <small class="form-text text-muted text-right">
                <%// <a href="changepassword.jsp" style="opacity: 0.5;" >forgot password</a>%>
                </small> </div>
                 <button type="submit" class="btn btn-primary">
                <font size="5">°e¥X</font>
              </button>
            </form>
            <font size="5"><a href="signup.jsp">SIGNUP</a></font>
          </div>
        </div>
      </div>
    </div>
    <div class="py-5 text-white" style="background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;); background-position: center center, center center; background-size: cover, cover; background-repeat: repeat, repeat;"></div>
	</div>
</body>

</html>