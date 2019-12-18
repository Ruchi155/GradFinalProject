<form id="form1" name="form1" method="post" action="calcmark.jsp">
    <input name="OK" type="submit" id="OK" value="Submit" />
</form>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" session="true" %>
<%
        Connection con;
        Statement st;
        ResultSet rs;
        String sql;

        int mark = Integer.parseInt(session.getAttribute("Marks").toString());
        String ch = request.getParameter("ch");
        String ans = request.getParameter("Answer");
        int qno = Integer.parseInt(request.getParameter("QuestionNo"));
        if (ch != null) {
//out.println("Ch=" + ch + "<br> Ans=" + ans + "<br>Qno=" + qno + " Mark=" + mark);
            ch = ch.trim();
            ans = ans.trim();
            if (ch.equalsIgnoreCase(ans)) {
                mark++;
                session.setAttribute("Marks", mark);

            }
        }
        if (qno < 10) {
            response.sendRedirect("dispqst.jsp?QuestionNo=" + (qno + 1));
        } else {
            try {
                String studentid = session.getAttribute("s1").toString();
                sql = "delete from temp_data where StudID='" + studentid + "'";
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
                st = con.createStatement();
                st.executeUpdate(sql);

                String examID = session.getAttribute("Examid").toString();
                String jobID = session.getAttribute("Jobid").toString();
                mark=Integer.parseInt(session.getAttribute("Marks").toString());
                sql="Insert into result values('" + studentid + "','" +  examID + "','" + jobID + "'," + mark + ")";
                st.executeUpdate(sql);
                response.sendRedirect("displayresult.jsp");
            } catch (Exception ex) {
                out.println(ex.toString());
            }

        }

%>