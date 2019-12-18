

<%@ include file="include/database.jsp" %>

<script type="text/javascript">
function del()
{
if(confirm("Do You Want to Delete this Company detail?"))
{
}
else
{
return false;
}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link rel="stylesheet" href="image/style.css" type="text/css" charset="utf-8" />
</head>


       
 <body style="margin:0px">
<table width="100%" height="390" border="1">
<tr>
<td height="28" colspan="2" bgcolor="#624631"><jsp:include page="Candidateheader.jsp"/></td>
</tr>
<tr>
<td width="7" height="354" valign="top" bgcolor="white"><jsp:include page="Candidatemenu.html"/></td>
<td width="99%" bgcolor="white" valign="top">
<div class="Reg" align="center">      
          <table width="736" height="97" border="1" align="center">
           <th height="35" colspan="12">COMPANY DETAILS</th>
           <% 
                   int x=0; 
                if(x==1)
	{
	%> <tr bgcolor="white">
   
			  </div>
            </tr>
			<%}%>
            <tr bgcolor="yellow">
            
            <!-- <div align="center"><strong>Company No </strong></div></td>  -->
             <td><div align="center"><strong>Company_ID</strong></div></td> 
              <td><div align="center"><strong>Company Name </strong></div></td>
              <td><div align="center"><strong>ADDRESS </strong></div></td>
              <td><div align="center"><strong>POST </strong></div></td>
              <td><div align="center"><strong>CRITERIA </strong></div></td>
              <td><div align="center"><strong>USERNAME </strong></div></td>
              <td><div align="center"><strong>EMAIL_ID</strong></div></td>
              <td><div align="center"><strong>CONTACT_NO</strong></div></td>
              <td><div align="center"><strong>CUTOFF</strong></div></td>
            </tr>
			<% int icount=0;
rs=stmt.executeQuery("Select * from com");
while(rs.next())
{
  // C_no=rs.getInt("C_no");
  String C_ID=rs.getString("C_ID");
  String C_no=null;
 %>
            <tr>
              <!-- <td><div align="center"><%=++icount%></div></td>
              <!-- <td><%=C_no%></td> -->
              <td><%=C_ID%></td>
              <td><%=rs.getString("C_name")%></td>
              <td><%=rs.getString("C_address")%></td>
              <td><%=rs.getString("C_post")%></td>
              <td><%=rs.getString("C_criteria")%></td>
              <td><%=rs.getString("Username")%></td>
              <td><%=rs.getString("C_email")%></td>
              <td><%=rs.getString("C_contact")%></td>
              <td><%=rs.getDouble("C_cutoff")%></td>
              
            </tr>
            
<% }  %>			
        </table> 
        </table>  
</body>
</html>