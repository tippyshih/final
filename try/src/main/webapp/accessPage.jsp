<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%
if(session.getAttribute("access") !="y"){
	out.println("�z�L�v�s���������A�ζW�L�s�������I");
}else{
	out.println("�n�J���\<br>");
	out.println("�n�J�̡G"+session.getAttribute("accessID")+"�I<br>");
	//out.println("�ӤH���ҡG"+session.getAttribute("accesspos")
}
%>
<html>
<head><title>�n�J����</title></head>
<body>
<form method="post" action="logout.jsp">
	<%if(session.getAttribute("access") == "y"){%>
		<input type="submit" value="�n�X" name="logout">
	<%}else{%>
	<a href="logina.jsp">�n�J</a>
	<%}%>
</form>
</body>
</html>