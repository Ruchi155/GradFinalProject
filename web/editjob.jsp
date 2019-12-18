

<%@ include file="include/database.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Job Online</title>
<link rel="stylesheet" href="images/style.css" type="text/css" charset="utf-8" />
</head>
<body style="margin:0px">
<table width="100%" height="390" border="1">
<tr>
<td height="28" colspan="2" bgcolor="#624631"><jsp:include page="Companyheader.jsp"/></td>
</tr>
<tr>
<td width="7" height="354" valign="top" bgcolor="white"><jsp:include page="Companmenu.html"/></td>
<td width="99%" bgcolor="D6C0C9" valign="top">
<div class="Home" align="left">
<% 
String job_no1=request.getParameter("jobno");
int job_no=0;
String Jobid=null;
String Post=null;
String Branch=null;
String No_of_vacancies=null;
double Salary=0.0;
String Last_date=null;

if(job_no1!=null)
 job_no=Integer.parseInt(job_no1);

rs=stmt.executeQuery("Select * from jobdetails where  jobno= "+job_no);
if(rs.next())
{
    
//job_code=rs.getString("job_code");
 Jobid=rs.getString("jobid");

Post=rs.getString("Post");
Branch=rs.getString("Branch");
No_of_vacancies=rs.getString("NoofVacancies");
Salary=rs.getDouble("Salary");
Last_date=rs.getString("Lastdate");
}

 %>
        <h2 align="center">EDIT JOB DETAILS </h2>
        <form name="JobDetail" id="JobDetail" action="updatejob.jsp" method="post" >
          <table width="332" height="252" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>
              <th height="33" colspan="2"><div align="center">
			  <%
			  String update_JobDetail=(String)session.getAttribute("update_JobDetail");
			  session.removeAttribute("update_JobDetail");
			  if(update_JobDetail!=null)out.print(update_JobDetail);
			  %>
			  </div></th>
            </tr>
                           <tr>
              <th>Job_No </th>
              <td><input name="jobno" type="text" class="text" id="job_no" value="<%=job_no%>" /></td>
            </tr>
            <tr>
              <th>JobID </th>
              <td><input name="Jobid" type="text" class="text" id="Jobid" value="<%=Jobid%>" /></td>
            </tr>
            <tr>
              <th>Post </th>
              <td><input name="Post" type="text" class="text" id="Post" value="<%=Post%>" /></td>
            </tr>
            <tr>
              <th>Branch </th>
              <td><input name="Branch" type="text" class="text" id="Branch" value="<%=Branch%>" /></td>
            </tr>
            <tr>
              <th>Vacancies</th>
              <td><input name="NoofVacancies" type="text" class="text" id="No_of_vacancies" value="<%=No_of_vacancies%>" /></td>
            </tr>
            <tr>
              <th>Salary</th>
              <td><input name="Salary" type="text" class="text" id="Salary" value="<%=Salary%>" /></td>
            </tr>
            <tr>
              <th>Last_date</th>
              <td><input name="Lastdate" type="text" class="text" id="Last_date" value="<%=Last_date%>" /></td>
            </tr>
            <tr>
              <td class="submission" colspan="6"><center>
                <input type="hidden" name="jobno"  value="<%=job_no%>"/>
                <input name="s" type="submit" class="button" value="UPDATE" /></center>
                
              </td>
            </tr>
            <tr>
              <th class="submission" colspan="2"><div align="center"><a href="viewjob.jsp">View Jobdetails</a> </div></th>
            </tr>
          </table>
        </form>
</body>
</html>