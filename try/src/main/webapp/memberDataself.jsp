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
	String sql = "SELECT playerlist.playerid, playerlist.playpwd, playerlist.game1, playerlist.game2, playerlist.game3, playerlist.group, playerlist.namepos FROM playerlist";
	ResultSet rs = smt.executeQuery(sql);
	String playerid = request.getParameter("playerid");
	String playpwd = request.getParameter("playpwd");
	String game1 = request.getParameter("game1");
	String game2 = request.getParameter("game2");
	String game3 = request.getParameter("game3");
	String group = request.getParameter("group");
	String namepos = request.getParameter("namepos");
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
    <div class="container justify-content-center"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar3">
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
        </ul>
      </div>
    </div>
  </nav>
  <div class="text-white align-items-center d-flex text-center flex-row-reverse h-100 w-100" style="	background-image: url(img/memberdatabd.jpg);	background-position: top left;	background-size: 100%;	background-repeat: repeat;">
    <div class="container">
      <div class="row" style="">
        <div class="col-md-4 col-sm-4 col-4 col-lg-4" style="">
          <div class="row">
            <div class="col-md-12">
              <div class="row">
                <div class="col-md-12 col-sm-12 col-12 col-lg-12"><img class="img-fluid d-block rounded-circle mx-auto w-50" src="img/head.jpg"></div>
              </div>
              <div class="row"></div>
              <div class="row">
                <div class="col-md-12">
                  <div class="list-group">
                    <li class="list-group-item list-group-item-action"><% out.println( session.getAttribute("accessid") );%></li>
                  </div>
                </div>
              </div>
              <%// <div class="row ml-1 mr-0">
                //<div class="bg-light col-10 col-sm-7 col-md-12 w-25 my-0 mx-auto ml-1 mr-0" style=""> <a class="btn btn-link" href="changepassword.html">修改密碼</a>
                  //<div class="row">
                    //<div class="col-md-12"><a class="btn btn-link" href="#">被檢舉次數</a>
                      //<div class="row"> %>
                        <div class="col-md-12"><a class="btn btn-primary" href="group.jsp" style="">公會頁面</a></div>
                      <%//</div>
                     //</div>
                  //</div>
                //</div>
              //</div> %>
            </div>
          </div>
        </div>
        <div class="col-md-4" style="">
          <div class="row">
            <div class="col-md-12">
              <div class="row">
                <div class="col-md-12">
                  <div class="row"></div>
                  <div class="row" style=""></div>
                  <div class="row" style="">
                    <div class="col-md-12"><a href="#" class="list-group-item list-group-item-action active" style="">擅長的遊戲</a>
                    <li class="list-group-item list-group-item-action"><%=rs.getString("game1") %></li>
                    <li class="list-group-item list-group-item-action"><%=rs.getString("game2") %></li>
                    <li class="list-group-item list-group-item-action"><%=rs.getString("game3") %></li>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4" style="">
          <div class="row">
            <div class="col-md-12" style="">
              <div class="row">
                <div class="col-md-12" style="">
                  <div class="row">
                    <div class="col-md-12"></div>
                  </div>
                  <div class="row">
                    <div class="col-md-12"><li class="list-group-item list-group-item-action active">公會</li></div>
                  </div>
                  <div class="row">
                    <div class="col-md-12"><li class="list-group-item list-group-item-action"><%=rs.getString("group") %></li></div>
                  </div>
                  <div class="row"></div>
                  <div class="row"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="list-group">
                <li class="list-group-item list-group-item-action active" style="">個人標籤</li>
                <li class="list-group-item list-group-item-action" style=""><%=rs.getString("namepos") %></li>
             <form method=post action="memberdataother.jsp">
              <%if(session.getAttribute("accessId")!=null){
          		if(session.getAttribute("accessId").equals(rs.getString("memberId"))) {%>
          			<a href=""class="btn btn-lg text-dark btn-primary text-capitalize text-nowrap w-50">交友邀請</a></form>
		  		<%}
          	}%>
          </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>