<%-- 
    Document   : addUser
    Created on : May 21, 2023, 2:10:09 PM
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
    <body style="size:1040px;height:500px;background:url('images/02.jpg') no-repeat; background-size: cover" >
    <div class="container" align="center"> 
    
    <h1 style="font-size:63px;text-align:center;font-family:Times New Roman"><b>Add Student</b></h1>
   
    
<div class="card mt-5  text-dark mb-3" style="max-width: 22rem;background-color: #E6E6E6;border:black; border-width:2px; border-style:solid;">
      
        <div class="card-body">
           <form action="addUserController" method="POST">
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
                  <input type="reset" class="btn btn-outline-secondary btn-sm">
                    <a href="manageUser.jsp" type="button" class="btn btn-outline-secondary btn-sm">Back</a>

               </div>
               
           </form>
           
        </div>
        </div>
        

</div>    
    </body>
</html>
