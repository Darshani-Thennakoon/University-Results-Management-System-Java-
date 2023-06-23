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
try{connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from degree where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
<body>

<div class="container" align="center">

<h1 style="font-size:60px;text-align:center;color:#DBB05B;font-family:Times New Roman"><b>Add Marks</b></h1>

 
            <div class="card mt-4 text-dark  mb-3" style="background-color: #E6E6E6;border:black; border-width:2px; border-style:solid;">
       
        <div class="card-body">
<form method="post" action="updateMarks.jsp">
ID:
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
<br>
Name:
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
<br>
Email:
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br>
<br>
Degree:
<input type="text" name="degree" value="<%=resultSet.getString("degree") %>">
<br>
<br>
Code:
<input type="text" name="code1" value="<%=resultSet.getInt("code1") %>">

Subject 1:
<input type="text" name="subject1" value="<%=resultSet.getString("subject1") %>">

Marks:
<input type="number" name="mark1" >


Grade:
<input type="text" name="grade1" >


Credits:
<input type="text" name="credit1" >
<br><br>
Code:
<input type="text" name="code2" value="<%=resultSet.getInt("code2") %>">

Subject 2:
<input type="text" name="subject2" value="<%=resultSet.getString("subject2") %>">

Marks:
<input type="number" name="mark2" >


Grade:
<input type="text" name="grade2" >


Credits:
<input type="text" name="credit2" >
<br><br>
Code:
<input type="text" name="code3" value="<%=resultSet.getInt("code3") %>">

Subject 3:
<input type="text" name="subject3" value="<%=resultSet.getString("subject3") %>">

Marks:
<input type="number" name="mark3" >


Grade:
<input type="text" name="grade3" >


Credits:
<input type="text" name="credit3" >
<br><br>
Code:
<input type="text" name="code4" value="<%=resultSet.getInt("code4") %>">

Subject 4:
<input type="text" name="subject4" value="<%=resultSet.getString("subject4") %>">

Marks:
<input type="number" name="mark4" >

Grade:
<input type="text" name="grade4" >


Credits:
<input type="text" name="credit4" >
<br><br>
Code:
<input type="text" name="code5" value="<%=resultSet.getInt("code5") %>">

Subject 5:
<input type="text" name="subject5" value="<%=resultSet.getString("subject5") %>">

Marks:
<input type="number" name="mark5" >

Grade:
<input type="text" name="grade5" >


Credits:
<input type="text" name="credit5" >

<br><br>
<button class="btn btn-outline-light"><input type="submit" value="submit"></button>

<a href="addUserMarks.jsp" type="button" class="btn btn-outline-dark ">Back</a>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</div>
</div>
<br><br><br>

</body>
</html>

