<%@page import="java.io.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String exid=null;
        Connection con = null;
        Statement st = null, st2 = null;
        ResultSet rs = null;
        String sql = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
            st = con.createStatement();
        } catch (Exception ex) {
            out.println("Error: " + ex.toString());
        }
%>
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
            .style7 {color: #006666; font-weight: bold; }
            .style14 {color: #006699}
            -->
        </style>
    </head>
   <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" height="400" border="1">
<tr valign="top">
<td height="120" width="400" colspan="2" bgcolor="#624630"><jsp:include page="Candidateheader.jsp"/></td>
</tr>
<td width="1" height="449" valign="top" bgcolor="white"><jsp:include page="Candidatemenu.html"/></td>
<td width="900" valign="top" bgcolor="white">
                    <table width="304" height="243" border="0" align="center">
                        <tr>
                            <td colspan="2"><div align="center" class="style1">
                                    <p>Exam</p>
                                    <p>&nbsp;</p>
                            </div></td>
                        </tr>
                        <tr>


                        <%
        String Jid = request.getParameter("Jobid");
        try {
            if (Jid == null) {
                        %>
                        <form name="exam1" action ="ExamConduct.jsp">
                            <td width="167" height="42"><span class="style7">Select a JobID </span></td>
                            <td width="112">

                                <select name="Jobid">
                                    <%
                                rs = st.executeQuery("select * from jobdetails");
                             // String s1 = null;
                                //String s2=null;
                                while (rs.next()) {
                                   String s1 = rs.getString("Jobid");
                                        //s2=rs.getString("Post");
                                    out.println("<option value='" + s1 + "'>" + s1+ "</option>");
                                }//while

                                    %>
                                </select>
                            </td>
                            <tr><td> <div align="center">
                                        <input type="submit" value="OK ">
                            </div></td></tr>
                        </form>
                        <%
                            }//if
                            else {
                                Jid = request.getParameter("Jobid");
                                sql = "select Post from exam_details where Jobid='" + Jid + "'";
                                rs = st.executeQuery(sql);
                                String post = null;
                                if (rs.next()) {
                                    post = rs.getString("Post");
                                }
                                rs.close();


                        %> <form name="examSelection" action ="101.jsp">
                            <tr>
                                <td><span class="style7">Post Name :</span></td>
                                <td><%=post%></td>
                                <td width="11">&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="30" class="style7">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="30" class="style7">Select an Exam</td>
                                <td><select name="Examid">
                                    
                                        <%
                                sql = "select Examid,Examname from exam_details where Jobid='" + Jid + "'";
                                rs = st.executeQuery(sql);
                                String exname = null;
                                
                                while (rs.next()) {
                                    exid=rs.getString("Examid");
                                    exname=rs.getString("Examname");
                                    
                                    out.println("<option value='" + exid + "'>" + exname + "</option>");
                                }
                                        %>
                                        </select>
                                </td>
                                <td>&nbsp;</td>
                            <input type="hidden" name="Examid" value="<% out.println(exid);%>"/>
                            </tr>
                            
                            <tr>
                                <td class="style7"><div align="center">
                                        <input type="submit" value="OK ">
                                </div></td>
                            </tr>
                        </form>
                    </table>
                    <p>&nbsp;
                                        </p>

                    <%

            session.setAttribute("Jobid", request.getParameter("Jobid"));
            session.setAttribute("Post", post);
            }//else
        }//try
        catch (Exception e) {
            out.println(e);
        }
                    %>

                </td>

            </tr>
        </table>
    </body>
</html>
