<%-- 
    Document   : addGrade
    Created on : May 20, 2023, 7:45:40 PM
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
    <body style="background:url('images/02.jpg') no-repeat; background-size: cover" >
        <h1 style="font-size:60px;text-align:center;color:#E6E6E6;font-family:Times New Roman"><b>Register for Degree</b></h1>
        <center>
           <div class="col-md-6">
       
        <div class="card mt-5" style="background-color:#E6E6E6;height:38rem;width:50rem;">
         <div class="col-md-6">
              
           <form action="regDegreeController" method="POST">
               <br>
                             <label for="">Enter student name :</label>
                            <input type="text" name="name" id="name"><br><br>
 <label for="">Enter student email :</label>
                            <input type="text" name="email" id="email">
                            <label for="">Select Degree</label>

                            <div class="col-md-6">
                            
                            <select class="form-select" aria-label="Default select example" name="degree" id="degree">
                                <option selected>Select Degree</option>
                                <option value="Bachelor of Science in Information Technology">Bachelor of Science in Information Technology</option>
                                <option value="Bachelor of Business Studies">Bachelor of Business Studies</option>
                                <option value="Bachelor of Arts">Bachelor of Arts</option>
                                <option value="Bachelor of Social Science">Bachelor of Social Science</option>
                                <option value="Bachelor of Science">Bachelor of Science</option>
                               
                            </select>

                                
                            </div>
                      
                                
                            </div>
                   <table class="table">
                    <thead class="">
                        <tr>
                        <th>Code</th>
                         
                        <th>Subject</th>
                          
                       
                        
                       
                        
                    </thead>
                    <tbody class="table-group-divider">
                       
                        <tr>
                                   <td>   <select class="form-select" aria-label="Default select example" name="code1" id="code1">
                                <option selected>Select Code</option>
                              <option value="001">001</option>
                                <option value="002">002</option>
                                <option value="003">003</option>
                                <option value="004">004</option>
                                <option value="005">005</option>
                                
                                 <option value="006">006</option>
                                <option value="007">007</option>
                                <option value="008">008</option>
                                <option value="009">009</option>
                                <option value="010">010</option>
                                
                                <option value="011">011</option>
                                <option value="012">012</option>
                                <option value="013">013</option>
                                <option value="014">014</option>
                                <option value="015">015</option>
                                
                                 <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                                <option value="020">020</option>
                                
                                <option value="021">021</option>
                                <option value="022">022</option>
                                <option value="023">023</option>
                                <option value="024">024</option>
                                <option value="025">025</option>
                                
                            </select></td>
                            <td>   <select class="form-select" aria-label="Default select example" name="subject1" id="subject1">
                                <option selected>Select Subject</option>
                                <option value="Computer Fundamentals">Computer Fundamentals</option>
                                <option value="Networking and Internet Environment">Networking and Internet Environment</option>
                                <option value="Mathematics">Mathematics</option>
                                <option value="Digital Computer Fundamentals">Digital Computer Fundamentals</option>
                                <option value="Problem-Solving Methodologies & Programming in C">Problem-Solving Methodologies & Programming in C</option>
                                
                                <option value="Accounting">Accounting</option>
                                <option value="Management">Management</option>
                                <option value="Economics">Economics</option>
                                <option value="Finance & Banking">Finance & Banking</option>
                                <option value="Marketing">Marketing</option>
                                
                                <option value="Political Science">Political Science</option>
                                <option value="Sociology">Sociology</option>
                                <option value="History">History</option>
                                <option value="Philosophy">Philosophy</option>
                                <option value="Psychology">Psychology</option>
                                
                                <option value="Economics">Economics</option>
                                <option value="Cultural Studies">Cultural Studies</option>
                                <option value="Psychology">Psychology</option>
                                <option value="Communication Sciences">Communication Sciences</option>
                                <option value="political science">political science</option>
                                
                                <option value="Biology">Biology</option>
                                <option value="Botany">Botany</option>
                                <option value="Chemistry">Chemistry</option>
                                <option value="Geology">Geology</option>
                                <option value="Computer Science">Computer Science</option>
                                
                            </select></td>
                            
                          
                           
                          
                           
                        </tr>
                        <tr>
                              <td>   <select class="form-select" aria-label="Default select example" name="code2" id="code2">
                                <option selected>Select Code</option>
                               <option value="001">001</option>
                                <option value="002">002</option>
                                <option value="003">003</option>
                                <option value="004">004</option>
                                <option value="005">005</option>
                                
                                 <option value="006">006</option>
                                <option value="007">007</option>
                                <option value="008">008</option>
                                <option value="009">009</option>
                                <option value="010">010</option>
                                
                                <option value="011">011</option>
                                <option value="012">012</option>
                                <option value="013">013</option>
                                <option value="014">014</option>
                                <option value="015">015</option>
                                
                                 <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                                <option value="020">020</option>
                                
                                <option value="021">021</option>
                                <option value="022">022</option>
                                <option value="023">023</option>
                                <option value="024">024</option>
                                <option value="025">025</option>
                                
                            </select></td>
                      <td>   <select class="form-select" aria-label="Default select example" name="subject2" id="subject2">
                                <option selected>Select Subject</option>
                                <option value="Accounting">Accounting</option>
                                <option value="Management">Management</option>
                                <option value="Economics">Economics</option>
                                <option value="Finance & Banking">Finance & Banking</option>
                                <option value="Marketing">Marketing</option>
                                
                                 <option value="Computer Fundamentals">Computer Fundamentals</option>
                                <option value="Networking and Internet Environment">Networking and Internet Environment</option>
                                <option value="Mathematics">Mathematics</option>
                                <option value="Digital Computer Fundamentals">Digital Computer Fundamentals</option>
                                <option value="Problem-Solving Methodologies & Programming in C">Problem-Solving Methodologies & Programming in C</option>
                                
                                <option value="Political Science">Political Science</option>
                                <option value="Sociology">Sociology</option>
                                <option value="History">History</option>
                                <option value="Philosophy">Philosophy</option>
                                <option value="Psychology">Psychology</option>
                                
                                <option value="Economics">Economics</option>
                                <option value="Cultural Studies">Cultural Studies</option>
                                <option value="Psychology">Psychology</option>
                                <option value="Communication Sciences">Communication Sciences</option>
                                <option value="political science">political science</option>
                                
                                <option value="Biology">Biology</option>
                                <option value="Botany">Botany</option>
                                <option value="Chemistry">Chemistry</option>
                                <option value="Geology">Geology</option>
                                <option value="Computer Science">Computer Science</option>
                            </select></td>
                             
                        
                            
                         </tr>   
                      <tr>
                            <td>   <select class="form-select" aria-label="Default select example" name="code3" id="code3">
                                <option selected>Select Code</option>
                       <option value="001">001</option>
                                <option value="002">002</option>
                                <option value="003">003</option>
                                <option value="004">004</option>
                                <option value="005">005</option>
                                
                                 <option value="006">006</option>
                                <option value="007">007</option>
                                <option value="008">008</option>
                                <option value="009">009</option>
                                <option value="010">010</option>
                                
                                <option value="011">011</option>
                                <option value="012">012</option>
                                <option value="013">013</option>
                                <option value="014">014</option>
                                <option value="015">015</option>
                                
                                 <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                                <option value="020">020</option>
                                
                                <option value="021">021</option>
                                <option value="022">022</option>
                                <option value="023">023</option>
                                <option value="024">024</option>
                                <option value="025">025</option>
                                
                            </select></td>
                      <td>   <select class="form-select" aria-label="Default select example" name="subject3" id="subject3">
                                <option selected>Select Subject</option>
                                <option value="Political Science">Political Science</option>
                                <option value="Sociology">Sociology</option>
                                <option value="History">History</option>
                                <option value="Philosophy">Philosophy</option>
                                <option value="Psychology">Psychology</option>
                              
                                 <option value="Computer Fundamentals">Computer Fundamentals</option>
                                <option value="Networking and Internet Environment">Networking and Internet Environment</option>
                                <option value="Mathematics">Mathematics</option>
                                <option value="Digital Computer Fundamentals">Digital Computer Fundamentals</option>
                                <option value="Problem-Solving Methodologies & Programming in C">Problem-Solving Methodologies & Programming in C</option>
                                
                                <option value="Accounting">Accounting</option>
                                <option value="Management">Management</option>
                                <option value="Economics">Economics</option>
                                <option value="Finance & Banking">Finance & Banking</option>
                                <option value="Marketing">Marketing</option>
                                
                                <option value="Economics">Economics</option>
                                <option value="Cultural Studies">Cultural Studies</option>
                                <option value="Psychology">Psychology</option>
                                <option value="Communication Sciences">Communication Sciences</option>
                                <option value="political science">political science</option>
                                
                                <option value="Biology">Biology</option>
                                <option value="Botany">Botany</option>
                                <option value="Chemistry">Chemistry</option>
                                <option value="Geology">Geology</option>
                                <option value="Computer Science">Computer Science</option>
                                
                            </select></td>
                            
                            
                         </tr>   
                         <tr>
                               <td>   <select class="form-select" aria-label="Default select example" name="code4" id="code4">
                                <option selected>Select Code</option>
                                <option value="001">001</option>
                                <option value="002">002</option>
                                <option value="003">003</option>
                                <option value="004">004</option>
                                <option value="005">005</option>
                                
                                 <option value="006">006</option>
                                <option value="007">007</option>
                                <option value="008">008</option>
                                <option value="009">009</option>
                                <option value="010">010</option>
                                
                                <option value="011">011</option>
                                <option value="012">012</option>
                                <option value="013">013</option>
                                <option value="014">014</option>
                                <option value="015">015</option>
                                
                                 <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                                <option value="020">020</option>
                                
                                <option value="021">021</option>
                                <option value="022">022</option>
                                <option value="023">023</option>
                                <option value="024">024</option>
                                <option value="025">025</option>
                                
                            </select></td>
                      <td>   <select class="form-select" aria-label="Default select example" name="subject4" id="subject4">
                                <option selected>Select Subject</option>
                                <option value="Economics">Economics</option>
                                <option value="Cultural Studies">Cultural Studies</option>
                                <option value="Psychology">Psychology</option>
                                <option value="Communication Sciences">Communication Sciences</option>
                                <option value="political science">political science</option>
                                
                                 <option value="Computer Fundamentals">Computer Fundamentals</option>
                                <option value="Networking and Internet Environment">Networking and Internet Environment</option>
                                <option value="Mathematics">Mathematics</option>
                                <option value="Digital Computer Fundamentals">Digital Computer Fundamentals</option>
                                <option value="Problem-Solving Methodologies & Programming in C">Problem-Solving Methodologies & Programming in C</option>
                                
                                <option value="Accounting">Accounting</option>
                                <option value="Management">Management</option>
                                <option value="Economics">Economics</option>
                                <option value="Finance & Banking">Finance & Banking</option>
                                <option value="Marketing">Marketing</option>
                                
                                <option value="Political Science">Political Science</option>
                                <option value="Sociology">Sociology</option>
                                <option value="History">History</option>
                                <option value="Philosophy">Philosophy</option>
                                <option value="Psychology">Psychology</option>
                                
                                <option value="Biology">Biology</option>
                                <option value="Botany">Botany</option>
                                <option value="Chemistry">Chemistry</option>
                                <option value="Geology">Geology</option>
                                <option value="Computer Science">Computer Science</option>
                            </select></td>
                           
                           
                            
                         </tr>   
                         <tr>
                               <td>   <select class="form-select" aria-label="Default select example" name="code5" id="code5">
                                <option selected>Select Code</option>
                          <option value="001">001</option>
                                <option value="002">002</option>
                                <option value="003">003</option>
                                <option value="004">004</option>
                                <option value="005">005</option>
                                
                                 <option value="006">006</option>
                                <option value="007">007</option>
                                <option value="008">008</option>
                                <option value="009">009</option>
                                <option value="010">010</option>
                                
                                <option value="011">011</option>
                                <option value="012">012</option>
                                <option value="013">013</option>
                                <option value="014">014</option>
                                <option value="015">015</option>
                                
                                 <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                                <option value="020">020</option>
                                
                                <option value="021">021</option>
                                <option value="022">022</option>
                                <option value="023">023</option>
                                <option value="024">024</option>
                                <option value="025">025</option>
                                
                            </select></td>
                      <td>   <select class="form-select" aria-label="Default select example" name="subject5" id="subject5">
                                <option selected>Select Subject</option>
                                <option value="Biology">Biology</option>
                                <option value="Botany">Botany</option>
                                <option value="Chemistry">Chemistry</option>
                                <option value="Geology">Geology</option>
                                <option value="Computer Science">Computer Science</option>
                                
                                 <option value="Computer Fundamentals">Computer Fundamentals</option>
                                <option value="Networking and Internet Environment">Networking and Internet Environment</option>
                                <option value="Mathematics">Mathematics</option>
                                <option value="Digital Computer Fundamentals">Digital Computer Fundamentals</option>
                                <option value="Problem-Solving Methodologies & Programming in C">Problem-Solving Methodologies & Programming in C</option>
                                
                                <option value="Accounting">Accounting</option>
                                <option value="Management">Management</option>
                                <option value="Economics">Economics</option>
                                <option value="Finance & Banking">Finance & Banking</option>
                                <option value="Marketing">Marketing</option>
                                
                                <option value="Political Science">Political Science</option>
                                <option value="Sociology">Sociology</option>
                                <option value="History">History</option>
                                <option value="Philosophy">Philosophy</option>
                                <option value="Psychology">Psychology</option>
                               
                                <option value="Economics">Economics</option>
                                <option value="Cultural Studies">Cultural Studies</option>
                                <option value="Psychology">Psychology</option>
                                <option value="Communication Sciences">Communication Sciences</option>
                                <option value="political science">political science</option>
                                
                            </select></td>
                             
                           
                            
                         </tr>   
                    </tbody>
                </table>
      

                      <input type="submit" name="btnsave" id="btnsave"  class="btn btn-outline-dark btn-sm">
<br>
      <a href="home.jsp" type="button" class="btn btn-outline-dark">Back</a>  
 
      
            </form>
                 
               </div>
            </center>
    </body>
</html>
