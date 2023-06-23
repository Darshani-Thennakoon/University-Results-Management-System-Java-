<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/abc_university_g";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String degree = request.getParameter("degree");
int  code1 = Integer.parseInt(request.getParameter("code1"));
String subject1 = request.getParameter("subject1");
int  grade1 = Integer.parseInt(request.getParameter("grade1"));
int  code2 = Integer.parseInt(request.getParameter("code2"));
String subject2 = request.getParameter("subject2");
int  grade2 = Integer.parseInt(request.getParameter("grade2"));
int  code3 = Integer.parseInt(request.getParameter("code3"));
String subject3 = request.getParameter("subject3");
int  grade3 = Integer.parseInt(request.getParameter("grade3"));


int  code4 = Integer.parseInt(request.getParameter("code4"));
String subject4 = request.getParameter("subject4");

int  grade4 = Integer.parseInt(request.getParameter("grade4"));

int  code5 = Integer.parseInt(request.getParameter("code5"));
String subject5 = request.getParameter("subject5");



int  grade5 = Integer.parseInt(request.getParameter("grade5"));


if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update grade set id=?,degree=?,code1=?,subject1=?,grade1=?,code2=?,subject2=?,grade2=?,code3=?,subject3=?,grade3=?,code4=?,subject4=?,grade4=?,code5=?,subject5=?,grade5=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, degree);
ps.setInt(3, code1);
ps.setString(4, subject1);
ps.setInt(5, grade1);
ps.setInt(6, code2);

ps.setString(7, subject2);
ps.setInt(8, grade2);
ps.setInt(9, code3);
ps.setString(10, subject3);

ps.setInt(11, grade3);
ps.setInt(12, code4);

ps.setString(13, subject4); 
ps.setInt(14, grade4);


ps.setInt(15, code5);
ps.setString(16, subject5); 




ps.setInt(17, grade5);



int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");

        request.getRequestDispatcher("manageDegree.jsp").forward(request, response);

}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>

