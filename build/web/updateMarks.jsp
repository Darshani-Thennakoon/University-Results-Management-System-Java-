<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/abc_university_g";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
    String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String degree = request.getParameter("degree");
            String subject1 = request.getParameter("subject1");
            String subject2 = request.getParameter("subject2");
            String subject3 = request.getParameter("subject3");
            String subject4 = request.getParameter("subject4");
            String subject5 = request.getParameter("subject5");
            
            String code1 = request.getParameter("code1");
            String code2 = request.getParameter("code2");
            String code3 = request.getParameter("code3");
            String code4 = request.getParameter("code4");
            String code5 = request.getParameter("code5");
            
       String mark1 = request.getParameter("mark1");
            String mark2 = request.getParameter("mark2");
            String mark3 = request.getParameter("mark3");
            String mark4 = request.getParameter("mark4");
            String mark5 = request.getParameter("mark5");
           String grade1 = request.getParameter("grade1");
            String grade2 = request.getParameter("grade2");
            String grade3 = request.getParameter("grade3");
            String grade4 = request.getParameter("grade4");
            String grade5 = request.getParameter("grade5");
            String credit1 = request.getParameter("credit1");
            String credit2 = request.getParameter("credit2");
            String credit3 = request.getParameter("credit3");
            String credit4 = request.getParameter("credit4");
            String credit5 = request.getParameter("credit5");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="INSERT INTO marks(id,name,email,degree,subject1,subject2,subject3,subject4,subject5,code1,code2,code3,code4,code5,mark1,mark2,mark3,mark4,mark5,grade1,grade2,grade3,grade4,grade5,credit1,credit2,credit3,credit4,credit5)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, degree);
            ps.setString(5, subject1);
            ps.setString(6, subject2);
            ps.setString(7, subject3);
            ps.setString(8, subject4); 
            ps.setString(9, subject5); 
           
            ps.setString(10, code1);
            ps.setString(11, code2);
            ps.setString(12, code3);
            ps.setString(13, code4);
            ps.setString(14, code5);
            
            ps.setString(15, mark1);
            ps.setString(16, mark2);
            ps.setString(17, mark3);
            ps.setString(18, mark4);
            ps.setString(19, mark5);
            ps.setString(20, grade1);
            ps.setString(21, grade2);
            ps.setString(22, grade3);
            ps.setString(23, grade4); 
            ps.setString(24, grade5);
            ps.setString(25, credit1);
            ps.setString(26, credit2);
            ps.setString(27, credit3);
            ps.setString(28, credit4); 
            ps.setString(29, credit5);
         
int i = ps.executeUpdate();
if(i > 0)
{
        request.setAttribute("Massage", "Added successful.");
        request.getRequestDispatcher("updateMarks.jsp").forward(request, response);
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

