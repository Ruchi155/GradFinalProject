<%@ include file="include/common.jsp" %>
<%@ include file="include/database.jsp" %>

<%
C_no1=request.getParameter("C_no");
if(C_no1!=null)
C_no=Integer.parseInt(C_no1);
S_id=request.getParameter("S_id");
Name=request.getParameter("Name");
Gender=request.getParameter("Gender");
DateOfBirth=request.getParameter("DateOfBirth");
CollegeName=request.getParameter("CollegeName");
CollegePhone=request.getParameter("CollegePhone");
Collegeemail=request.getParameter("Collegeemail");
Branch=request.getParameter("Branch");
Mark=request.getParameter("Mark");
Degree=request.getParameter("Degree");
Email_id=request.getParameter("Email_id");
Telephone=request.getParameter("Telephone");
Address=request.getParameter("Address");
State=request.getParameter("State");
Pincode=request.getParameter("Pincode");
Category=request.getParameter("Category");

pstmt1=con.prepareStatement("Update Details set S_id=?,Name=?,Gender=?,DateOfBirth=?,CollegeName=?,CollegePhone=?,Collegeemail=?,Branch=?,Mark=?,Degree=?,Email_id=?,Telephone=?,Address=?,State=?,Pincode=?,Category=? where C_no="+C_no);

pstmt1.setString(1,S_id);
pstmt1.setString(2,Name);
pstmt1.setString(3,Gender);
pstmt1.setString(4,DateOfBirth);
pstmt1.setString(5,CollegeName);
pstmt1.setString(6,CollegePhone);
pstmt1.setString(7,Collegeemail);
pstmt1.setString(8,Branch);
pstmt1.setString(9,Mark);
pstmt1.setString(10,Degree);
pstmt1.setString(11,Email_id);
pstmt1.setString(12,Telephone);
pstmt1.setString(13,Address);
pstmt1.setString(14,State);
pstmt1.setString(15,Pincode);
pstmt1.setString(16,Category);

pstmt1.executeUpdate();
con.close();
session.setAttribute("update_Candidate","Candidate ("+S_id+") updated successfully");
%>
<jsp:forward page="editCandidate.jsp">
<jsp:param name="C_no" value="<%=C_no%>" />
</jsp:forward>