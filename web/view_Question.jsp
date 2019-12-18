
<%@ include file="include/database.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript">
function del()
{
if(confirm("Do You Want to Delete this Question detail?"))
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
<td width="99%" bgcolor="D6C0C9" valign="top">
<div class="Home" align="left">
<%
String ques_no1=request.getParameter("QuestionNo");
int ques_no=0;
int x=0;
if(ques_no1!=null)
ques_no=Integer.parseInt(ques_no1);
 String delete_Question=request.getParameter("delete_Question");
String Exam_ID=request.getParameter("Examid");

if("yes".equals(delete_Question))
{
x=stmt1.executeUpdate("Delete from question where QuestionNo="+ques_no);
}
%>
          <table width="736" height="97" border="1" align="center">
              <br>
                  <br></br>
              </br>
          <th height="35" colspan="10"> QUESTION </th>
           <% if(x==1)
	{
	%> <tr bgcolor="WHITE">
              <th  height="35" colspan="10"><div align="center">
			  Question (<%=Exam_ID%>) deleted successfully
			  </div></th>
            </tr>
			<%}%>
            <tr bgcolor="WHITE">
              <td><div align="center"><strong>Question_NO </strong></div></td>
              <td><div align="center"><strong>Exam_ID</strong></div></td>
              <td><div align="center"><strong>JobID</strong></div></td>  
              <td><div align="center"><strong>Question </strong></div></td>
              <td><div align="center"><strong>Option1 </strong></div></td>
              <td><div align="center"><strong>Option2 </strong></div></td>
              <td><div align="center"><strong>Option3 </strong></div></td>
              <td><div align="center"><strong>Option4 </strong></div></td>
              <td><div align="center"><strong>ANSWER </strong></div></td>
              <td colspan="2"><div align="center"><strong>ACTION</strong></div></td>
            </tr>
			<% int icount=0;
rs1=stmt.executeQuery("Select * from question");
while(rs1.next())
{
  ques_no=rs1.getInt("QuestionNo");
  Exam_ID=rs1.getString("Examid");
 %>
            <tr>
             <!--  <td><div align="center"><%=++icount%></div></td>  -->
                <td><%=ques_no%></td>
              <td><%=Exam_ID%></td>
               <td><%=rs1.getString("Jobid")%></td>
              <td><%=rs1.getString("Question")%></td>
              <td><%=rs1.getString("Option1")%></td>
              <td><%=rs1.getString("Option2")%></td>
              <td><%=rs1.getString("Option3")%></td>
              <td><%=rs1.getString("Option4")%></td>
              <td><%=rs1.getString("Answer")%></td>
              <td><div align="center"><a href="edit_Question.jsp?QuestionNo=<%=ques_no%>">Edit</a></div></td>
              <td><div align="center"><a href="view_Question.jsp?delete_Question=yes&QuestionNo=<%=ques_no%>&Examid=<%=Exam_ID%>" onclick="return del()">Delete</a></div></td>
            </tr>
<% }  %>			
        </table>
        </table>   
</body>
</html>