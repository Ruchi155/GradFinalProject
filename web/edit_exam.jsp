
<%@ include file="include/database.jsp"%>

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

//Exam_ID=request.getParameter("Exam_ID");
//if(Exam_ID!=null)
//Exam_ID=String.(Exam_ID);

//rs=stmt1.executeQuery("Select * from exam_details where Exam_ID="+Exam_ID);

String Exam_no1=request.getParameter("Examno");
int Exam_no=0;
String Jobid=null;
String Post=null;
String Exam_ID=null;
String Exam_Name=null;
double Cutoff=0.0;
if(Exam_no1!=null)
Exam_no=Integer.parseInt(Exam_no1);

rs=stmt.executeQuery("Select * from exam_details where Examno="+Exam_no);
if(rs.next())
{
    //Exam_no=Integer.parseInt(request.getParameter("Examno"));
Jobid=rs.getString("Jobid");
Post=rs.getString("Post");

Exam_ID=rs.getString("Examid");
Exam_Name=rs.getString("Examname");
Cutoff=rs.getDouble("Cutoff");
}

 %>

        <h2 align="center">EDIT EXAM DETAILS </h2>
        <form name="Exam" id="Exam" action="update_exam.jsp" method="post" >
          <table width="332" height="252" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>
              <th height="33" colspan="2"><div align="center">
			  <%
			 String  update_Exam=(String)session.getAttribute("update_Exam");
			  session.removeAttribute("update_Exam");
			  if(update_Exam!=null)out.print(update_Exam);
			  %>
			  </div></th>
            </tr>
            <tr>
              <th>Exam_No </th>
              <td><input name="Examno" type="text" class="text" id="Exam_no" value="<%=Exam_no%>" /></td>
            </tr>
              <th>JobID </th>
              <td><input name="Jobid" type="text" class="text" id="Jobid" value="<%=Jobid%>" /></td>
            </tr>
              <th>Post</th>
              <td><input name="Post" type="text" class="text" id="Post" value="<%=Post%>" /></td>
            </tr>
            <tr>
              <th>Exam_ID </th>
              <td><input name="Examid" type="text" class="text" id="Exam_ID" value="<%=Exam_ID%>" /></td>
            </tr>
            <tr>
              <th>Exam_Name </th>
              <td><input name="Examname" type="text" class="text" id="Exam_Name" value="<%=Exam_Name%>" /></td>
            </tr>
            <tr>
              <th>Cutoff</th>
              <td><input name="Cutoff" type="text" class="text" id="Cutoff" value="<%=Cutoff%>" /></td>
            </tr>
            <tr>
              <td class="submission" colspan="6">
                <input type="hidden" name="Examno" value="<%=Exam_no%>"/><center>
                <input name="s" type="submit" class="button" value="UPDATE" /></center>
                
              </td>
            </tr>
            <tr>
              <th class="submission" colspan="2"></div><a href="view_exam.jsp">View Examdetails</a></th>
            </tr>
          </table>
          </table>
        </form>
</body>
</html>