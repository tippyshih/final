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
  <div class="py-5 text-center text-white align-items-center d-flex h-50" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .75), rgba(0, 0, 0, .75)), url(https://static.pingendo.com/cover-bubble-dark.svg);  background-position: center center, center center;  background-size: cover, cover;  background-repeat: repeat, repeat;">
    <iframe width="100%" height="320" src="https://www.youtube.com/embed/2Mpwftxl9as?start=5&amp;autoplay=1&amp;mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen=""></iframe>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="text-center mx-auto col-md-8">
          <h1 class="mb-3">GAMES</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://image.gamebase.com.tw/gb_img/3/004/148/4148273.jpg" width="200" height="700"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://www.monster-strike.com.tw/ogp.png?update=20230102153457" width="300" height="700"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://p2.bahamut.com.tw/B/2KU/84/09e057718dbeffedf458cc58001fn3c5.JPG?v=1647844986974" width="200" height="500"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://pic.pimg.tw/kk665403/1546432680-2857193010_n.png" width="200" height="500"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-75" src="https://upload.wikimedia.org/wikipedia/zh/thumb/d/d9/Tower_of_Saviors_app_icon.png/220px-Tower_of_Saviors_app_icon.png"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-75" src="https://thumbor.4gamers.com.tw/rcpr3k5-ozxE6X2m_aV0SkvpYHE=/800x0/filters:extract_cover():no_upscale():quality(80)/https%3A%2F%2Fimg.4gamers.com.tw%2Fckfinder%2Fimages%2FPanda%2Fnews%2F202209%2F220923-genshin-%20%289%29.jpg%3FversionId%3Dktu8r3hPOF_Nfj5.vNiJCJEN1ikcLoQ8" height="600" width="600"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-75" src="https://play-lh.googleusercontent.com/GNqQdERj6GyyMzZTqw_oLV_A9rPUF8eKumZADiyWPxC8clSsoTC4vSYHTnpNwkM24Q" height="500"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-75 mx-auto" src="img/Mahjong Soul.jpg"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="http://m.niusnews.com/upload/pr_posts/pr_posts_image_83923_1641372970.jpg" width="300" height="500"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://p2.bahamut.com.tw/B/2KU/55/01894223bcb0ad644d1c567c9c1hbvf5.JPG?v=1658200447243" width="300" height="500"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://p2.bahamut.com.tw/B/2KU/08/76a736fb67db0384997b6eac5015i2c5.JPG" width="300" height="500"> </div>
        <div class="col-lg-3 col-md-6 p-3"> <img class="img-fluid d-block h-100" src="https://s.yimg.com/os/creatr-uploaded-images/2020-02/b1f20910-49bc-11ea-b8dd-4ef81fe2b366" width="300" height="500"> </div>
      </div>
    </div>
  </div>
  <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-3" style="">共同玩家</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="py-2" style="">
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
                  <td>fat</td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td>yummy</td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td>111</td>
                </tr>
                <tr>
                  <th scope="row">4</th>
                  <td>112</td>
                </tr>
                <tr>
                  <th scope="row">5</th>
                  <td>puppy</td>
                </tr>
                <tr>
                  <th scope="row">6</th>
                  <td>kkabc</td>
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
          <div class="py-3">
            <div class="container">
              <div class="row">
                <div class="col-md-12 text-center">
                  <p class="mb-0">© 2014-2018 Pingendo. All rights reserved</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>