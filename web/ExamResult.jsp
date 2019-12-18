<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"
import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>www.onlinejobs.com</title>
</head>
<body style="margin:0px" bgcolor="#FFFFFF">
<table width="100%" height="400" border="1">
<tr valign="top">
<td height="120" width="400" colspan="2" bgcolor="#624630"><jsp:include page="Candidateheader.jsp"/></td>
</tr>
<td width="1" height="449" valign="top" bgcolor="white"><jsp:include page="Candidatemenu.html"/></td>
<td width="900" valign="top" bgcolor="white">
<%
String uname = session.getAttribute("s1").toString();
Connection con=null;
Statement st=null;
ResultSet rs = null;
// out.println(uname);
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
st = con.createStatement();
rs = st.executeQuery("Select * from result where Examid='"+uname+"'");
%>
<table width="546" border="1" align="center">
    <tr bgcolor="#CCCCCC"><div align="center"><b><h2>Exam Result</b></h2></div></tr>
<tr bgcolor="#CCCCCC">
<td bgcolor="#CCCCCC"><div align="center"><strong>Exam_ID</strong></div></td>
<td bgcolor="#CCCCCC"><div align="center"><strong>Job_ID</strong></div></td>
<td bgcolor="#CCCCCC"><div align="center"><strong>Mark</strong></div></td>
</tr>
<%
while(rs.next()) {
out.println("<tr>");
out.println("<td>" + rs.getString("Examid") + "</td>");
out.println("<td>" + rs.getString("Jobid") + "</td>");
out.println("<td>" + rs.getString("Cutoff") + "</td>");
out.println("</tr>");
}%>
</table>
<%
} 
catch (Exception e) {
out.println(e);
}
%>
</td>
</tr>
</table>
</body>
</html>