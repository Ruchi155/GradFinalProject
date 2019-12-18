
<%@ include file="include/database.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<script type="text/javascript">
function del()
{
if(confirm("Do You Want to Delete this Exam detail?"))
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
<td width="99%" bgcolor="#D6C0C9" valign="top">
<div class="Home" align="left">
<%

//Exam_ID=request.getParameter("Examid");
//if(Exam_no1!=null)
//Exam_no=Integer.parseInt(Exam_no1);

String  Exam_no1=request.getParameter("Examno");
int Exam_no=0;
String Exam_ID=null;
int x=0;

if(Exam_no1!=null)
Exam_no=Integer.parseInt(Exam_no1);
String delete_Exam=request.getParameter("delete_Exam");

if("yes".equals(delete_Exam))
{
Exam_ID=request.getParameter("Exam_ID");

//x=stmt.executeUpdate("Delete from exam_details where Exam_ID="+Exam_ID);
x=stmt.executeUpdate("Delete from exam_details where Examno="+Exam_no);
}
%>
        
        
          <table width="736" height="97" border="1" align="center">
          <br>
              <br><br></br>
          <th height="35"  colspan="9">EXAM DETAILS</th>
           <% if(x==1)
	{
	%> <tr bgcolor="White">
              <th  height="35"  colspan="9"><div align="center">
			  <!-- Examdetails (<%=Exam_ID%>) deleted successfully   -->
			  </div></th>
            </tr>
			<%}%>
          <b><tr bgcolor="White"></b>
          <br></br>
              <td><div align="center"><strong>EXAM NO </strong></div></td> 
              <td><div align="center"><strong>Job ID </strong></div></td> 
              <td><div align="center"><strong>Post </strong></div></td> 
              <td><div align="center"><strong>EXAM ID </strong></div></td>
              <td><div align="center"><strong>EXAM NAME </strong></div></td>
              <td><div align="center"><strong>CUTOFF</strong></div></td>
              <td colspan="2"><div align="center"><strong>ACTION</strong></div></td>
            </tr>
			<% int icount=0;
rs=stmt.executeQuery("Select * from exam_details");
while(rs.next())
{
  Exam_no=rs.getInt("Examno");
  Exam_ID=rs.getString("Examid");
 %>
            <tr>
              <!-- <td><div align="center"><%=++icount%></div></td>  -->
                <td><%=Exam_no%></td>
                <td><%=rs.getString("Jobid")%></td>
                <td><%=rs.getString("Post")%></td>
                <td><%=rs.getString("Examid")%></td>
              <td><%=rs.getString("Examname")%></td>
              <td><%=rs.getDouble("Cutoff")%></td>
             <!--  <td><div align="center"><a href="edit_exam.jsp?Exam_ID=<%=Exam_ID%>">Edit</a></div></td>
              <td><div align="center"><a href="view_exam.jsp?delete_Exam=yes & Exam_no=<%=Exam_no%>" onclick="return del()">Delete</a></div></td>
 -->
              <td><div align="center"><a href="edit_exam.jsp?Examno=<%=Exam_no%>">Edit</a></div></td>
              <td><div align="center"><a href="view_exam.jsp?delete_Exam=yes&Examno=<%=Exam_no%>&Examid=<%=Exam_ID%>" onclick="return del()">Delete</a></div></td>
             </tr>
<% }  %>			
        </table> 
        </table>  
</body>
</html>