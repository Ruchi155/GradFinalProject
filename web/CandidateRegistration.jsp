<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCtype HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>www.Online Jobs.com</title>
<style type="text/css">
<!--
.body {
margin:0%;
}
a:link {
color: #000066;
text-decoration: underline;
}
a:visited {
text-decoration: underline;
color: #C0DCC0;
}
a:hover {
text-decoration: none;
color: #996666;
}
a:active {
text-decoration: underline;
color: #FF9999;
}
.style4 {
color: #CC3333;
font-weight: bold;
}
.style5 {color: #006699}
-->
</style>
<script language="javascript">
function valid()
{
var a=document.form1.name.value;
var b=document.form1.gender.value;
var c=document.form1.dob.value;
var d=document.form1.college.value;
var e=document.form1.collegephone.value;
var f=document.form1.collegeemail.value;
var g=document.form1.markDegree.value;
var h=document.form1.degree.value;
var i=document.form1.password.value;
var j=document.form1.email.value;
var k=document.form1.telephone.value;
var l=document.form1.address.value;
var m=document.form1.state.value;
var n=document.form1.pin.value;
var o=document.form1.sel_cat.value;

if(document.form1.name.value=="")
{
alert("Enter Name");
document.form1.name.focus();
return false;
}
else if(parseInt(a))
{
alert("Name cannot be integer");
document.form1.name.focus();
return false;
}

if(document.form1.gender.value=="")
{
alert("Enter Gender");
document.form1.gender.focus();
return false;
}
else if(parseInt(b))
{
alert("Gender cannot be integer");
document.form1.gender.focus();
return false;
}

if(document.form1.dob.value=="")
{
alert("Enter Your DateofBirth");
document.form1.dob.focus();
return false;
}
else if(c.indexOf('/')==-1)
{
alert("Enter DateofBirth Correctly");
document.form1.dob.focus();
return false;
}
else if(c.indexOf('/')==-1)
{
alert("Enter DateofBirth Correctly");
document.form1.dob.focus();
return false;
}

if(document.form1.college.value=="")
{
alert("Enter College Name");
document.form1.college.focus();
return false;
}
else if(parseInt(d))
{
alert("College Name cannot be integer");
document.form1.college.focus();
return false;
}
else if(parseInt(d))
{
alert("College Name cannot be integer");
document.form1.college.focus();
return false;
}

if(document.form1.collegephone.value=="")
{
alert("Enter Your College Phone no:");
document.form1.collegephone.focus();
return false;
}
else if(!parseInt(e))
{
alert("Enter ssinteger");
document.form1.collegephone.focus();
return false;
}
else if(((document.form1.collegephone.value.length)<9) ||
((document.form1.collegephone.value.length)>11))
{
alert("Phone no should contain atleast 10 integers ");
document.form1.collegephone.focus();
return false;
}

if(document.form1.collegeemail.value=="")
{
alert("Enter College Email");
document.form1.collegeemail.focus();
return false;
}
else if(f.indexOf('@')==-1)
{
alert("Enter Email Correctly");
document.form1.colegeemail.focus();
return false;
}
else if(f.indexOf('.')==-1)
{
alert("Enter Email Correctly");
document.form1.collegeemail.focus();
return false;
}

if(document.form1.branch.value=="")
{
alert("Enter Your Branch Name");
document.form1.branch.focus();
return false;
}

if(document.form1.markDegree.value=="")
{
alert("Enter Your Cgpa");
document.form1.markDegree.focus();
return false;
}
else if(!parseInt(g))
{
alert("Enter integer");
document.form1.markDegree.focus();
return false;
}
else if(parseInt(g)<0||parseInt(g)>10)
{
alert("Enter Cgpa in %");
document.form1.markDegree.focus();
return false;
}

if(document.form1.degree.value=="")
{
alert("Enter Degree Name");
document.form1.degree.focus();
return false;
}
else if(parseInt(h))
{
alert("Degree Name cannot be integer");
document.form1.degree.focus();
return false;
}
else if(parseInt(h))
{
alert("Degree Name cannot be integer");
document.form1.degree.focus();
return false;
}
if(document.form1.username.value=="")
{
alert("Enter Candidate Username");
document.form1.username.focus();
return false;
}

if(document.form1.password.value=="")
{
alert("Enter Candidate Password");
document.form1.password.focus();
return false;
}
if(i.length<8)
{
alert("Password should be minimum 8 characters");
document.form1.password.focus();
return false;
}

if(document.form1.email.value=="")
{
alert("Enter Your Emailid");
document.form1.email.focus();
return false;
}
else if(j.indexOf('@')==-1)
{
alert("Enter Email Correctly");
document.form1.canemail.focus();
return false;
}
else if(j.indexOf('.')==-1)
{
alert("Enter Email Correctly");
document.form1.email.focus();
return false;
}

if(document.form1.telephone.value=="")
{
alert("Enter Your Mobile no:");
document.form1.telephone.focus();
return false;
}
else if(!parseInt(l))
{
alert("Enter ssinteger");
document.form1.telephone.focus();
return false;
}
else if(((document.form1.telephone.value.length)<9) ||
((document.form1.telephone.value.length)>11))
{
alert("Mobile no should contain atleast 10 integers ");
document.form1.telephone.focus();
return false;
}
if(document.form1.address.value=="")
{
alert("Enter Your Addres");
document.form1.address.focus();
return false;
}
else if(parseInt(l))
{
alert("Address cannot be integer");
document.form1.address.focus();
return false;
}

if(document.form1.state.value=="")
{
alert("Enter Your State");
document.form1.state.focus();
return false;
}
else if(parseInt(m))
{
alert("State cannot be integer");
document.form1.state.focus();
return false;
}
else if(parseInt(m))
{
alert("State cannot be integer");
document.form1.state.focus();
return false;
}

if(document.form1.pin.value=="")
{
alert("Enter Your Pincode no:");
document.form1.pin.focus();
return false;
}
else if(!parseInt(n))
{
alert("Enter integer");
document.form1.pin.focus();
return false;
}

if(document.form1.sel_cat.value=="")
{
alert("Enter Your Field You want Job");
document.form1.sel_cat.focus();
return false;
}
else if(parseInt(o))
{
alert("Field cannot be integer");
document.form1.sel_cat.focus();
return false;
}
}
return true;
}
</script>
</head>
<body style="margin:0px">
<table width="100%" height="390" border="1">
<tr>
<td height="28" colspan="2" bgcolor="#624631"><jsp:include page="Header.jsp"/></td>
</tr>
<tr>
<td width="7" height="354" valign="top" bgcolor="#624631"><jsp:include page="menu.html"/></td>
<td width="99%" bgcolor="#F2DFE2" valign="top">
<div class="Reg" align="center">
<form action="Savestudentdata.jsp" method="post" name="form1" id="form1">
<table width =85% border=0 cellpadding=3 cellspacing=0 bordercolor="#FFFFFF" >

<tr bgcolor="" width=100%>
<td colspan="2" bgcolor="#F2DFE2"> <div align="left" class="style4">
<div align="center" class="style5">Candidate Registration</div></div></td>
</tr>

<tr bgcolor="" width=100%>
<td width="33%" bgcolor="#FFFFFF"><div align="left"><font size="2"color="black" face=arial >Name&nbsp;
<font color="#993333">(as in academic records)</font>
</font></div></td>
<td width="67%" bgcolor="#FFFFFF"><div align="left"><input type="text" NAME="name" id="name" size=30 maxlength=30 value=''> </td>
</tr>

<tr width =100%>
<td bgcolor="#E6F0F0"><div align="left"><font size="2" color="black" face=arial>Gender</font></div></td>
<td bgcolor="#E6F0F0"><div align="left"><input type="text" NAME="gender" id="gender" size=32 maxlength=30 value=''>
</div></td>
</tr>

<tr>
<td bgcolor="#FFFFFF"><div align="left"><font size="2" color="black" face=arial>Date of Birth<font color="#993333">(dd/mm/yyyy)</font></font></div></td>
<td bgcolor="#FFFFFF"><div align="left"><input type="text" NAME="dob" id="dob" size=10 maxlength=30 value=''>
</tr>

<tr bgcolor =#FEF7E9>
<td bgcolor="#E6F0F0"><div align="left"><font size="2" color="black" face=arial>College Name</font></div></td>
<td bgcolor="#E6F0F0"><div align="left"><input type="text" NAME="college" id="college" size=30 maxlength=30 value=''> </td>
</tr>

<tr>
<td bgcolor="#FFFFFF"><div align="left"><font size="2" color="black" face=arial>Branch</font></div></td>
<td bgcolor="#FFFFFF"><div align="left"><input type="text" NAME="branch" id="branch" size=10 maxlength=30 value=''>
</tr>

<tr bgcolor =#FEF7E9>
<td bgcolor="#F2DFE2"><div align="left"><font size="2" color="black" face=arial>% of Marks</font></div></td>
<td bgcolor="#F3E8DA">
<table width =85% border=0 cellpadding=3 cellspacing=0 bordercolor="#FFFFFF" >
<tr>
<td bgcolor="#F2DFE2"><div align="left"><font size="2" color="#3366CC" face=arial><strong>DEGREE %</strong></font> </div></td>
</tr>
<tr>
<td bgcolor="#F2DFE2"><div align="left">
<input type="text" NAME="markDegree" id="markDegree" size=8 maxlength=8 value='' onblur="checkDec('markDegree')">
</td>
</tr>
</table>
<tr>
<td bgcolor="#FFFFFF"><div align="left"><font size="2" color="black" face=arial>Degree</font></div></td>
<td bgcolor="#FFFFFF"><div align="left">
<input type="text" NAME="degree" id="degree" size=10 maxlength=30>
</tr>

<tr width =100%>
<td bgcolor="#FFFFFF"><div align="left"><font size="2"
color="black" face=arial>Username</font></div></td>
<td bgcolor="#FFFFFF"><div align="left">
<input type="text" NAME="username" id="username" size=30 maxlength=30 value=''>
</div></td>
</tr>

<tr width =100%>
<td bgcolor="#E6F0F0"><div align="left"><font size="2" color="black" face=arial>Password</font></div></td>
<td bgcolor="#E6F0F0"><div align="left"><input type="password" NAME="password" id="password" size=32 maxlength=30 value=''>
</div></td>
</tr>

<tr width =100%>
<td bgcolor="#FFFFFF"><div align="left"><font size="2" color="black" face=arial>Email_id</font></div></td>
<td bgcolor="#FFFFFF"><div align="left"><input type="text" NAME="email" id="email" size=30 maxlength=30 value=''>
</div></td>
</tr>

<td bgcolor="#FFFFFF"><div align="left"><font size="2" color="black" face=arial>Telephone Number</font></div></td>
<td bgcolor="#FFFFFF"><div align="left"><input type="text" NAME="telephone" id="telephone" size=10 maxlength=30 value=''>
&nbsp; <font size="2" color="#CC0000" face=arial>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(STD-No.)</font></div></td>
</tr>

<tr width =100%>
<td bgcolor="#E6F0F0"><div align="left"><font size="2" color="black" face=arial>Address</font></div></td>
<td bgcolor="#E6F0F0"><div align="left"><input class=USS_TEXT NAME="address" id="address" size=32 maxlength=30 value=''>
<font face="ARIAL, HELVETICA" color=red size=+2></font>
</div></td>
</tr>

<tr bgcolor =#FEF7E9>
<td bgcolor="#F2DFE2"><div align="left"><font size="2" color="black" face=arial>State</font></div></td>
<td bgcolor="#E6F0F0"><div align="left"><input type="text" NAME="state" id="state" size=32 maxlength=30 value=''>
</div></td>
</tr>

<tr>
<td bgcolor="#FFFFFF"><div align="left"><font size="2" color="black" face=arial>Pincode</font></div></td>
<td bgcolor="#FFFFFF"><div align="left"><input class=USS_TEXT type="text" NAME="pin" id="pin" size=10 maxlength=30 value=''>
</tr>

<tr bgcolor =#FEF7E9>
<td bgcolor="#E6F0F0"><div align="left"><font size="2" color="black" face=arial>Category </font></div></td>
<td bgcolor="#E6F0F0"><div align="left"><input type="text" NAME="sel_cat" id="sel_cat" size=30 maxlength=30 value=''>
</div></td>
</tr>
<tr>
<td height="51" colspan=2 bgcolor="#F2DFE2" ><div align="center"><br>
<input type="reset">&nbsp;&nbsp;<input type="submit" value="Submit" onclick="return valid()">
</div> </td>
</tr>
</table>
</form>
</div>
</td>
</tr>
</table>
</body>
</html>