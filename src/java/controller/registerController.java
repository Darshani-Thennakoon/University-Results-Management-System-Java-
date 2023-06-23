/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hello
 */
@WebServlet(name = "registerController", urlPatterns = {"/registerController"})
public class registerController extends HttpServlet {

    
    PreparedStatement pst;
    ResultSet rs;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
            String name = request.getParameter("userName");
            String pwd = request.getParameter("userPwd");
            String phone = request.getParameter("userPhone");
            String nic = request.getParameter("userNic");
            String email = request.getParameter("userEmail");
           
            PrintWriter out = response.getWriter();
            Connection con;
              try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/ABC_University_G","root","");
            pst = con.prepareStatement("INSERT INTO users(name,pwd,phone,nic,email,role)VALUES(?,?,?,?,?,'user')");
            pst.setString(1, name);
            pst.setString(2, pwd);
            pst.setString(3, phone);
            pst.setString(4, nic);
            pst.setString(5, email); 
            
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
             out.println("<hi>Something went wrong!!!</h1>");
        }
        //out.println("<hi>Success!!!</h1>");
        
        request.setAttribute("Massage","Hello"+ " " +name +" " + "your registration is successful.Now you can login in to the system");
        request.getRequestDispatcher("index.jsp").forward(request, response);
       
    }

  
}