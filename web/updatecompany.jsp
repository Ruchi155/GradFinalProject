<%@ include file="include/common.jsp" %>
<%@ include file="include/database.jsp" %>
<%
C_no1=request.getParameter("C_no");
if(C_no1!=null)
C_no=Integer.parseInt(C_no1);

C_ID=request.getParameter("C_ID");
C_name=request.getParameter("C_name");
Address=request.getParameter("C_address");
C_post=request.getParameter("C_post");
C_criteria=request.getParameter("C_criteria");
Username=request.getParameter("Username");
C_email=request.getParameter("C_email");
C_contact=request.getParameter("C_contact");
C_cutoff1=request.getParameter("C_cutoff");
if(C_cutoff1!=null || !"".equals(C_cutoff1))
C_cutoff=Double.parseDouble(C_cutoff1);

pstmt=con.prepareStatement("Update com set C_ID=?,C_name=?,C_address=?,C_post=?,C_criteria=?,Username=?,C_email=?,C_contact=?,C_cutoff=? where C_no="+C_no);

pstmt.setString(1,C_ID);
pstmt.setString(2,C_name);
pstmt.setString(3,Address);
pstmt.setString(4,C_post);
pstmt.setString(5,C_criteria);
pstmt.setString(6,Username);
pstmt.setString(7,C_email);
pstmt.setString(8,C_contact);
pstmt.setDouble(9,C_cutoff);

pstmt.executeUpdate();
con.close();
session.setAttribute("update_Company","Company ("+C_ID+") updated successfully");
%>
<jsp:forward page="editcompany.jsp">
<jsp:param name="C_no" value="<%=C_no%>" />
</jsp:forward>