<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />
<%
session.setAttribute("access","n");
if(request.getParameter("playerid") !=null &&
	request.getParameter("playpwd") !=null){
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String getpaperdata = "SELECT * FROM playerlist WHERE playerid='"+
			request.getParameter("playerid")+"' AND playpwd='" +
			request.getParameter("playerpwd")+"'";
				ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		session.setAttribute("access","y");
		session.setAttribute("accessid",request.getParameter("playerid"));
			session.setMaxInactiveInterval(5);
		response.sendRedirect("member data.html");
	}else
		out.println("帳號密碼不符！請重新登入");
}
%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <title>登入</title>
</head>

<body>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark" style="">
    <div class="container"> <a class="navbar-brand" href="#">
        <i class="fa d-inline fa-lg fa-stop-circle"></i>
        <b contenteditable="true"> 陪玩平台</b>
      </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar10" style="">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar10">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link" href="index.html"><b>HOME</b></a> </li>
          <li class="nav-item"> <a class="nav-link" href="login.html"><b>Login</b></a> </li>
          <li class="nav-item"> <a class="nav-link" href="signup.html"><b>SignUP</b></a> </li>
        </ul> <a class="btn navbar-btn ml-md-2 btn-light text-dark" href="contacy us.html"><b>Contact us</b></a>
      </div>
    </div>
  </nav>
  <div class="text-center" style="">
    <div class="text-center" style="	background-image: url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;);	background-size: cover;	background-position: top left;	background-repeat: repeat;">
      <div class="container">
        <div class="row" style="">
          <div class="col-md-7 col-10 bg-white p-5 mx-auto mb-5 mt-5" style="">
            <h1 class="mb-4" style="">Log in</h1>
            <form action="login_DBSelect.jsp" method="post" style="">
         <span class="login100-form-title p-b-53">
					<%if (request.getParameter("status")!="" && request.getParameter("status")!=null){
						if(request.getParameter("status").equals("loginerror")){ %>
						<p><font color="red">帳號或密碼錯誤，請重新輸入!</font></p>
					<%}
					}%>					
				</span> 
              <div class="form-group"> <input type="text" class="form-control" placeholder="Enter account" id="playerid" required> <span class="focus-input100"></span> </div>
              <div class="form-group mb-3"> <input type="password" class="form-control" placeholder="Password" id="playerpwd" required> <small class="form-text text-muted text-right">
              <span class="focus-input100"></span>
                </small> </div> <button type="submit" class="btn btn-primary">
                <font size="5">確定</font>
              </button>
            </form>
            <font size="5"><a href="signup.html">SIGNUP</a></font>
          </div>
        </div>
      </div>
    </div>
    <div class="py-5 text-white" style="background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;); background-position: center center, center center; background-size: cover, cover; background-repeat: repeat, repeat;"></div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" style=""></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous" style=""></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" style=""></script>
    <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo>
  </div>
</body>

</html>