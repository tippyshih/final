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
  <div class="py-5 text-center text-white align-items-center d-flex h-50" style="background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;); background-position: center center, center center; background-size: cover, cover; background-repeat: repeat, repeat;">
    <iframe width="100%" frameborder="0" title="YouTube video player" height="320" allowfullscreen="" src="https://www.youtube.com/embed/K7PILGV0sOc?&amp;autoplay=1&amp;mute1 allow="></iframe>
  </div>
  <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="text-center mx-auto col-md-8">
          <h1 class="mb-3">GAMES</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="img/APEX.jpg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="img/LOL.jpg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="img/WoW.jpg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="img/Kart Rider.jpg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-75" src="img/Brawl Stars.jpg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-75 mx-auto" src="img/Minecraft.jpg" width="150" height="100"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-75" src="img/valorant.jpg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-75" src="https://p2.bahamut.com.tw/B/2KU/58/4f93a4d45839de1e33cbfdb4611e9ou5.JPG?v=1636451274833"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://cdn.hk01.com/di/media/images/1452923/org/ae446579517003f6a4cff9c3f87de8bb.jpg/SCb_R0hiWhwkjcLRaCpAejKNMle2bb2hVnAnc1ZwJ3M?v=w1920"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://p2.bahamut.com.tw/B/2KU/96/ed037c7f0359413e3364935e241874g5.JPG?v=1586050293173"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://s.yimg.com/os/creatr-uploaded-images/2021-04/a9f71860-a71f-11eb-bfd8-e763b5e03c1b"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="img/overwatch2.jpg"> </div>
      </div>
    </div>
  </div>
  <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-3">共同玩家</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5" style="">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="table-responsive">
            <table class="table table-striped table-dark">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">PlayerID</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>tippy</td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td>denny</td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td>andy</td>
                </tr>
                <tr>
                  <th scope="row">4</th>
                  <td>happy</td>
                </tr>
                <tr>
                  <th scope="row">5</th>
                  <td>11</td>
                </tr>
                <tr>
                  <th scope="row">6</th>
                  <td>green</td>
                </tr>
              </tbody>
            </table>
          </div>
          <ul class="pagination">
            <li class="page-item active"> <a class="page-link" href="#">Prev</a> </li>
            <li class="page-item"> <a class="page-link" href="#">1</a> </li>
            <li class="page-item"> <a class="page-link" href="#">2</a> </li>
            <li class="page-item"> <a class="page-link" href="#">3</a> </li>
            <li class="page-item"> <a class="page-link" href="#">4</a> </li>
            <li class="page-item"> <a class="page-link" href="#">Next</a> </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <p class="mb-0">© 2022-2023 Pingendo. All rights reserved</p>
        </div>
      </div>
    </div>
  </div>
</body>

</html>