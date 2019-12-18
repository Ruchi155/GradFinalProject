<%@ include file="include/database.jsp" %>
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
String Jobid=request.getParameter("Jobid");
String Exam_ID=request.getParameter("Examid");
int  ques_no=Integer.parseInt(request.getParameter("QuestionNo"));
String Question=request.getParameter("Question");
String Option1=request.getParameter("Option1");
String Option2=request.getParameter("Option2");
String Option3=request.getParameter("Option3");
String Option4=request.getParameter("Option4");
String Answer=request.getParameter("Answer");

pstmt=con.prepareStatement("Insert into question(Jobid,Examid,QuestionNo,Question,Option1,Option2,Option3,Option4,Answer) values(?,?,?,?,?,?,?,?,?)");
pstmt.setString(1,Jobid);
pstmt.setString(2,Exam_ID);
pstmt.setInt(3,ques_no);
pstmt.setString(4,Question);
pstmt.setString(5,Option1);
pstmt.setString(6,Option2);
pstmt.setString(7,Option3);
pstmt.setString(8,Option4);
pstmt.setString(9,Answer);
pstmt.executeUpdate();
con.close();
session.setAttribute("Question","Question Details ("+Exam_ID+") added successfully");
response.sendRedirect("add_Question.jsp");
%>
</table>