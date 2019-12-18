<%@page import="java.io.*,java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>www.OnlineJobs.com</title>
</head>
<body bgcolor="#D9EEFB">
<p>
<% try 
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
Statement st2 = con.createStatement();
Statement st = con.createStatement();
String status = "c";
st.executeUpdate("insert into Login values('"+request.getParameter("username")+"','"+request.getParameter("password")+"','"+status+"')");
st2.executeUpdate("insert into com values(null,'" + request.getParameter("comname") + "','" + request.getParameter("comaddress") +
 "','" + request.getParameter("compost") + "','" +request.getParameter("comcriteria") + "','" + request.getParameter("username") +
  "','" + request.getParameter("comemail") + "','" +request.getParameter("comcontact") + "','" + request.getParameter("comcutoff")+ "')");

st.close();
st2.close();
} 
catch (Exception e){
out.println(e);
}
%>
<font color="red" size="5"> You have registered successfully!!!<br>
</font></p>
<p><a href="Login.jsp"><strong>Go Forward</strong></a></p>
</body>
</html>