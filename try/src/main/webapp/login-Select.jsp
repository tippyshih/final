<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />
<%
if(request.getParameter("playerid") !=null &&
	request.getParameter("playpwd") !=null){
	 Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	 Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
		Statement smt= con.createStatement();
		
	String getPlayer = "SELECT * FROM playerlist WHERE playerid='"+
			request.getParameter("playerid")+"' AND playpwd='" +
			request.getParameter("playpwd")+"'";
			
	ResultSet players = smt.executeQuery(getPlayer);
	if(players.next()){
		session.setAttribute("access","y");
		session.setAttribute("accessID",request.getParameter("playerid"));
		response.sendRedirect("accessPage.jsp");
	}else
		out.println("�b���K�X���šI�Э��s�n�J");
}
%>
<html>
<head><title>�n�J����</title></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- ��style�ѦҦ�www.w3schools.com -->
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.container {
  padding: 16px;
}

span.memberpwd {
  float: right;
  padding-top: 16px;
}

</style>
<body>
<h2>Login Form</h2>
<form action="login-Select.jsp" method="post">
<div class="container">
	<label for="memberid"><b>MemberID</b></label>
    <input type="text" placeholder="Enter Username" name="playerid" required>

    <label for="memberpwd"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="playpwd" required>
        
    <button type="submit" name="loginButton">Login</button>
</div>
</form>
</body>
</html>