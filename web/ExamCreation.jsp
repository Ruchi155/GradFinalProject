<%@page import="java.io.*,java.sql.*"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}
.style7 {color: #CC3333; font-weight: bold; }
.style14 {color: #006699}
.style19 {color: #003366; font-weight: bold; }
.style20 {color: #663366}
-->
        </style>
</head>
        <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bgcolor="#FFFFFF">
          <tr>
            <td height="107" colspan="2"><jsp:include page="Companyheader.jsp"/></td>
          </tr>
          <tr>
            <td width="1" height="512"><jsp:include page="Companmenu.html"/></td>
            <td width="961" bgcolor="#B0CDD7" valign="top">
              <table width="277" height="144" border="0" align="center">
          <tr>
            <td colspan="2"><div align="center" class="style1">
              <p class="style7 style14">Exam Creation </p>
              </div></td>
          </tr>
          <tr>
<%
      String jid=request.getParameter("Jobid");  
    try
       {
        if(jid==null)       
              {
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
                Statement st = con.createStatement();
%>
 <form name="form1" action="ExamCreation.jsp">
 <td width="163" height="42"><span class="style19">Select a JobID </span></td>
 <td width="104">
              <label>
                <select name="Jobid">
<%      ResultSet rs = st.executeQuery("select * from jobdetails");
             //   String s1=null;
             String s2=null;
                while (rs.next())
                    {  
                    //  s1=rs.getString("job_code");
                s2=rs.getString("Post");
              
%>
                  <option value="<%=s2%>"><%=s2%></option>
                 <% }//while %>
              </select>
              </label>   
</td>
   <tr><td> <div align="center">
     <input type="submit" value="Show Details"> 
   </div></td></tr> 
</form> 
<%  
          }//if
    else 
         {
            jid=request.getParameter("Jobid");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
            Statement st = con.createStatement();
            Statement st2=con.createStatement();
            ResultSet rs = st.executeQuery("select * from jobdetails where Post='"+jid+"'");
                String s2=null;
                while(rs.next())
                    {
                      s2=rs.getString("Post");
                  
%>
          <tr>
            <td><span class="style19">Post Name :</span></td>
            <td><%=s2%></td>
          </tr>
        </table>
        <p>&nbsp;</p>
        <form method="post" action="saveexamdetails.jsp">
       <table width="318" height="166" border="1" align="center">
      <tr>
        <td width="138" height="40" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Exam ID</strong></div></td>
        <td width="164" bordercolor="#666666" bgcolor="#B0CDD7"><input type="text" name="examid"></td>
      </tr>
      <tr>
        <td height="40" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Exam Name </strong></div></td>
        <td bordercolor="#666666" bgcolor="#B0CDD7"><input type="text" name="examname"></td>
      </tr>
      <tr>
        <td height="41" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Cutoff %</strong></div></td>
        <td bordercolor="#666666" bgcolor="#B0CDD7"><input type="text" name="cutoff"></td>
      </tr>

      <tr>
        <td height="33" colspan="2" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center">
          <input type="submit" name="Submit" value="Submit">
            </div>        </td>
      </tr>
     </table>
    </form>
<%
           }//while
                session.setAttribute("Jobid", request.getParameter("Jobid"));
            session.setAttribute("Post", s2);    
      }//else
        
   }//try
            catch(Exception e)
              {
                 out.println(e);
              }
%>
         
            </td>
          </tr>
        </table>
    </body>
</html>