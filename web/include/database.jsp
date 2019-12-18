<%@ page import="java.sql.*" %>
<%! 
           Connection con = null;
           Statement stmt = null;
%>
<%


//Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName("com.mysql.jdbc.Driver");
        con = //DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.2:1521:tit","scott","tiger");
		DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinejobs?zeroDateTimeBehavior=convertToNull","root","");
		stmt=con.createStatement();

Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
Statement stmt2=con.createStatement();
Statement stmt3=con.createStatement();
Statement stmt4=con.createStatement();
Statement stmt5=con.createStatement();

ResultSet rs,rs1,rs2,rs3,rs4,rs5;

PreparedStatement pstmt,pstmt1,pstmt2,pstmt3,pstmt4,pstmt5;

%>