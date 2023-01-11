<%@page contentType="text/html" pageEncoding="utf-8" import="java.sql.*"  %>
<%@include file = "menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />

<!DOCTYPE html>
<html>

<head>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <div class="">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-3 text-center">註冊</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="text-center">
    <div class="container">
      <div class="row">
        <div class="mx-auto col-lg-6 col-10">
          <form class="text-left" action="signup_DBInsertInto.jsp" method="post">
          <%if (request.getParameter("status")!="" && request.getParameter("status")!=null){
					if(request.getParameter("status").equals("IDexist")){ %>
					<p><font color="red">帳號已存在，請登入或重新註冊!</font></p>
				<%}else{}%> 
    					<p>請填寫資料以建立帳號</p><%}%>
            <div class="form-group"> </div>
            <div class="row">
              <div class="col-md-12">
                <h3 contenteditable="true">輸入你的帳號名稱</h3>
              </div>
            </div>
            <div class="form-group"> <label for="form17">Your account</label> 
            <input type="text" class="form-control" id="playerid" placeholder="Werther Inc." name="playerid"> </div>
            <div class="col-10 col-md-12">
              <div class="col-md-12">
                <h3 class="">選擇個人特色</h3>
              </div><label for="form18">個人標籤</label>
              <div class="row">
              </div><select class="custom-select" name="namepos" id="namepos">
                <option selected="" value="Open this select menu">Open this select menu</option>
                <option value="1">可愛</option>
                <option value="2">大神</option>
                <option value="3">帥哥</option>
                <option value="4">美女</option>
                <option value="5">菜雞</option>
                <option value="6">青銅</option>
              </select>
                  <div class="row">
                    <div class="col-md-12">
                      <h3 class="">選擇常玩的遊戲</h3>
                    </div>
                  </div>
                  <div class="form-group"><label>GAME1</label>
                  <select class="custom-select" name="game1" id="game1">
                      <option selected="" value="Open this select menu">Open this select menu</option>
                      <option value="APEX 英雄">APEX 英雄</option>
                      <option value="魔獸世界">魔獸世界</option>
                      <option value="BanG Dream！少女樂團派對">BanG Dream！少女樂團派對</option>
                      <option value="Candy Crash">Candy Crash</option>
                      <option value="Garena 傳說對決">Garena 傳說對決</option>
                      <option value="LINE: Disney Tsum Tsum">LINE: Disney Tsum Tsum</option>
                      <option value="Roblox 機器磚塊">Roblox 機器磚塊</option>
                      <option value="原神">原神</option>
                      <option value="怪物彈珠">怪物彈珠</option>
                      <option value="新楓之谷">新楓之谷</option>
                      <option value="特戰英豪">特戰英豪</option>
                      <option value="當個創世神">當個創世神</option>
                      <option value="神魔之塔">神魔之塔</option>
                      <option value="第五人格">第五人格</option>
                      <option value="絕地求生">絕地求生</option>
                      <option value="英雄聯盟">英雄聯盟</option>
                      <option value="荒野亂鬥">荒野亂鬥</option>
                      <option value="跑跑卡丁車">跑跑卡丁車</option>
                      <option value="雀魂麻將">雀魂麻將</option>
                      <option value="風之國度">風之國度</option>
                      <option value="鬥陣特攻2">鬥陣特攻2</option>
                    </select>
                    <div class="form-group"><label>GAME2</label>
                    <select class="custom-select" name="game2" id="game2">
                      <option value="APEX 英雄">APEX 英雄</option>
                      <option value="魔獸世界">魔獸世界</option>
                      <option value="BanG Dream！少女樂團派對">BanG Dream！少女樂團派對</option>
                      <option value="Candy Crash">Candy Crash</option>
                      <option value="Garena 傳說對決">Garena 傳說對決</option>
                      <option value="LINE: Disney Tsum Tsum">LINE: Disney Tsum Tsum</option>
                      <option value="Roblox 機器磚塊">Roblox 機器磚塊</option>
                      <option value="原神">原神</option>
                      <option value="怪物彈珠">怪物彈珠</option>
                      <option value="新楓之谷">新楓之谷</option>
                      <option value="特戰英豪">特戰英豪</option>
                      <option value="當個創世神">當個創世神</option>
                      <option value="神魔之塔">神魔之塔</option>
                      <option value="第五人格">第五人格</option>
                      <option value="絕地求生">絕地求生</option>
                      <option value="英雄聯盟">英雄聯盟</option>
                      <option value="荒野亂鬥">荒野亂鬥</option>
                      <option value="跑跑卡丁車">跑跑卡丁車</option>
                      <option value="雀魂麻將">雀魂麻將</option>
                      <option value="風之國度">風之國度</option>
                      <option value="鬥陣特攻2">鬥陣特攻2</option>
                      </select>
                      <div class="form-group"><label>GAME3</label>
                      <select class="custom-select" name="game3" id="game3">
                       <option value="APEX 英雄">APEX 英雄</option>
                      <option value="魔獸世界">魔獸世界</option>
                      <option value="BanG Dream！少女樂團派對">BanG Dream！少女樂團派對</option>
                      <option value="Candy Crash">Candy Crash</option>
                      <option value="Garena 傳說對決">Garena 傳說對決</option>
                      <option value="LINE: Disney Tsum Tsum">LINE: Disney Tsum Tsum</option>
                      <option value="Roblox 機器磚塊">Roblox 機器磚塊</option>
                      <option value="原神">原神</option>
                      <option value="怪物彈珠">怪物彈珠</option>
                      <option value="新楓之谷">新楓之谷</option>
                      <option value="特戰英豪">特戰英豪</option>
                      <option value="當個創世神">當個創世神</option>
                      <option value="神魔之塔">神魔之塔</option>
                      <option value="第五人格">第五人格</option>
                      <option value="絕地求生">絕地求生</option>
                      <option value="英雄聯盟">英雄聯盟</option>
                      <option value="荒野亂鬥">荒野亂鬥</option>
                      <option value="跑跑卡丁車">跑跑卡丁車</option>
                      <option value="雀魂麻將">雀魂麻將</option>
                      <option value="風之國度">風之國度</option>
                      <option value="鬥陣特攻2">鬥陣特攻2</option>
                        </select>
                        <div class="row">
                          <div class="col-md-12">
                            <h1 class="">輸入密碼</h1>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            <div class="form-row">
              <div class="form-group col-md-6"> <label for="form19">Password</label> 
              <input type="password" class="form-control" id="playpwd" name="playpwd" placeholder="••••"> </div>
              <div class="form-group col-md-6"> <label for="form20">Confirm Password</label> 
              <input type="password" class="form-control" id="playpwd" name="playpwd" placeholder="••••"> </div>
            </div>
            <button type="submit" class="btn btn-primary btn-lg">確認送出</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center"> <i class="d-block fa fa-stop-circle mb-3 text-muted fa-3x"></i>
          <p> <a href="https://goo.gl/maps/AUq7b9W7yYJ2" target="_blank"> Fake street, 100 <br>NYC - 20179, USA</a> </p>
          <p> <a href="tel:+246 - 542 550 5462">+1 - 256 845 87 86</a> </p>
          <p class="mb-0"> <a href="mailto:info@pingendo.com">info@pingendo.com</a> </p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 d-flex align-items-center justify-content-center my-3"> <a href="#">
            <i class="d-block fa fa-facebook-official text-muted fa-lg mr-2"></i>
          </a> <a href="#">
            <i class="d-block fa fa-instagram text-muted fa-lg mx-2"></i>
          </a> <a href="#">
            <i class="d-block fa fa-google-plus-official text-muted fa-lg mx-2"></i>
          </a> <a href="#">
            <i class="d-block fa fa-pinterest-p text-muted fa-lg mx-2"></i>
          </a> <a href="#">
            <i class="d-block fa fa-reddit text-muted fa-lg mx-2"></i>
          </a> <a href="#">
            <i class="d-block fa fa-twitter text-muted fa-lg ml-2"></i>
          </a> </div>
      </div>
      <div class="row">
        <div class="col-md-12 text-center">
          <p class="mb-0">© 2014-2018 Pingendo. All rights reserved</p>
        </div>
      </div>
    </div>
  </div>
</body>

</html>