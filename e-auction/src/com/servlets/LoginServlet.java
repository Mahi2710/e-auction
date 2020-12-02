  
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import com.dao.*;
import com.entites.User;
import com.helper.Dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
//          login 
//            fetch username and password from request
            String userEmail = request.getParameter("email");
            String userPassword = request.getParameter("password");

            Userdao dao = new Userdao(Dbconnection.takeConnection());

            User u = dao.getUserByEmailAndPassword(userEmail, userPassword);
            
            if (u == null) {
                //login.................
               // error      
                out.println("Invalid Details..try again");
               

               // response.sendRedirect("login_page.jsp");
            } else {
                //......
//                login success
               // HttpSession s = request.getSession();
                //s.setAttribute("currentUser", u);
               // response.sendRedirect("profile.jsp");
            	out.println("success");

            }

            out.println("</body>");
            out.println("</html>");
        }
    }
}
  