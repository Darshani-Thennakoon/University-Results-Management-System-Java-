<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "abc_university_g";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
         
<style>
   
body {
	background: linear-gradient(-45deg, #DEDEDE, #DEDEDE, #DEDEDE, #DEDEDE);
	background-size: 400% 400%;
	animation: gradient 5s ease infinite;
	height: 100vh;
}

@keyframes gradient {
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
}


   
    
table {

  border: 3px solid;
  border-collapse: collapse;
  width: 100%;
}

tr, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}




</style>

    </head>
    
    

    
    <body>

 <h1 style="font-size:50px;text-align:center;font-family:Times New Roman"><b> Students Marks</b></h1>


<br> <br>

<table border="1">
<tr>
<td>ID</td>
<td>Name</td>
<td>Email</td>
<td>Degree</td>
<td>Code</td>
<td>Subject 1</td>
<td>Code</td>
<td>Subject 2</td>
<td>Code</td>
<td>Subject 3</td>
<td>Code</td>
<td>Subject 4</td>
<td>Code</td>
<td>Subject 5</td>
<td>Add Marks </td>

</tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from degree";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("id") %></td>    
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("degree") %></td>
<td><%=resultSet.getInt("code1") %></td>
<td><%=resultSet.getString("subject1") %></td>
<td><%=resultSet.getInt("code2") %></td>
<td><%=resultSet.getString("subject2") %></td>
<td><%=resultSet.getInt("code3") %></td>
<td><%=resultSet.getString("subject3") %></td>
<td><%=resultSet.getInt("code4") %></td>
<td><%=resultSet.getString("subject4") %></td>
<td><%=resultSet.getInt("code5") %></td>
<td><%=resultSet.getString("subject5") %></td>
<td><a href="marks.jsp?id=<%=resultSet.getString("id")%>"><button class="btn btn-outline-dark">Add</button></a></td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br><br>
<center><a href="admin.jsp" type="button" class="btn btn-outline-secondary">Back</a>
    <a href="calGpa.jsp" type="button" class="btn btn-outline-secondary">GPA</a>
</center>

<br><br><br>

<marquee><p style="font-size:30px;text-align:center;font-family:Showcard Gothic;color:#DBB05B;">Welcome to Achieve Your Dreams with Us........</p></marquee>
    </body>

</html>