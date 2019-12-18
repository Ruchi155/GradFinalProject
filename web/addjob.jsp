<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>www.Online Jobs.com</title><style type="text/css">

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

</style>
<script language="javascript">

function validate(JobDetail)
{
if(JobDetail.job_no.focus()
{
alert("Please enter no.!");
JobDetail.job_no.focus();
return false;
}
if(JobDetail.Jobid.value.length==0)
{
alert("Please enter jobid!");
JobDetail.Jobid.focus();
return false;

//if(JobDetail.job_code.value.length==0)
//{
//alert("Please enter code!");
//JobDetail.job_code.focus();
//return false;
//}

if(JobDetail.Post.value.length==0)
{
alert("Please enter post!");
JobDetail.Post.focus();
return false;
}
if(JobDetail.Branch.value.length==0)
{
    alert("Please enter Branch!");
}
JobDetail.Branch.focus();
return false;

//if(JobDetail.Criteria.value.length==0)
//{
//alert("Please enter criteria!");
//JobDetail.Criteria.focus();
//return false;
//}

if(JobDetail.No_of_vacancies.value.length==0)
{
alert("Please enter quantity!");
JobDetail.No_of_vacancies.focus();
return false;
}

if(JobDetail.Salary.value.length==0)
{
alert("Please enter Salary!");
JobDetail.Salary.focus();
return false;
}
if(JobDetail.Last_date.value=="")
{
alert("Enter Your Last_date for application?");
JobDetail.Last_date.focus();
return false;
}
else if(indexOf('/')==-1)
{
alert("Enter Email Correctly");
JobDetail.canemail.focus();
return false;
}
else if(indexOf('/')==-1)
{
alert("Enter date Correctly");
JobDetail.Last_date.focus();
return false;
}

return true;
}

</script>
</head>
<body style="margin:0px">
<table width="100%" height="390" border="1">
<tr>
<td height="28" colspan="2" bgcolor="#624631"><jsp:include page="Companyheader.jsp"/></td>
</tr>
<tr>
<td width="7" height="354" valign="top" bgcolor="white"><jsp:include page="Companmenu.html"/></td>
<td width="99%" bgcolor="#D6C0C9" valign="top">
<div class="Home" align="center">

        <form name="JobDetail" id="JobDetail" action="db_addjob1.jsp" method="post" onSubmit="return validate(this)">
          <table width="332" height="252" border="0" align="center" cellpadding="2" cellspacing="2">
                <h2 align="center">ADD JOB DETAILS </h2>
      
            <tr>
              <th height="33" colspan="2"><div align="center">
			  <%
			 String  JobDetail=(String)session.getAttribute("JobDetail");
			  session.removeAttribute("JobDetail");
			  if(JobDetail!=null)out.print(JobDetail);
			  %>
			  </div></th>
            </tr>

            </tr>
            <tr>
              <th>Job No </th>
              <td><input name="jobno" type="text" class="text" id="job_no" value="" /></td>
            </tr>
            <tr>
              <th>Job ID</th>
              <td><input name="Jobid" type="text" class="text" id="Jobid" value="" /></td>
            </tr>
            <tr>
              <th>Post </th>
              <td><input name="Post" type="text" class="text" id="Post" value="" /></td>
            </tr>
            <tr>
              <th>Branch </th>
              <td><input name="Branch" type="text" class="text" id="Branch" value="" /></td>
            </tr>
             <tr>
              <th>Vacancies</th>
              <td><input name="NoofVacancies" type="text" class="text" id="No_of_vacancies" value="" /></td>
            </tr>
            <tr>
              <th>Salary</th>
              <td><input name="Salary" type="text" class="text" id="Salary" value="" /></td>
            </tr>
           <tr>
              <th>Last_date</th>
              <td><input name="Lastdate" type="text" class="text" id="Last_date" value="" /></td>
            </tr>
            
            <tr>
              <td class="submission" colspan="2"><div align="center">
                <input name="s" type="submit" class="button" value="ADD" />
               <input name="Reset" type="reset" class="button" value="RESET" /> 
              </div></td>
            </tr>
            <tr>
              <th class="submission" colspan="2"><div align="center"></div></th>
            </tr>
          </table>
         </table>
        </form>
</body>
</html>