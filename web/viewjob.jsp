
<%@ include file="include/database.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript">
function del()
{
if(confirm("Do You Want to Delete this Jobdetail?"))
{
}
else
{
return false;
}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>www.Online Jobs.com</title>
<link rel="stylesheet" href="image/style.css" type="text/css" charset="utf-8" />
</head>
<body style="margin:0px">
<table width="100%" height="390" border="1">
<tr>
<td height="28" colspan="2" bgcolor="#624631"><jsp:include page="Companyheader.jsp"/></td>
</tr>
<tr>
<td width="7" height="354" valign="top" bgcolor="white"><jsp:include page="Companmenu.html"/></td>
<td width="99%" bgcolor="#D6C0C9" valign="top">
<div class="Home" align="left">
    <%
String job_no1=request.getParameter("jobno");
int job_no=0;
if(job_no1!=null)
    
job_no=Integer.parseInt(job_no1);
String delete_JobDetail=request.getParameter("delete_JobDetail");

if("yes".equals(delete_JobDetail))
{
//job_code=request.getParameter("job_code");
//x=stmt1.executeUpdate("Delete from jobdetails where Job_no="+job_no);
String Jobid=request.getParameter("Jobid");
int x=stmt1.executeUpdate("Delete from jobdetails where jobno="+job_no);
} 
%>
<br>
    <br>
        
    </br>
</br>
<table width="736" height="97" border="1" align="center">
              <th height="35" colspan="9"><h2>JOB DETAILS</h2></th>
           <% 
int x=0;
if(x==1)
	{
	%><tr bgcolor="white">
            
           <th  height="35" colspan="9"><div align="center">
			  </div></th> 
            </tr>
			<%}%>
            <tr bgcolor="white">
             <td><div align="center"><strong>JOB NO</strong></div></td>
              <td><div align="center"><strong>JOB ID </strong></div></td>
              <td><div align="center"><strong>POST </strong></div></td>
              <td><div align="center"><strong>Branch </strong></div></td>
              <td><div align="center"><strong>VACANCIES </strong></div></td>
              <td><div align="center"><strong>SALARY</strong></div></td>
              <td><div align="center"><strong>LAST DATE </strong></div></td>
              <td colspan="2"><div align="center"><strong>ACTION</strong></div></td>
            </tr>
			<% int icount=0;
rs=stmt.executeQuery("Select * from jobdetails");
while(rs.next())
{
  job_no=rs.getInt("jobno");
  String Jobid=rs.getString("Jobid");
 %>
            <tr>
              <td><div align="center"><%=++icount%></div></td>
              <td><%=Jobid%></td>
              <td><%=rs.getString("Post")%></td>
              <td><%=rs.getString("Branch")%></td>
              <td><%=rs.getString("NoofVacancies")%></td>
              <td><%=rs.getDouble("Salary")%></td>
              <td><%=rs.getDate("Lastdate")%></td>
              <td><div align="center"><a href="editjob.jsp?jobno=<%=job_no%>">Edit</a></div></td>
              <td><div align="center"><a href="viewjob.jsp?delete_JobDetail=yes&jobno=<%=job_no%>&&Jobid=<%=Jobid%>"onclick="return del()">Delete</a></div></td>
            </tr>
<% }  %>	
</table>
                  </table>  
</body>
</html>