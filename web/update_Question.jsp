
<%@ include file="include/database.jsp" %>
<body style="margin:0px">
<table width="100%" height="390" border="1">
<tr>
<td height="28" colspan="2" bgcolor="#624631"><jsp:include page="Companyheader.jsp"/></td>
</tr>
<tr>
<td width="7" height="354" valign="top" bgcolor="white"><jsp:include page="Companmenu.html"/></td>
<td width="99%" bgcolor="white" valign="top">
<div class="Home" align="left">

<%
String ques_no1=request.getParameter("QuestionNo");
int ques_no=0;
//String Jobid=null;
String Exam_ID=null;
String Question=null;
String Option1=null;
String Option2=null;
String Option3=null;
String Option4=null;
String Answer=null;


if(ques_no1!=null)
ques_no=Integer.parseInt(ques_no1);
//Jobid=request.getParameter("Jobid");
Exam_ID=request.getParameter("Examid");
Question=request.getParameter("Question");
Option1=request.getParameter("Option1");
Option2=request.getParameter("Option2");
Option3=request.getParameter("Option3");
Option4=request.getParameter("Option4");
Answer=request.getParameter("Answer");

pstmt=con.prepareStatement("update question set  Examid=?,Question=?,Option1=?,Option2=?,Option3=?,Option4=?,Answer=? where QuestionNo="+ques_no);

//pstmt.setString(1,Jobid);
pstmt.setString(1,Exam_ID);
pstmt.setString(2,Question);
pstmt.setString(3,Option1);
pstmt.setString(4,Option2);
pstmt.setString(5,Option3);
pstmt.setString(6,Option4);
pstmt.setString(7,Answer);
pstmt.executeUpdate();
con.close();
session.setAttribute("update_Question","Question details ("+Exam_ID+") updated successfully");
%>
<jsp:forward page="edit_Question.jsp">
    <jsp:param name="Examid" value="<%=Exam_ID%>"/>
<jsp:param name="QuestionNo" value="<%=ques_no%>" />
</jsp:forward>
</table>