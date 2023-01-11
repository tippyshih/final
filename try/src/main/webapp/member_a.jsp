<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <title>個人頁面</title>
</head>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	//out.println("Con= "+con);
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM playerlist left join position on leelab.positionId=position.positionId WHERE memberId ='" +request.getParameter("memberId")+"'";
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
	%>
<form action="memberEdit.jsp" method="post">
  <!-- //Header -->
  <section class="w3l-aboutblock py-5" id="about">
    <div class="midd-w3">
      <div class="container py-lg-5 py-md-3">
        <div class="row">
          <div class="col-lg-4 left-wthree-img text-righ">
            <div class="position-relative">
            <img src="<%=rs.getString("pic") %>" alt="">
            </div>
          </div>
          <div class="col-lg-8 mt-lg-0 mt-5 about-right-faq align-self">
          <h3 class="title-big"><%=rs.getString("memberName") %></h3>
            <span class="text mb-2"><%=rs.getString("positionName") %></span>
            <p class="mt-4"><b>專長及研究領域：</b></p>
            <ol class="w3l-right mt-4">
              <li><%=rs.getString("skill1") %></li>
              <%if (rs.getString("skill2")!= null){%>
            	  <li> <%=rs.getString("skill2") %> </li>
              <%} %>
              <%if (rs.getString("skill3")!= null){%>
            	  <li> <%=rs.getString("skill3") %> </li>
              <%} %>
            </ol>
          <%if(session.getAttribute("accessId")!=null){
          		if(session.getAttribute("accessId").equals(rs.getString("memberId"))) {%>
          			<a href="memberEdit.jsp?memberId=<%=rs.getString("memberId")%>"  class="btn btn-style btn-effect">編輯</a>
		  		<%}
          }%>
          </div>
        </div>
      </div>
    </div>
  </section>
</form>
  <!-- //footer -->
  <!-- copyright -->
  <section class="w3l-footer-29-main w3l-copyright">
    <div class="container">
      <div class="row bottom-copies">
        <p class="col-lg-8 copy-footer-29">All rights reserved. Design by LeeLab.</p>
        <div class="col-lg-4 main-social-footer-29">
          <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
          <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
          <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
          <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
        </div>
      </div>
    </div>
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">↑</button>
    <script>
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function() {
        scrollFunction()
      };
      function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("movetop").style.display = "block";
        } else {
          document.getElementById("movetop").style.display = "none";
        }
      }
      // When the user clicks on the button, scroll to the top of the document
      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>
    <!-- /move top -->
  </section>
  </body>
</html>