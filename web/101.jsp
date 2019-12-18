<%@ page contentType="text/html; charset=utf-8" language="java"  import="java.sql.*" errorPage="" %>
<%@page import="java.io.*,java.sql.*;" session="true" %>



<%

        String examID = request.getParameter("Examid");
        String jobID = session.getAttribute("Jobid").toString();

       //String studentid=session.getAttribute("Emp_id").toString();
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        String sql = null;
        int[] ar = new int[10];
        int i = 0;
        if (examID != "") {
            while (i < 10) {
                double x = Math.random();
                String t = String.valueOf(x * 20);
                t = t.substring(0, t.indexOf("."));
                int b = Integer.parseInt(t);
                //out.println(b + "<br>");
                boolean flag = false;
                for (int n = 0; n < ar.length; n++) {

                    if (b <= 0 || ar[n] == b) {
                        flag = true;
                    }

                }
                if (flag == false) {
                    ar[i] = b;
                    i++;
                }
            }//while
            try {

           for (int n = 1; n < ar.length; n++) {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
                    st = con.createStatement();
                   
 
                    rs = st.executeQuery("select * from question Where Jobid='" + jobID + "' and Examid='"+examID + "' and QuestionNo=" +ar[n]);
                    
                    
                out.println("Jobid='" + jobID + "',Examid='" + examID + "',QuestionNo='" + ar[n] + "'");
     if (rs.next()) {
        
                        sql="insert into temp_data values(null,'"+rs.getString(2)+"'," + (n) + ",'" + rs.getString(4) + "','" + rs.getString(5) +"','" +rs.getString(6) +"','" + rs.getString(7) + "','" +
                                rs.getString(8) + "','" + rs.getString(9) + "')";
                        //out.println(sql + "<br>");

                        st.executeUpdate(sql);
          }
                }
                session.setAttribute("mark","0");
                session.setAttribute("Examid", examID);
                response.sendRedirect("dispqst.jsp? qno=1");
            } 
               catch (Exception ex) {
                out.println("Error: Cannot go forward<br>" + ex.toString() );
            }

        }
%>



