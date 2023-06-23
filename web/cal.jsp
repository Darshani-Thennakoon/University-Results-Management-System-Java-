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
<%
String a = <%=resultSet.getString("grade1") %>;
String b = <%=resultSet.getString("grade2") %>;
String c = <%=resultSet.getString("grade3") %>;
String d = <%=resultSet.getString("grade4") %>;
String e = <%=resultSet.getString("grade5") %>;

<td><%=resultSet.getString("credit1") %></td>
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
<body>





<td><%=resultSet.getString("credit1") %></td>




<td><%=resultSet.getString("grade2") %></td>
<td><%=resultSet.getString("credit2") %></td>


<td><%=resultSet.getString("grade3") %></td>
<td><%=resultSet.getString("credit3") %></td>



</tr>
<tr>

<td><%=resultSet.getString("grade4") %></td>
<td><%=resultSet.getString("credit4") %></td>



</tr>
<tr>

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

