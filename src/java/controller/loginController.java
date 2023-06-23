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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hello
 */
@WebServlet(name = "loginController", urlPatterns = {"/loginController"})
public class loginController extends HttpServlet {

    PreparedStatement pst;
   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("userName");
        String pwd = request.getParameter("userPwd");
          PrintWriter out = response.getWriter();
            Connection con;
              try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/ABC_University_G","root","");
            pst = con.prepareStatement("SELECT * FROM users WHERE name=? AND pwd=?");
            pst.setString(1, name);
            pst.setString(2, pwd);
             ResultSet rs = pst.executeQuery();
             if(rs.next()){
                HttpSession session = request.getSession();
                
                String r = rs.getString("role");
                session.setAttribute("UR",r);
                
                if(r.equals("admin")){
                request.setAttribute("message","Hello" + name);
                response.sendRedirect("admin.jsp");
                }else if (r.equals("user")){
                request.setAttribute("message","Hello" + name);
                response.sendRedirect("home.jsp");
                }else{
                request.setAttribute("message","Invalid User");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                
             }else{
                 request.setAttribute("Massage","Login failed please chech your username and password");
                 request.getRequestDispatcher("index.jsp").forward(request, response);
             }
    }catch (SQLException ex) {
            Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
             out.println("<hi>Something went wrong!!!</h1>");
        }
        //out.println("<hi>Success!!!</h1>");
    }

}
