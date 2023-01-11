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
	String sql = "SELECT Group.公會名稱, playerlist.playerid FROM [Group] INNER JOIN playerlist ON Group.公會名稱 = playerlist.group";
	ResultSet rs = smt.executeQuery(sql);
	String group = request.getParameter("group");
	String playerid = request.getParameter("playerid");
	rs.next();
	%>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <nav class="navbar navbar-expand-md navbar-light">
    <div class="container justify-content-center"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar3" style="">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"> <a class="nav-link" href="memberDataself.jsp">
              <font size="5">個人頁面</font>
            </a></li>
          <li class="nav-item mx-2"> <a class="nav-link" href="friend.jsp">
              <font size="5">好友列表</font>
            </a> </li>
          <li class="nav-item mx-2"> <a class="nav-link" href="message.jsp">
              <font size="5">傳送訊息</font>
            </a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="py-5 text-center text-white h-100 align-items-center d-flex" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .75), rgba(0, 0, 0, .75)), url(https://static.pingendo.com/cover-bubble-dark.svg);  background-position: center center, center center;  background-size: cover, cover;  background-repeat: repeat, repeat;">
    <div class="container py-5">
      <div class="row">
        <div class="col-md-6" style="">
          <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action active"> 成員</a>
            <a href="#" class="list-group-item list-group-item-action disabled"><% out.println( session.getAttribute("accessid") );%></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
            <a href="#" class="list-group-item list-group-item-action"><%=rs.getString("playerid") %></a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card">
            <div class="card-header">
              <ul class="nav nav-pills card-header-pills">
                <li class="nav-item"> <a class="nav-link active" href="#">設定公告</a> </li>
                <li class="nav-item"> <a class="nav-link disabled" href="#">設定公告</a> </li>
              </ul> Header
            </div>
            <div class="card-header">
              <ul class="nav nav-pills card-header-pills">
                <li class="nav-item"> <a class="nav-link disabled" href="#">發布內容</a> </li>
              </ul> Header
            </div>
            <div class="card-body">
              <h4>Title</h4>
              <p>Some quick example text to build on the card title .</p>
              <p>Some quick example text to build on the card title .</p>
            </div>
            <div class="card-body">
              <h4>Title</h4>
              <p style="">Some quick example text to build on the card title .</p>
              <p>Some quick example text to build on the card title .</p>
            </div>
            <div class="card-body">
              <h4>Title</h4>
              <p>Some quick example text to build on the card title .</p>
              <p>Some quick example text to build on the card title .</p>
            </div>
            <div class="card-body">
              <h4>Title</h4>
              <p>Some quick example text to build on the card title .</p>
              <p>Some quick example text to build on the card title .</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-2">公會裡比較多人玩的遊戲</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="">
    <div class="container-fluid">
      <div class="row">
        <div class="col-6 col-md-3 p-0"> <img class="img-fluid d-block" src="img/APEX.jpg"> </div>
        <div class="col-6 col-md-3 p-0"> <img class="img-fluid d-block" src="img/Boblox.jpg"> </div>
        <div class="col-6 col-md-3 p-0"> <img class="img-fluid d-block" src="img/LOL.jpg"> </div>
        <div class="col-6 col-md-3 p-0"> <img class="img-fluid d-block" src="img/WoW.jpg"> </div>
        <div class="col-6 col-md-3 p-0"> <img class="img-fluid d-block" src="img/valorant.jpg"> </div>
        <div class="col-6 col-md-3 p-0"> <img class="img-fluid d-block" src="img/tsum.jpg"> </div>
        <div class="col-6 col-md-3 p-0"> <img class="img-fluid d-block" src="img/PUBG.jpg"> </div>
        <div class="col-6 col-md-3 p-0"> <img class="img-fluid d-block" src="img/overwatch2.jpg"> </div>
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