<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>www.Carrierextenders.com</title>
</head>
<body>
<% 
try {
String s1=request.getParameter("username");
String s2=request.getParameter("password");
session.setAttribute("s1", s1);
session.setAttribute("s2", s2);
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
Statement st = conn.createStatement();
Statement st2 = conn.createStatement();
String stat = "";
ResultSet rs;
rs=st.executeQuery("Select * from Login where Username='"+s1+"' and Password='"+s2+"'");
%>
<!-- <input type= "hidden" name="id" value ="<%=s1%>">
<input type= "hidden" name="pass" value ="<%=s2%>">-->
<%
while (rs.next()) {
stat = rs.getString("status");
} //while
if (stat.equals("s")) {
response.sendRedirect("CandidateHomepage.jsp");
} else if (stat.equals("c")) {
response.sendRedirect("CompanyHomepage.jsp");
} else if (stat.equals("a")) {
response.sendRedirect("AdminHomepage.jsp");
} else {
response.sendRedirect("Login.jsp");
}
}//try
catch (Exception e) {
out.println(e);
}
%>
<!-- <input type="hidden" name ="hide" value="<%request.getParameter("username");%>"-->
</body>
</html>