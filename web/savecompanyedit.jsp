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
String c1 = (String) session.getAttribute("s1");    
//String jid = request.getParameter("jobid");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
Statement st = con.createStatement();
/* st.executeUpdate("Update jobdetails set Post='" + request.getParameter("post") +
"',Criteria='" + request.getParameter("criteria") + "',NoOfVacancies='" +
request.getParameter("vacancies") + "',Salary='" + request.getParameter("salary") +
"',LastDate='" + request.getParameter("lastdate") + "' where JobId='" + jid + "'"); */

st.executeUpdate("Update com set C_name='" + request.getParameter("comname") +
"',C_address='" + request.getParameter("comaddress") + "',C_post='" +
request.getParameter("compost") + "',C_criteria='" + request.getParameter("comcriteria") + "',"
        + "C_email='" + request.getParameter("comemail") +"',C_contact='" + request.getParameter("comcontact") + "',C_cutoff='" + request.getParameter("comcutoff") + "' "
        + "where Username='" + c1 + "'"); 

%>
<font color="red" size="5"> 
<%out.println("You have Successfully Edited!!!");

%></font>
<% } 
catch (Exception e) {
out.println(e);
}
%>
</table>
<p>&nbsp;</p>
<p><a href="CompanyHomepage.jsp"><strong>Goto Home</strong></a> </p>
</body>
</html>