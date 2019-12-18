<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link rel="stylesheet" href="image/style.css" type="text/css" charset="utf-8" />
<script language="javascript">

function validate(Exam)
{

if(Exam.Exam_ID.value.length==0)
{
alert("Please enter Exam_ID!");
Exam.Exam_ID.focus();
return false;
}

if(Exam.Exam_Name.value.length==0)
{
alert("Please enter Exam_Name!");
Exam.Exam_Name.focus();
return false;
}

if(Exam.Cutoff.value=="")
{
alert("Enter Cutoff");
Exam.Cutoff.focus();
return false;
}
else if(!parseInt(e))
{
alert("Enter integer");
Exam.Cutoff.focus();
return false;
}
else if(parseInt(e)<0||parseInt(e)>10)
{
alert("Enter cutoff in %");
Exam.Cutoff.focus();
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
<td width="99%" bgcolor="#D6C0C9" valign="top">
<div class="Home" align="left">

        <h2 align="center">ADD EXAM DETAILS </h2>
        <form name="Exam" id="Exam" action="db_add_exam.jsp" method="Exam_ID" onSubmit="return validate(this)">
          <table width="332" height="252" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>
              <th height="33" colspan="2"><div align="center">
			  <%
			  String Exam=(String)session.getAttribute("Exam");
			  session.removeAttribute("Exam");
			  if(Exam!=null)out.print(Exam);
			  %>
			  </div></th>
            </tr>
          <tr>
              <th>Exam_No</th>
              <td><input name="Examno" type="text" class="text" id="Exam_no" value="" /></td>
            </tr> 
            <tr>
              <th>Jobid</th>
              <td><input name="Jobid" type="text" class="text" id="Jobid" value="" /></td>
            </tr>
            <tr>
              <th>Post</th>
              <td><input name="Post" type="text" class="text" id="Post" value="" /></td>
            </tr>
 
            <tr>
              <th>Exam_ID </th>
              <td><input name="Examid" type="text" class="text" id="Exam_ID" value="" /></td>
            </tr>
            <tr>
              <th>Exam_Name </th>
              <td><input name="Examname" type="text" class="text" id="Exam_Name" value="" /></td>
            </tr>
              <th>Cutoff</th>
              <td><input name="Cutoff" type="text" class="text" id="Cutoff" value="" /></td>
            </tr>
            
            <tr>
              <td class="submission" colspan="2"><div align="center">
                <input name="s" type="submit" class="button" value="ADD" />
                <!-- <input name="Reset" type="reset" class="button" value="RESET"/>  -->
              </div></td>
            </tr>
            <tr>
              <th class="submission" colspan="2"><div align="center"></div></th>
            </tr>
          </table>
         </table>
        </form>
</body>
</html>