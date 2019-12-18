
<%@ include file="include/database.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Job Online</title>
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

rs=stmt.executeQuery("Select * from question where QuestionNo="+ques_no);
if(rs.next())
{
    
//Jobid=rs.getString("Jobid");
Exam_ID=rs.getString("Examid");

ques_no=rs.getInt("QuestionNo");
Question=rs.getString("Question");
Option1=rs.getString("Option1");
Option2=rs.getString("Option2");
Option3=rs.getString("Option3");
Option4=rs.getString("Option4");
Answer=rs.getString("Answer");
}

 %>

        <h2 align="center">EDIT QUESTION DETAILS </h2>
        <form name="Question" id="Question" action="update_Question.jsp" method="post" >
          <table width="332" height="252" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>
              <th height="33" colspan="2"><div align="center">
			  <%
			  String update_Question=(String)session.getAttribute("update_Question");
			  session.removeAttribute("update_Question");
			  if(update_Question!=null)out.print(update_Question);
			  %>
			  </div></th>
            </tr>
            <tr>
              <th>Question_No </th>
              <td><input name="QuestionNo" type="text" class="text" id="ques_no" value="<%=ques_no%>" /></td>
            </tr>
  
            <tr>
              <th>Exam_ID </th>
              <td><input name="Examid" type="text" class="text" id="Exam_ID" value="<%=Exam_ID%>" /></td>
            </tr>
            <tr>
              <th>Question</th>
              <td><input name="Question" type="text" class="text" id="Question" value="<%=Question%>" /></td>
            </tr>
             <tr>
              <th>Option1</th>
              <td><input name="Option1" type="text" class="text" id="Option1" value="<%=Option1%>" /></td>
            </tr>
             <tr>
              <th>Option2</th>
              <td><input name="Option2" type="text" class="text" id="Option2" value="<%=Option2%>" /></td>
            </tr>
             <tr>
              <th>Option3</th>
              <td><input name="Option3" type="text" class="text" id="Option3" value="<%=Option3%>" /></td>
            </tr>
             <tr>
              <th>Option4</th>
              <td><input name="Option4" type="text" class="text" id="Option4" value="<%=Option4%>" /></td>
            </tr>
            <tr>
              <th>Answer</th>
              <td><input name="Answer" type="text" class="text" id="Answer" value="<%=Answer%>" /></td>
            </tr>
            <tr>
              <td class="submission" colspan="6">
                <input type="hidden" name="QuestionNo" value="<%=ques_no%>"/><center>
                <input name="s" type="submit" class="button" value="UPDATE" /></center>
                
              </td>
            </tr>
            <tr>
              <th class="submission" colspan="2"><div align="center"><a href="view_Question.jsp">View Questions</a> </div></th>
            </tr>
          </table>
          </table>
        </form>
</body>
</html>