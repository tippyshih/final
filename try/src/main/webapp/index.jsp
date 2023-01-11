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
  <!-- PAGE settings -->
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>Landing</title>
  <meta name="description" content="Wireframe design of a landing page by Pingendo">
  <meta name="keywords" content="Pingendo bootstrap example template wireframe landing">
  <meta name="author" content="Pingendo">
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="wireframe.css">
  <style> * {
      box-sizing: border-box
    }

    body {
      font-family: Verdana, sans-serif;
      margin: 0
    }

    .mySlides {
      display: none
    }

    img {
      vertical-align: middle;
    }

    /* Slideshow container */
    .slideshow-container {
      max-width: 1000px;
      position: relative;
      margin: auto;
    }

    /* Next & previous buttons */
    .prev,
    .next {
      cursor: pointer;
      position: absolute;
      top: 50%;
      width: auto;
      padding: 16px;
      margin-top: -22px;
      color: white;
      font-weight: bold;
      font-size: 18px;
      transition: 0.6s ease;
      border-radius: 0 3px 3px 0;
      user-select: none;
    }

    /* Position the "next button" to the right */
    .next {
      right: 0;
      border-radius: 3px 0 0 3px;
    }

    /* On hover, add a black background color with a little bit see-through */
    .prev:hover,
    .next:hover {
      background-color: rgba(0, 0, 0, 0.8);
    }

    /* Caption text */
    .text {
      color: #f2f2f2;
      font-size: 15px;
      padding: 8px 12px;
      position: absolute;
      bottom: 8px;
      width: 100%;
      text-align: center;
    }

    /* Number text (1/3 etc) */
    .numbertext {
      color: #f2f2f2;
      font-size: 12px;
      padding: 8px 12px;
      position: absolute;
      top: 0;
    }

    /* The dots/bullets/indicators */
    .dot {
      cursor: pointer;
      height: 15px;
      width: 15px;
      margin: 0 2px;
      background-color: #bbb;
      border-radius: 50%;
      display: inline-block;
      transition: background-color 0.6s ease;
    }

    .active,
    .dot:hover {
      background-color: #717171;
    }

    /* Fading animation */
    .fade {
      animation-name: fade;
      animation-duration: 1.5s;
    }

    @keyframes fade {
      from {
        opacity: .4
      }

      to {
        opacity: 1
      }
    }

    /* On smaller screens, decrease text size */
    @media only screen and (max-width: 300px) {

      .prev,
      .next,
      .text {
        font-size: 11px
      }
    }
  </style>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>

<body class="">
  <div class="h-50 d-flex align-items-center bg-info" style="	background-image: url(&quot;img/cutepic.png&quot;);	background-position: center;	background-size: 50%;	background-repeat: no-repeat;">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-light text-uppercase text-left">遊戲玩伴平台</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <meta name="viewport" content="width=device-width, initial-scale=1" style="">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-3">電腦熱門遊戲</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="slideshow-container">
    <div class="mySlides " style="display: block;">
      <div class="numbertext">1 / 4</div>
      <img src="img/WoW.jpg" style="width:100%">
      <div class="text">Caption Text</div>
    </div>
    <div class="mySlides " style="display: none;">
      <div class="numbertext">2 / 4</div>
      <img src="img/valorant.jpg" style="width:100%">
      <div class="text">Caption Two</div>
    </div>
    <div class="mySlides " style="display: none;">
      <div class="numbertext">3 / 4</div>
      <img src="img/LOL.jpg" style="width:100%">
      <div class="text">Caption Three</div>
    </div>
    <div class="mySlides " style="display: none;">
      <div class="numbertext">4 / 4</div>
      <img src="img/APEX.jpg" style="width:100%">
      <div class="text">Caption four</div>
    </div>
    <a class="prev" onclick="plusSlides(-1)">❮</a>
    <a class="next" onclick="plusSlides(1)">❯</a>
  </div>
  <br>
  <div style="text-align:center">
    <span class="dot active" onclick="currentSlide(1)"></span>
    <span class="dot" onclick="currentSlide(2)"></span>
    <span class="dot" onclick="currentSlide(3)"></span>
    <span class="dot" onclick="currentSlide(4)"></span>
  </div>
  <script style="">
    let slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
      showSlides(slideIndex += n);
    }

    function currentSlide(n) {
      showSlides(slideIndex = n);
    }

    function showSlides(n) {
      let i;
      let slides = document.getElementsByClassName("mySlides");
      let dots = document.getElementsByClassName("dot");
      if (n > slides.length) {
        slideIndex = 1
      }
      if (n < 1) {
        slideIndex = slides.length
      }
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
      }
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
      }
      slides[slideIndex - 1].style.display = "block";
      dots[slideIndex - 1].className += " active";
    }
  </script>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="display-3" style="">手遊熱門遊戲</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="py">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div id="carouselExampleIndicators" class="carousel slide pointer-event" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="carouselExampleIndicators" data-slide-to="0" class=""></li>
              <li data-target="carouselExampleIndicators" data-slide-to="1" class="active"></li>
              <li data-target="carouselExampleIndicators" data-slide-to="2" class=""></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item">
                <img class="d-block w-100" src="img/monster.jpg" height="500" width="500">
              </div>
              <div class="carousel-item active">
                <img src="img/LOVELIVE.jpg" class="d-block w-100" width="100%" height="500">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="img/Identify V.jpg" height="500" width="500">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          <!-- Optional JavaScript; choose one of the two! -->
          <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
          <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous" style=""></script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        </div>
      </div>
    </div>
  </div>
  <div class="py-4 text-center">
    <div class="py-4 text-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 p-3">
            <div class="card">
              <div class="card-body p-4 h-50"> <img class="img-fluid d-block mb-3 mx-auto w-50 rounded h-25" src="img/computergame.png" width="150" height="150" >
                <h1 class="h-40 text-center" style="">COMPUTER<br>GAMES</h1>
                <p class="">不管熱門或是小眾遊戲都有</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 p-3 col-md-6">
            <div class="card">
              <div class="card-body p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded w-75 h-25" src="img/mobilegame.jpg" width="150" >
                <h1>MOBILE&nbsp;<br>GAMES<br></h1>
                <p class="">不管熱門或是小眾遊戲都有</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 p-3 col-md-6">
            <div class="card">
              <div class="card-body p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded h-25 w-75" src="img/group.jpg" width="150" height="150
              150">
                <h1>GROUP<br></h1>
                <p class="lead">可以與興趣喜好相同的人<br>共同交流、玩遊戲喔<br></p>
              </div>
            </div>
          </div>
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