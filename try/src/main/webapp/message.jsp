<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
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
            </a> </li>
          <li class="nav-item mx-2"> <a class="nav-link" href="friend.jsp">
              <font size="5">好友列表</font>
            </a> </li>
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
        <div class="col-md-12">
          <div class="row">
            <div class="col-md-2">
              <font size="18"><label class="col-10">Label</label></font>
            </div>
            <div class="col-md-2" style="">
              <font size="18"><label class="col-10">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="form-group"><select class="custom-select">
                  <option selected="" value="Open this select menu">Open this select menu</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select></div>
            </div>
            <div class="col-md-2">
              <form class="form-inline">
                <div class="form-group">
                  <input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"> </div>
              </form>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select text-center">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row" style="">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row" style="">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row" style="">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select form-control-lg">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row" style="">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row" style="">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row" style="">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row" style="">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row" style="">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row" style="">
            <div class="col-md-2">
              <div class="col-md-12">
                <font size="18"><label class="col-10">Label</label></font>
              </div>
            </div>
            <div class="col-md-2">
              <font size="18"><label class="col-10 text-center">Label</label></font>
            </div>
            <div class="col-md-2">
              <div class="col-md-12">
                <div class="form-group"><select class="custom-select">
                    <option selected="" value="Open this select menu">Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select></div>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group"><input type="text" class="form-control" id="inputmailinline" placeholder="TEXT"></div>
            </div>
            <div class="col-md-2"><button type="submit" class="btn btn-primary btn-lg">發送</button></div>
          </div>
          <div class="row">
            <div class="col-md-12" style="">
              <font size="18"></font>
            </div>
            <font size="18" style=""></font>
          </div>
          <div class="row">
            <font size="18" style=""></font>
          </div>
        </div>
      </div>
    </div>
    <!---按鈕一個訊息一個個人頁面
好友列表可以點進個人頁面
在一個按鈕可以傳訊息給好友
--->
  </div>
</body>

</html>