<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>www.Online Jobs.com</title>
<style type="text/css">
<!--
body {
background-color: #E2EFD6;
}
-->
</style></head>
<body>
<table>
<% try {
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
Statement st = con.createStatement();
st.executeUpdate("Update Login set Password='"+request.getParameter("newpass")+"' where Password='"+request.getParameter("pass")+"'");
%>
<font color="red" size="5"> 
<%out.println("You have Successfully Changed!!!");

%></font>
<% } 
catch (Exception e) {
out.println(e);
}
%>
</table>
<p>&nbsp;</p>
<p><a href="CandidateHomepage.jsp"><strong>Goto Home</strong></a> </p>
</body>
</html>