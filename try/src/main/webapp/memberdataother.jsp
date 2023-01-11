<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@include file = "menu.jsp" %>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />


	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection(
		"jdbc:ucanaccess://D:\\Java\\Access\\dataBase.accdb;");
	Statement addnew= con.createStatement();
	addnew.executeUpdate("INSERT INTO friendship( playerid, friendid) VALUES( accessid, playerid);");
	con.close();
	%>