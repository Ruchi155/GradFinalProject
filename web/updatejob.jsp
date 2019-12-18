<%@ include file="include/database.jsp"%>
<table width="100%" height="390" border="1">
<tr>
<td height="28" colspan="2" bgcolor="#624631"><jsp:include page="Companyheader.jsp"/></td>
</tr>
<tr>
<td width="7" height="354" valign="top" bgcolor="white"><jsp:include page="Companmenu.html"/></td>
<td width="99%" bgcolor="white" valign="top">
<div class="Home" align="left">
</table>
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
Jobid=request.getParameter("Jobid");

//job_code=request.getParameter("job_code");
Post=request.getParameter("Post");
Branch=request.getParameter("Branch");
No_of_vacancies=request.getParameter("NoofVacancies");
String Salary1=request.getParameter("Salary");
if(Salary1!=null || !"".equals(Salary1))
Salary=Double.parseDouble(Salary1);
Last_date=request.getParameter("Lastdate");
pstmt=con.prepareStatement("Update jobdetails set Jobid=?,Post=?,Branch=?,NoofVacancies=?,Salary=?,Lastdate=? where jobno="+job_no);
pstmt.setString(1,Jobid);
pstmt.setString(2,Post);
pstmt.setString(3,Branch);
pstmt.setString(4,No_of_vacancies);
pstmt.setDouble(5,Salary);
pstmt.setString(6,Last_date);
pstmt.executeUpdate();

con.close();
session.setAttribute("update_JobDetail","jobdetails ("+Jobid+") updated successfully");
%>
<jsp:forward page="editjob.jsp">
<jsp:param name="jobno" value="<%=job_no%>" />
<jsp:param name="Jobid" value="<%=Jobid%>" />
</jsp:forward>