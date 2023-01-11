<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />
<%
	//Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	//Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	//Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	//String memberid =request.getParameter("playerid");
	//String memberpwd =request.getParameter("palypwd");
	//String memberpos =request.getParameter("namepos");
	//String sql;
	//sql="INSERT INTO member VALUES('"+memberid+"','"+memberpwd+"')";
	//smt.execute("INSERT INTO playerlist (playerid, playpwd,namepos) VALUES('"+memberid+"','"+memberpwd+"','"+memberpos+"')");
	//con.close();
	//response.sendRedirect("login.jsp");
	%>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String playerid = new String(request.getParameter("playerid"));
	String playpwd = new String(request.getParameter("palypwd"));
	String namepos = new String(request.getParameter("namepos"));
	String game1 = new String(request.getParameter("game1"));
	String game2 = new String(request.getParameter("game2"));
	String game3 = new String(request.getParameter("game3"));
		try{
		smt.execute("INSERT INTO playerlist (playerid, playpwd, namepos, game1, game2, game3) VALUES('"+ playerid +"','"+ playpwd +"','"+ namepos +"','"+ game1 +"','"+ game2 +"','"+ game3 +"')");
		con.close();
		response.sendRedirect("login.jsp");
	}catch (Exception e){
		response.sendRedirect("signup.jsp?status=IDexist");
	}	
	%>
