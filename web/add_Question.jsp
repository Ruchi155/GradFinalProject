
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link rel="stylesheet" href="image/style.css" type="text/css" charset="utf-8" />
<script language="javascript">

function validate(Question)
{

if(Question.Exam_ID.value.length==0)
{
alert("Please enter Exam_ID!");
Question.Exam_ID.focus();
return false;
}

if(Question.Question.value.length==0)
{
alert("Please enter Question!");
Question.Question.focus();
return false;
}

if(Question.Option1.value.length==0)
{
alert("Please enter Option1!");
Question.Option1.focus();
return false;
}
if(Question.Option2.value.length==0)
{
alert("Please enter Option2!");
Question.Option2.focus();
return false;
}
if(Question.Option3.value.length==0)
{
alert("Please enter Option3!");
Question.Option3.focus();
return false;
}
if(Question.Option4.value.length==0)
{
alert("Please enter Option4!");
Question.Option4.focus();
return false;
}
if(Question.Answer.value.length==0)
{
alert("Please enter Answer!");
Question.Answer.focus();
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
<td width="99%" bgcolor="D6C0C9" valign="top">
<div class="Home" align="left">

        <h2 align="center">ADD Question DETAILS </h2>
        <form name="Question" id="Question" action="db_add_Question.jsp" method="Exam_ID" onSubmit="return validate(this)">
          <table width="332" height="252" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>
              <th height="33" colspan="2"><div align="center">
			  <%
			  String Question=(String)session.getAttribute("Question");
			  session.removeAttribute("Question");
			  if(Question!=null)out.print(Question);
			  %>
			  </div></th>
            </tr>
           <tr>
              <th>Job_ID </th>
              <td><input name="Jobid" type="text" class="text" id="Jobid" value="" /></td>
            </tr> 
            <tr>
              <th>Exam_ID </th>
              <td><input name="Examid" type="text" class="text" id="Exam_ID" value="" /></td>
            </tr>
              <tr>
              <th>Question No </th>
              <td><input name="QuestionNo" type="text" class="text" id="ques_no" value="" /></td>
            </tr>
            <tr>
              <th>Question</th>
              <td><input name="Question" type="text" class="text" id="Question" value="" /></td>
            </tr>
             <tr>
              <th>Option1</th>
              <td><input name="Option1" type="text" class="text" id="Option1" value="" /></td>
            </tr>
             <tr>
              <th>Option2</th>
              <td><input name="Option2" type="text" class="text" id="Option2" value="" /></td>
            </tr>
             <tr>
              <th>Option3</th>
              <td><input name="Option3" type="text" class="text" id="Option3" value="" /></td>
            </tr>
             <tr>
              <th>Option4</th>
              <td><input name="Option4" type="text" class="text" id="Option4" value="" /></td>
            </tr>
            <tr>
              <th>Answer</th>
              <td><input name="Answer" type="text" class="text" id="Answer" value="" /></td>
            </tr>
            
            <tr>
              <td class="submission" colspan="2"><div align="center">
                <input name="s" type="submit" class="button" value="ADD" />
                <!-- <input name="Reset" type="reset" class="button" value="RESET" />  -->
              </div></td>
            </tr>
            <tr>
              <th class="submission" colspan="2"><div align="center"></div></th>
            </tr>
          </table>
        </form>
</body>
</html>