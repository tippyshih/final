<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='histd.tool.group.database.DBConfig' />
<html>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String memberid =request.getParameter("playerid");
	String memberpwd =request.getParameter("palypwd");
	String memberpos =request.getParameter("namepos");
	//String sql;
	//sql="INSERT INTO member VALUES('"+memberid+"','"+memberpwd+"')";
	smt.execute("INSERT INTO playerlist (playerid, playpwd,namepos) VALUES('"+memberid+"','"+memberpwd+"','"+memberpos+"')");
	con.close();
	response.sendRedirect("logina.jsp");
	%>
</body>
</html>