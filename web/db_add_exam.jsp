<%@ include file="include/database.jsp" %>
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
int Exam_no=Integer.parseInt(request.getParameter("Examno"));
String  Jobid=request.getParameter("Jobid");
String Post=request.getParameter("Post");
String Exam_ID=request.getParameter("Examid");
String Exam_Name=request.getParameter("Examname");

String Cutoff1=request.getParameter("Cutoff");
double Cutoff=0.0;
if(Cutoff1!=null || !"".equals(Cutoff1))
Cutoff=Double.parseDouble(Cutoff1);

pstmt=con.prepareStatement("Insert into exam_details(Examno,Jobid,Post,Examid,Examname,Cutoff) values(?,?,?,?,?,?)");
pstmt.setInt(1,Exam_no);
pstmt.setString(2,Jobid);
pstmt.setString(3,Post);
//pstmt.setInt(3,Exam_no);
pstmt.setString(4,Exam_ID);
pstmt.setString(5,Exam_Name);
pstmt.setDouble(6,Cutoff);
pstmt.executeUpdate();
con.close();
session.setAttribute("Exam","Exam Details ("+Exam_ID+") added successfully");
response.sendRedirect("add_exam.jsp");
%>
</table>