<%@page import="java.io.*,java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>www.Online Jobs.com</title>
</head>
<body bgcolor="#D9EEFB">
<p>
<% try 
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
Statement st = con.createStatement();
Statement st2 = con.createStatement();
String status = "s";
st.executeUpdate("update details set username='" + request.getParameter("username") + "',name='"+ request.getParameter("name") + "',gender='" + request.getParameter("gender") +
 "',dob='" +request.getParameter("dob") + "',college='" + request.getParameter("college") + "',branch='" +request.getParameter("branch") + "',markDegree='" + request.getParameter("markDegree") +
 "',degree='" +request.getParameter("degree") + "',email='" + request.getParameter("email") + "',telephone='" +request.getParameter("telephone") + "',address='" + request.getParameter("address") +
        "',state='" +request.getParameter("state") + "',pin='" + request.getParameter("pin") + "',sel_cat='" +request.getParameter("sel_cat") + "'");
//if (request.getParameter("sel_cat").equals("Experienced")) 
//{
//st2.executeUpdate("update experienced set Username='" +request.getParameter("username") +"',expyears='" + request.getParameter("expyears") +
 //"',company='" +request.getParameter("company") + "',designation='" + request.getParameter("designation") +
 //"',salary='" +request.getParameter("salary") + "',comAddress='" + request.getParameter("comAddress") + "'");
//}
st.close();
st2.close();
} catch (Exception e) {
out.println(e);
}
%>
<font color="red" size="5"> You have updated successfully!!!<br>
</font></p>
<p><a href="Login.jsp"><strong>Go Forward</strong></a></p>
</body>
</html>