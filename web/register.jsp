<%-- 
    Document   : register
    Created on : Feb 23, 2023, 10:18:03 AM
    Author     : Hello
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Register</title>

           <!-- Link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!--Link jquery and javascript-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>


</head>

<body style="background:url('images/02.jpg') no-repeat; background-size: cover">
  
<div class="container" align="center"> 
    
    <h1 style="font-size:60px;text-align:center;color:#E6E6E6;font-family:Times New Roman"><b>ABC UNIVERSITY</b></h1>
    
<div class="card mt-4  text-dark mb-3" style="max-width: 22rem;background-color: #E6E6E6;border:black; border-width:2px; border-style:solid;">
        <div class="card-header" align="center">
           <b> Registration </b>
        </div>
        <div class="card-body">
           <form action="registerController" method="POST">
               <div class="form-group mt-2">
                   <lable for="">Enter your name</lable>
                   <input type="text" name="userName" id="userName" placeholder="Enter your name" class="form-control">

               </div>
            
               <div class="form-group mt-2">
                   <lable for="">Enter your password</lable>
                   <input type="password" name="userPwd" id="userPwd" placeholder="Enter your password" class="form-control">

               </div>
               <div class="form-group mt-2">
                   <lable for="">Enter your phone number </lable>
                   <input type="text" name="userPhone" id="userPhone" placeholder="Enter your phone number" class="form-control">

               </div>
               <div class="form-group mt-2">
                   <lable for="">Enter your NIC</lable>
                   <input type="text" name="userNic" id="userNic" placeholder="Enter your NIC" class="form-control">

               </div>
               <div class="form-group mt-2">
                   <lable for="">Enter your email</lable>
                   <input type="email" name="userEmail" id="userEmail" placeholder="Enter your email" class="form-control">
</div>
               <div class="form-group mt-2">
                  
                   <input type="submit" name="btnsave" id="btnsave"  class="btn btn-outline-dark btn-sm">
                  <input type="reset" class="btn btn-outline-dark btn-sm">
                  

               </div>
               
           </form>
           
        </div>
        


</div>
</body>

</html>