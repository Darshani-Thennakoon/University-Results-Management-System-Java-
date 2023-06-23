<%-- 
    Document   : edituser
    Created on : May 21, 2023, 2:06:13 PM
    Author     : Hello
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body style="size:1040px;height:500px;background:url('images/02.jpg') no-repeat; background-size: cover">
        <center>
            <h1 class="mt-3" style="font-size:60px;text-align:center;color:#4B5B85;font-family:Times New Roman"><b>Manage Student</b></h1>
         <div class="container">

<div class="row">

<div class="col-6">

<div class="card mt-5" style="width:25rem;border:background-color: #E6E6E6;border:black; border-width:2px; border-style:solid;">

<img class="card-img-top " src="images/avataranimation.gif">

<div class="card-body">


<a href="addUser.jsp" type="button" class="btn btn-outline-dark">Add User</a>

</div>

</div>

</div>

<div class="col-6">

<div class="card mt-5" style="width:23rem;border:background-color: #E6E6E6;border:black; border-width:2px; border-style:solid;">

<img class=" card-img-top" src="images/icon-avatar-4.jpg">

<div class="card-body">



 <a href="retrivedata.jsp" class="btn btn-outline-dark mb-2 mt-3" >Edit User</a>

</div>

</div>

</div>

</div>

</div>
            <br><br><br>
            <a href="admin.jsp" type="button" class="btn btn-dark ">Back</a>
        </center>
    </body>
</html>
