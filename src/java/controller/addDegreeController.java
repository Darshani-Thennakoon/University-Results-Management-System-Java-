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
@WebServlet(name = "addDegreeController", urlPatterns = {"/addDegreeController"})
public class addDegreeController extends HttpServlet {

    PreparedStatement pst;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String degree = request.getParameter("degree");
            String subject1 = request.getParameter("subject1");
            String subject2 = request.getParameter("subject2");
            String subject3 = request.getParameter("subject3");
            String subject4 = request.getParameter("subject4");
            String subject5 = request.getParameter("subject5");
            String grade1 = request.getParameter("grade1");
            String grade2 = request.getParameter("grade2");
            String grade3 = request.getParameter("grade3");
            String grade4 = request.getParameter("grade4");
            String grade5 = request.getParameter("grade5");
            String code1 = request.getParameter("code1");
            String code2 = request.getParameter("code2");
            String code3 = request.getParameter("code3");
            String code4 = request.getParameter("code4");
            String code5 = request.getParameter("code5");
            
           
            PrintWriter out = response.getWriter();
            Connection con;
              try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/ABC_University_G","root","");
            pst = con.prepareStatement("INSERT INTO grade(degree,subject1,subject2,subject3,subject4,subject5,grade1,grade2,grade3,grade4,grade5,code1,code2,code3,code4,code5)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, degree);
            pst.setString(2, subject1);
            pst.setString(3, subject2);
            pst.setString(4, subject3);
            pst.setString(5, subject4); 
            pst.setString(6, subject5); 
            pst.setString(7, grade1);
            pst.setString(8, grade2);
            pst.setString(9, grade3);
            pst.setString(10, grade4);
            pst.setString(11, grade5);
            pst.setString(12, code1);
            pst.setString(13, code2);
            pst.setString(14, code3);
            pst.setString(15, code4);
            pst.setString(16, code5);
            
            
            
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
             out.println("<hi>Something went wrong!!!</h1>");
        }
        //out.println("<hi>Success!!!</h1>");
        
        request.setAttribute("Massage", "Degree is added successful.");
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }

  

}
