<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />
<%
session.setAttribute("access","n");
if(request.getParameter("playerid") !=null &&
	request.getParameter("playpwd") !=null){
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String getpaperdata = "SELECT * FROM playerlist WHERE playerid='"+
			request.getParameter("playerid")+"' AND playpwd='" +
			request.getParameter("playerpwd")+"'";
				ResultSet paperrs = smt.executeQuery(getpaperdata);
	if(paperrs.next()){
		session.setAttribute("access","y");
		session.setAttribute("accessid",request.getParameter("playerid"));
			session.setMaxInactiveInterval(5);
				response.sendRedirect("index.html");
			}else
				response.sendRedirect("login.html?status=loginerror");
		}
%>