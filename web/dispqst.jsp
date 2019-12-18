<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Connection con;
        Statement st;
        ResultSet rs;
        String sql;
        int qno= Integer.parseInt(request.getParameter("QuestionNo"));
        out.println(qno);
     //String studentid = session.getAttribute("Emp_id").toString();
        String qstn = "", ch1 = "", ch2 = "", ch3 = "", ch4 = "", ans = "";
                String jobID= session.getAttribute("Jobid").toString();

        try {
                               //  sql = "select * from temp_data where  QuestionNo=" +qno ;

           //sql = "select * from temp_data where Emp_id='" + studentid+ "' and QuestionNo=" + qno;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
            st = con.createStatement();
              sql = "select * from temp_data where  QuestionNo=" +qno ;
            rs = st.executeQuery(sql);
            if (rs.next()) {
                qstn = rs.getString(3);
                
                ch1 = rs.getString(4);
                ch2 = rs.getString(5);
                ch3 = rs.getString(6);
                ch4 = rs.getString(7);
                ans = rs.getString(8);
        %>



        <form action="calcmarks.jsp" method="post">

            <table width="829" height="244" border="1" bgcolor="#78AFA0">
                <tr>
                    <td width="148"><strong>Question <%=qno%>
                      of 10
                      </strong>
                      <input type="hidden" name="QuestionNo" value="<%=qno%>">                  </td>
                    <td><strong><%=qstn%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>1</strong></div></td>
                    <td width="460">
                      <strong>
                      <input name="Option1" type="radio" value="<%=ch1%>">
                      <%=ch1%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>2</strong></div></td>
                    <td>
                      <strong>
                      <input name="Option2" type="radio" value="<%=ch2%>">
                      <%=ch2%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>3</strong></div></td>
                    <td>
                      <strong>
                      <input name="Option3" type="radio" value="<%=ch3%>">
                      <%=ch3%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>4</strong></div></td>
                    <td>
                      <strong>
                      <input name="Option4" type="radio" value="<%=ch4%>">
                      <%=ch4%></strong></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="Answer" value="<%=ans%>"></td>
                    <%
                if (qno <= 9) {
                    %>
                    <td><input type="submit" name="next" value="Next Question"></td>
                    <%} else {
                    %>
                    <td width="199"><input type="submit" name="Finish" value="Finish"></td>
                    <%                }
                    %>
                </tr>
            </table>
        </form>
        <%            }
        } catch (Exception ex) {
            out.println(ex);
        }
    //out.println(session.getAttribute("mark"));
%>
        <h1>&nbsp;</h1>
    </body>
</html>
