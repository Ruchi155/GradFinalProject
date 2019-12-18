<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>www.Online Jobs.com</title>
</head>
<body>
<table width="104%" height="628" border="1">
<tr>
<td height="120" WIDTH="400" colspan="2"><jsp:include page="Companyheader.jsp"/></td>
</tr>
<tr>
<td width="20" height="449" valign="top" bgcolor="#624631"><jsp:include page="Companmenu.html"/></td>
<td bgcolor="D6C0C9">
<% try {
String c1 = (String) session.getAttribute("s1");
String c2 = (String) session.getAttribute("s2");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from com where Username='" + c1 + "'");
//ResultSet rs = st.executeQuery("Select * from com where Username='" + c1 + "'");
String comname = null;
String comaddress = null;
String compost = null;
String comcriteria = null;
String comemail = null;
String comcontact= null;
String comcutoff= null;
%>
<%
while (rs.next()) {
comname = rs.getString(2);//name
comaddress = rs.getString(3);//colg
compost= rs.getString(4);//colgph
comcriteria = rs.getString(5);//colgemail
comemail = rs.getString(7);//mark
comcontact = rs.getString(8);//email
comcutoff= rs.getString(9);//tph
}
%>

<form method="POST" action="savecompanyedit.jsp" name="form1">
<table border=0 cellpadding=3 cellspacing=0 width=81% align=center>
<tr bgcolor=#FEF7E9 wdth =100%>
<td colspan="2" bgcolor="#E2E0CF"><div align="center">
<font color="#386A78" size="5"><strong>Edit Profile</strong></font></div></td>
</tr>
<tr bgcolor="#FEF7E9" width=100%>
<td width="48%" bgcolor="#F3E8DA"><div align="left"><font SIZE="2"
COLOR="black" face =arial >Name</font></div></td>
<td width="52%" bgcolor="#FFFFFF"><div align="left">
<input TYPE="text" NAME="comname" id="comname" size=30 maxlength=30 value='<%=comname%>'>
</div></td>
</tr>
<tr bgcolor =#FEF7E9>
<td bgcolor="#E6F0F0"><div align="left"><font SIZE="2"
COLOR="black" face =arial>Address</font></div></td>
<td bgcolor="#E6F0F0"><div align="left">
<input NAME="comaddress" TYPE="text" id="comaddress" size=30 maxlength=50 value='<%=comaddress%>'>
</div></td>
</tr>
<tr bgcolor =#FEF7E9>
<td bgcolor="#F2DFE2"><div align="left"><font SIZE="2"
COLOR="black" face =arial>Post</font></div></td>
<td bgcolor="#F2DFE2"><div align="left">
<input NAME="compost" TYPE="text" id="compost" size=30 maxlength=50 value='<%=compost%>'>
</div></td>
</tr>
<tr bgcolor =#FEF7E9>
<td bgcolor="#F2DFE2"><div align="left"><font SIZE="2"
COLOR="black" face =arial>Criteria</font></div></td>
<td bgcolor="#F2DFE2"><div align="left">
<input NAME="comcriteria" TYPE="text" id="comcriteria" size=30 maxlength=50 value='<%=comcriteria%>'>
</div></td>
</tr>
<tr bgcolor =#FEF7E9>
<td bgcolor="#F2DFE2"><div align="left"><font SIZE="2"
COLOR="black" face =arial>Email_id</font></div></td>
<td bgcolor="#F2DFE2"><div align="left">
<input TYPE="text" NAME="comemail" id="comemail" size=30 maxlength=30 value='<%=comemail%>'>
</div></td>
</tr>
<tr>
<td bgcolor="#FFFFFF"><div align="left"><font SIZE="2"
COLOR="black" face =arial>Contact No:</font></div></td>
<td bgcolor="#FFFFFF"><div align="left">
<input TYPE="text" NAME="comcontact" id="comcontact" size=10 maxlength=30 value='<%=comcontact%>'>
&nbsp; <font COLOR="#CC0000" face=arial>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(STD-No.)</font></div></td>
</tr>
<tr bgcolor =#FEF7E9>
<td bgcolor="#E6F0F0"><div align="left"><font SIZE="2"
COLOR="black" face=arial>CutOff %</font></div></td>
<td bgcolor="#E6F0F0"><div align="left">
<input TYPE="text" NAME="comcutoff" id="comcutoff" size=30 maxlength=30 value='<%=comcutoff%>'>
</div></td>
</tr>
<!-- }%> -->
<tr>
<td height="49" colspan=2 align="center" >
<!-- <input TYPE="reset" value=" Reset "> -->
<input TYPE="submit" value=" Edit "></td>
</tr>
</table>
</form>
<%
}
catch (Exception e) 
{
out.println(e);
} %>
</td>
</tr>
</table>
</body>
</html>