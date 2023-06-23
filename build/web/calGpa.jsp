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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from marks where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
<body>
    <h1>Retrieve data from database in jsp</h1>

    
    ID<br>
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
Name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
Email:<br>
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br>
Degree:<br>
<input type="text" name="degree" value="<%=resultSet.getString("degree") %>">
<br>

<table border="1">
<tr>

<td>Subject</td>
<td>Grade</td>
<td>Credits</td>

</tr>


<tr>
<td><%=resultSet.getString("subject1") %></td>
<td><%=resultSet.getString("grade1") %></td>
<td><%=resultSet.getString("credit1") %></td>



</tr>
<tr>
<td><%=resultSet.getString("subject2") %></td>
<td><%=resultSet.getString("grade2") %></td>
<td><%=resultSet.getString("credit2") %></td>



</tr>
<tr>
<td><%=resultSet.getString("subject3") %></td>
<td><%=resultSet.getString("grade3") %></td>
<td><%=resultSet.getString("credit3") %></td>



</tr>
<tr>
<td><%=resultSet.getString("subject4") %></td>
<td><%=resultSet.getString("grade4") %></td>
<td><%=resultSet.getString("credit4") %></td>



</tr>
<tr>
<td><%=resultSet.getString("subject5") %></td>
<td><%=resultSet.getString("grade5") %></td>
<td><%=resultSet.getString("credit5") %></td>



</tr>
<td><a href="cal.jsp?id=<%=resultSet.getString("id")%>"><button type="button"  class="submit">Submit</button></a></td>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>

