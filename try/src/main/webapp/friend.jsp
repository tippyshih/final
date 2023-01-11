<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@include file = "menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />

<!DOCTYPE html>
<html>
<%! int num=1; //宣告全域變數num %>
<%	
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT friendship.playerid, friendship.friendid, friendship.fgame1, friendship.fgame2, friendship.fgame3 FROM friendship";
	ResultSet rs = smt.executeQuery(sql);
	String playerid = request.getParameter("playerid");
	String friendid = request.getParameter("friendid");
	String fgame1 = request.getParameter("fgame1");
	String fgame2 = request.getParameter("fgame2");
	String fgame3 = request.getParameter("fgame3");
	rs.next(); //將指標移至最後一筆資料
	%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <nav class="navbar navbar-expand-md navbar-light">
    <div class="container justify-content-center"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar3">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"> <a class="nav-link" href="memberDataself.jsp">
              <font size="5">個人頁面</font>
            </a></li>
          <li class="nav-item mx-2"> <a class="nav-link" href="messsage.jsp">
              <font size="5">傳送訊息</font>
            </a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="py-5 text-center" style="	background-image: url(img/backgroud.jpg);	background-position: top left;	background-size: 100%;	background-repeat: repeat;">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <ul class="nav nav-pills">
            <li class="nav-item"> <a href="" class="active nav-link" data-toggle="pill" data-target="#tabone"><i class="fa fa-lg fa-envelope-open"></i> </a> </li>
            <li class="nav-item"> <a class="nav-link" href="" data-toggle="pill" data-target="#tabtwo"><i class="fa fa-lg fa-comment"></i></a> </li>
          </ul>
          <div class="tab-content mt-2">
            <div class="tab-pane fade" id="tabthree" role="tabpanel">
              <p class="">When I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms.</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row" style="">
        <div class="col-md-12 align-items-center p-3 w-100 h-100 justify-content-center " style="">
          <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action active" style=""> <% out.println( session.getAttribute("accessid") );%>好友</a>
            <a href="memberdata.html" class="list-group-item list-group-item-action w-100"><%=rs.getString("friendid") %></a>
            <a href="memberdata.html" class="list-group-item list-group-item-action w-100"><%=rs.getString("fgame1") %></a>
            <a href="memberdata.html" class="list-group-item list-group-item-action"><%=rs.getString("fgame2") %></a>
            <a href="memberdata.html" class="list-group-item list-group-item-action"><%=rs.getString("fgame3") %></a>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="row">
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <ul class="pagination pagination-lg">
                        <li class="page-item"> <a class="page-link" href="#"> <span>«</span></a> </li>
                        <li class="page-item active"> <a class="page-link" href="#">≤</a> </li>
                        <li class="page-item"> <a class="page-link" href="#">≥</a> </li>
                        <li class="page-item"> <a class="page-link" href="#"> <span>»</span></a> </li>
					</ul>
                      <div class="row">
                        <div class="col-md-12"><a class="btn btn-primary w-50 btn-lg" href="#">刪除好友</a></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!---按鈕一個訊息一個個人頁面
好友列表可以點進個人頁面
在一個按鈕可以傳訊息給好友
--->
</body>

</html>