<%@ include file="include/database.jsp"%>

<body>
<table width="100%" height="482" border="1">
<tr>
<td height="55" colspan="2" bgcolor="#FFFFFF"><jsp:include page="Companyheader.jsp"/></td>
</tr>
<tr>
<td width="1%"><jsp:include page="Companmenu.html"/></td>
<td width="99%" valign="top" bgcolor="#D6C0C9" valign="top">
<div class="Home" align="left">
<%
//out.println("HEllo");
int job_no=Integer.parseInt(request.getParameter("jobno"));
//out.println(job_no);
String Jobid=request.getParameter("Jobid");
String Post=request.getParameter("Post");
//String Criteria=request.getParameter("Criteria");
String Branch=request.getParameter("Branch");
String  No_of_vacancies=request.getParameter("NoofVacancies");
String  Salary1=request.getParameter("Salary");
double Salary=0;
if(Salary1!=null || !"".equals(Salary1))
Salary=Double.parseDouble(Salary1);
String Last_date=request.getParameter("Lastdate");
//out.println(job_no+" "+Jobid+" "+Post+" "+Branch+" "+No_of_vacancies+" "+Salary+" "+Last_date);
//+" "+Branch+" "+No_of_vacancies+" "+Salary+" "+Last_date);

//PreparedStatement pstmt=con.prepareStatement("Insert into jobdetails(job_code,Post,Criteria,No_of_vacancies,Salary,Last_date) values(?,?,?,?,?,?)");

pstmt=con.prepareStatement("Insert into jobdetails(jobno,Jobid,Post,Branch,NoofVacancies,Salary,Lastdate) values(?,?,?,?,?,?,?)");
pstmt.setInt(1,job_no);
//System.out.println(job_no);
pstmt.setString(2,Jobid);
pstmt.setString(3,Post);
pstmt.setString(4,Branch);
pstmt.setString(5,No_of_vacancies);
pstmt.setDouble(6,Salary);
pstmt.setString(7,Last_date);
pstmt.executeUpdate();
con.close();
//session.setAttribute("Exam","Exam Details ("+Exam_ID+") added successfully");
//response.sendRedirect("add_exam.jsp");
session.setAttribute("JobDetail","JobDetail("+Jobid+")added successfully");
  response.sendRedirect("addjob.jsp");
//session.setAttribute("JobDetail","JobDetail ("+Jobid+") added successfully");
//response.sendRedirect("addjob.jsp"); 
%>