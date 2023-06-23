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
@WebServlet(name = "regDegreeController", urlPatterns = {"/regDegreeController"})
public class regDegreeController extends HttpServlet {

    PreparedStatement pst;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
            String degree = request.getParameter("degree");
            String subject1 = request.getParameter("subject1");
            String subject2 = request.getParameter("subject2");
            String subject3 = request.getParameter("subject3");
            String subject4 = request.getParameter("subject4");
            String subject5 = request.getParameter("subject5");
            
            String code1 = request.getParameter("code1");
            String code2 = request.getParameter("code2");
            String code3 = request.getParameter("code3");
            String code4 = request.getParameter("code4");
            String code5 = request.getParameter("code5");
            
           
            PrintWriter out = response.getWriter();
            Connection con;
              try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/ABC_University_G","root","");
            pst = con.prepareStatement("INSERT INTO degree(name,email,degree,subject1,subject2,subject3,subject4,subject5,code1,code2,code3,code4,code5)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, name);
            pst.setString(2, email);
            pst.setString(3, degree);
            pst.setString(4, subject1);
            pst.setString(5, subject2);
            pst.setString(6, subject3);
            pst.setString(7, subject4); 
            pst.setString(8, subject5); 
           
            pst.setString(9, code1);
            pst.setString(10, code2);
            pst.setString(11, code3);
            pst.setString(12, code4);
            pst.setString(13, code5);
            
            
            
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
             out.println("<hi>Something went wrong!!!</h1>");
        }
        //out.println("<hi>Success!!!</h1>");
        
        request.setAttribute("Massage", "Degree is added successful.");
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

  

}
