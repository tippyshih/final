<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ª±¦ñ¥­¥x</title>
</head>
<body>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="#">
        <i class="fa d-inline fa-lg fa-stop-circle"></i>
        <b> ª±¦ñ¥­¥x</b>
      </a> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar10" style="">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar10">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link" href="index.jsp">HOME</a> </li>
          <li class="nav-item"> <a class="nav-link" href="contacy.jsp">Contact us</a> </li>
          <li class="nav-item"> <a class="nav-link" href="computergame.jsp">Computer games</a> </li>
          <li class="nav-item"> <a class="nav-link" href="mobilegame.jsp">Mobile games</a> </li>
       </ul>
         <%if(session.getAttribute("accessid") != null){%>
          	<a class="btn navbar-btn ml-md-2 btn-light text-dark" href="logout.jsp">Logout</a>
		  <%}else{%>
			<a class="btn navbar-btn ml-md-2 btn-light text-dark" href="login.jsp">Login</a>
	  	  <%}%>
      </div>
    </div>
  </nav>
</body>
</html>