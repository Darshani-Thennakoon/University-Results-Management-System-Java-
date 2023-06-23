<%-- 
    Document   : login
    Created on : Feb 23, 2023, 9:51:18 AM
    Author     : Hello
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  
    <title>Index Page</title>

    <!-- Link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!--Link jquery and javascript-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>


</head>
<body style="size:1040px;height:500px;background:url('images/Register-Cleaning-Company-in-Singapore.jpg') no-repeat; background-size: cover" >
<div class="container" align="center">

<h1 style="font-size:60px;text-align:center;color:#DBB05B;font-family:Times New Roman"><b>ABC UNIVERSITY</b></h1>

  <hr> 
  <%
      String massage = (String) request.getAttribute("Massage");
      if (massage != null){
      %>
      <h1><%=massage %></h1>
      <% 
         }
      %>
            <div class="card mt-4 text-dark  mb-3" style="max-width: 22rem;background-color: #D2FDF4;border:black; border-width:2px; border-style:solid;">
        <div class="card-header ">
           <b> Login</b>
        </div>
        <div class="card-body">
            <form action="show.jsp" method="post">
                <div class="form group mt-2">
                <lable for="">Enter your email</lable>
                   <input type="text" name="userEmail" id="userEmail" placeholder="Enter your email" class="form-control">  
                </div>
               
                <div class="form-group mt-2">
                  
                  <input type="submit" name="btnLogin" id="btnsave"  class="btn btn-outline-success btn-sm" >
                   


              </div>
              </form>

             

        </div>
      
        </div>
        
           

</body>
</html>

