
<%@ include file="include/database.jsp"%>
<%

String Exam_no1=request.getParameter("Examno");
int Exam_no=0;
String Jobid=null;
String Post=null;
String Exam_ID=null;
String Exam_Name=null;
double Cutoff=0.0;

if(Exam_no1!=null)
Exam_no=Integer.parseInt(Exam_no1); 
Jobid=request.getParameter("Jobid");
Post=request.getParameter("Post");
Exam_ID=request.getParameter("Examid");
//if(Exam_ID!=null)

Exam_Name=request.getParameter("Examname"); 
String Cutoff1=request.getParameter("Cutoff");
if(Cutoff1!=null || !"".equals(Cutoff1))
Cutoff=Double.parseDouble(Cutoff1); 
pstmt1=con.prepareStatement("Update exam_details set Jobid=?,Post=?,Examid=?,Examname=?,Cutoff=? where Examno="+Exam_no);
//pstmt1=con.prepareStatement("Update exam_details set Exam_Name=?,Cutoff=? where Exam_ID="+Exam_ID);
//pstmt1.setInt(1,Exam_no);
pstmt1.setString(1,Jobid);
pstmt1.setString(2,Post);
pstmt1.setString(3,Exam_ID);
pstmt1.setString(4,Exam_Name);
pstmt1.setDouble(5,Cutoff);
pstmt1.executeUpdate();
con.close();
session.setAttribute("update_Exam","Examdetails ("+Exam_ID+") updated successfully");
%>
<jsp:forward page="edit_exam.jsp">
    
<jsp:param name="Examno" value="<%=Exam_no%>" />
<jsp:param name="Examid" value="<%=Exam_ID%>" /> 
</jsp:forward>