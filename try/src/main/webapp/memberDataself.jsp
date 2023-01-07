<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />

<!DOCTYPE html>
<html>
	<%	
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT playerlist.playerid, playerlist.playpwd, playerlist.game1, playerlist.game2, playerlist.game3, messagelist.friendid FROM playerlist RIGHT JOIN messagelist ON playerlist.playerid = messagelist.playerid ";
	ResultSet rs = smt.executeQuery(sql);
	String playerid = request.getParameter("playerid");
	String playpwd = request.getParameter("playpwd");
	String game1 = request.getParameter("game1");
	String game2 = request.getParameter("game2");
	String game3 = request.getParameter("game3");
	%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <title>個人頁面</title>
</head>

<body>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="#">
        <i class="fa d-inline fa-lg fa-stop-circle"></i>
        <b> 個人頁面</b>
      </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar10">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar10">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link" href="index.jsp"><b>HOME</b></a> </li>
          <li class="nav-item"> <a class="nav-link" href="login.jsp"><b>Login</b></a> </li>
          <li class="nav-item"> <a class="nav-link" href="signup.jsp"><b>SignUP</b></a> </li>
        </ul> <a class="btn navbar-btn ml-md-2 btn-light text-dark" href="contacy.jsp">Contact us</a>
      </div>
    </div>
  </nav>
  <nav class="navbar navbar-expand-md navbar-light">
    <div class="container justify-content-center"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar3">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"> <a class="nav-link" href="#">玩過的電腦遊戲</a> </li>
          <li class="nav-item mx-2"> <a class="nav-link" href="#">玩過的手遊</a> </li>
          <li class="nav-item mx-2"> <a class="nav-link" href="GROUP.html">已參加的公會</a> </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="text-white align-items-center d-flex text-center flex-row-reverse h-100 w-100" style="background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;); background-position: center center, center center; background-size: cover, cover; background-repeat: repeat, repeat;">
    <div class="container">
      <div class="row" style="">
        <div class="col-md-4 col-sm-4 col-4 col-lg-4" style="">
          <div class="row">
            <div class="col-md-12">
              <div class="row">
                <div class="col-md-12 col-sm-12 col-12 col-lg-12"><img class="img-fluid d-block rounded-circle mx-auto w-50" src="https://static.pingendo.com/img-placeholder-3.svg"></div>
              </div>
              <div class="row"></div>
              <div class="row">
                <div class="col-md-12">
                  <div class="list-group">
                  <ul>
                    <li  class="list-group-item list-group-item-action"><% out.println( session.getAttribute("accessid") );%></li>
                    <li  class="list-group-item list-group-item-action"><%=rs.getString("game1") %></li>
                    <li  class="list-group-item list-group-item-action"><%=rs.getString("game2") %></li>
                    <li  class="list-group-item list-group-item-action"><%=rs.getString("game3") %></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="row ml-1 mr-0">
                <div class="bg-light col-10 col-sm-7 col-md-12 w-25 my-0 mx-auto ml-0 mr-0" style=""><a class="btn btn-link" href="changepassword.html">修改密碼</a>
                  <div class="row">
                    <div class="col-md-12"><a class="btn btn-link" href="#">創建公會</a>
                      <div class="row">
                        <div class="col-md-6"><a class="btn btn-primary" href="#" style="">加入黑名單</a></div>
                        <div class="col-md-6"><a class="btn btn-primary" href="#" style="">被檢舉次數</a></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4" style="">
          <div class="row">
            <div class="col-md-12">
              <div class="row">
                <div class="col-md-12" style="">
                  <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">玩過的遊戲</h5>
                      </div>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a><a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a><a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a><a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a><a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a><a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a><a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a><a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a><a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a><a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                      <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">List group </h5> <small class="text-muted">3 days ago</small>
                      </div>
                    </a>
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
                <div class="col-md-12"></div>
              </div>
              <div class="row">
                <div class="col-md-12"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action active" style="">個人標籤</a>
                <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
                <a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a>
                <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center">
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
      <div class="row">
        <div class="col-md-9 p-3" style="">
          <div class="row">
            <label class="col-2">訊息顯示<br></label>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><button type="submit" class="btn btn-primary ">已讀</button></div>
          </div>
          <div class="row">
            <label class="col-2">訊息顯示<br></label>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><button type="submit" class="btn btn-primary ">已讀</button></div>
          </div>
          <div class="row">
            <label class="col-2">訊息顯示<br></label>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><button type="submit" class="btn btn-primary ">已讀</button></div>
          </div>
          <div class="row">
            <label class="col-2">訊息顯示<br></label>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><button type="submit" class="btn btn-primary ">已讀</button></div>
          </div>
          <div class="row">
            <label class="col-2">訊息顯示<br></label>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><button type="submit" class="btn btn-primary ">已讀</button></div>
          </div>
          <div class="row">
            <label class="col-2">訊息顯示<br></label>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><button type="submit" class="btn btn-primary ">已讀</button></div>
          </div>
          <div class="row">
            <label class="col-2">訊息顯示<br></label>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
            <div class="col-md-4" style=""><button type="submit" class="btn btn-primary ">已讀</button></div>
          </div>
          <div class="row">
            <div class="col-md-12" style=""><i class="fa fa-3x fa-camera-retro"></i></div>
          </div>
          <div class="form-group row">
            <div class="col-md-12">
              <form class="form-inline">
                <label class="col-2">傳送訊息<br></label>
                <div class="row">
                  <div class="col-md-4" style=""><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a></div>
                  <div class="col-md-4" style="">
                    <div class="form-group row">
                      <div class="col-10 col-md-9 offset-md-1"><input type="text" class="form-control form-control-lg" id="inlineFormInput" placeholder="輸入訊息"></div>
                    </div>
                  </div>
                  <div class="col-md-2 offset-md-2" style=""><button type="submit" class="btn btn-primary w-100 align-items-center">傳送</button></div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-3 align-items-center p-3 w-100 h-100 justify-content-center">
          <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action active" style=""> 好友列表</a>
            <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a><a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a><a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a><a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a><a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a><a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
            <a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a><a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a>
            <a href="#" class="list-group-item list-group-item-action">Porta ac consectetur ac</a>
            <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
          </div>
          <div class="row">
            <div class="col-md-12"><a class="btn btn-primary" href="#">刪除好友</a></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-6 p-3"> <i class="d-block fa fa-circle-o fa-5x text-primary"></i> </div>
        <div class="col-lg-4 col-6 p-3">
          <p> <a href="https://goo.gl/maps/AUq7b9W7yYJ2" target="_blank"> Fake street, 100 <br>NYC - 20179, USA</a> </p>
          <p> <a href="tel:+246 - 542 550 5462">+1 - 256 845 87 86</a> </p>
          <p class="mb-0"> <a href="mailto:info@pingendo.com">info@pingendo.com</a> </p>
        </div>
        <div class="col-md-4 p-3">
          <h5> <b>About</b> </h5>
          <p class="mb-0"> I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 text-center">
          <p class="mb-0 mt-2">© 2014-2018 Pingendo. All rights reserved</p>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo>
</body>

</html>