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
String sql ="select * from users where id="+id;
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

<h1 style="font-size:60px;text-align:center;color:#DBB05B;font-family:Times New Roman"><b>Update Student Details</b></h1>

 
            <div class="card mt-4 text-dark  mb-3" style="max-width: 22rem;background-color: #E6E6E6;border:black; border-width:2px; border-style:solid;">
       
        <div class="card-body">
<form method="post" action="updateProcess.jsp">
  
        
    ID:
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br><br>
First name:
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br><br>
Last name:
<input type="text" name="phone" value="<%=resultSet.getString("phone") %>">
<br><br>
City name:
<input type="text" name="nic" value="<%=resultSet.getString("nic") %>">
<br><br>
Email Id:
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br><br>
<button class="btn btn-outline-light"><input type="submit" value="submit"></button>
     <a href="retrivedata.jsp" type="button" class="btn btn-outline-dark ">Back</a>
</div>
</div>
</div>
</div>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
