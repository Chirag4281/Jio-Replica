





/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
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
 * @author Chirag Badani
 */
@WebServlet("/login_check")
public class Login_Check extends HttpServlet {
  private static final String DB_URL = "jdbc:mysql://localhost:3306/Login";
    private static final String DB_USER = "root"; // Replace with your MySQL username
    private static final String DB_PASSWORD = "root"; // Replace with your MySQL password
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
      
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out = response.getWriter();
        String nm = request.getParameter("Nm1");
        String pass = request.getParameter("Pass");
        out.println("<h1>Welcome back</h1>");
        if (nm == null || nm.isEmpty() || pass == null || pass.isEmpty()) {
            response.sendRedirect("login.jsp?error=Invalid input");
            return;
        }

        // Validate credentials with the database
        try{
            
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "root");
        
            String sql = "SELECT * FROM login WHERE Name = ? AND password = ?";
            try (PreparedStatement stmt = con.prepareStatement(sql)) {
                stmt.setString(1, nm);
                stmt.setString(2, pass);

                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        // Successful login
                        response.sendRedirect("Homepage.jsp");
                    } else {
                        // Invalid credentials
                        response.sendRedirect("index.html?error=Invalid credentials");
                    }
                }
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
            out.print(e);
            response.sendRedirect("index.html?error=Database error");
        } catch (ClassNotFoundException ex) {
          Logger.getLogger(Login_Check.class.getName()).log(Level.SEVERE, null, ex);
      }
    
       
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
