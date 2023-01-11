<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@include file = "menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />

<!DOCTYPE html>
<html>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM playerlist  WHERE memberId ='" +request.getParameter("memberId")+"'";
	String option="SELECT * FROM playerlist";
	ResultSet rs = smt.executeQuery(sql);
	ResultSet rs2 = smt.executeQuery(option);
	rs.next();
	%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <div class="py-5 text-center">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1>電子遊戲玩伴平台</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center" style="	background-image: url(img/fly.jpg);	background-position: bottom right;	background-size: 100%;	background-repeat: no-repeat;">
    <div class="container">
      <div class="row" style="	background-image: url(img/changepic.png);	background-position: top left;	background-size: 50%;	background-repeat: repeat;">
        <div class="mx-left col-md-6 col-10 bg-white p-5">
          <h1 class="mb-4">CHANGE</h1>
          <form>
            <div class="form-group"> <input type="text" class="form-control" placeholder="Enter your account" id="playerid"> </div>
            <div class="form-group mb-3"> <input type="password" class="form-control" placeholder="Password" id="playpwd">
              <div class="form-group"><label>再次輸入密碼</label><input type="password" class="form-control" placeholder="Password" id="playpwd"></div> <small class="form-text text-muted text-right"></small>
            </div> <button type="submit" class="btn btn-primary">確認送出</button>
          </form>
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