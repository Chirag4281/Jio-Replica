/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Calendar;
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
@WebServlet("/RechargeServ")
public class RechargeSer extends HttpServlet {

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
         SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date validity = null;
        try {
             String validityStr = "2024-08-30";
            validity = sdf.parse(validityStr);
        } catch (Exception e) {
            e.printStackTrace();
        }

        Connection conn;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Database connection
             Class.forName("com.mysql.cj.jdbc.Driver");
              conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "root");
             Statement stmt = conn.createStatement();

            // Check if phone number already exists
            String selectQuery = "SELECT validity FROM recharge_plans WHERE phone_number = ?";
            pstmt = conn.prepareStatement(selectQuery);
             String phoneNumber = "9892126979";
            pstmt.setString(1, phoneNumber);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                // If phone number exists, update validity by adding 3 months
                Date currentValidity = rs.getDate("validity");
                Calendar cal = Calendar.getInstance();
                cal.setTime(currentValidity);
                cal.add(Calendar.MONTH, 3);
                Date newValidity = cal.getTime();

                String updateQuery = "UPDATE recharge_plans SET data_per_day = ?, validity = ? WHERE phone_number = ?";
                pstmt = conn.prepareStatement(updateQuery);
                 float dataPerDay = (float) 3.0;
                pstmt.setFloat(1, dataPerDay);
                pstmt.setDate(2, new java.sql.Date(newValidity.getTime()));
                pstmt.setString(3, phoneNumber);
                pstmt.executeUpdate();
            } else {
                // If phone number doesn't exist, insert a new record
                String insertQuery = "INSERT INTO recharge_plans (phone_number, data_per_day, validity) VALUES (?, ?, ?)";
                pstmt = conn.prepareStatement(insertQuery);
                pstmt.setString(1, phoneNumber);
                 float dataPerDay = (float) 3.0;
                pstmt.setFloat(2, dataPerDay);
                pstmt.setDate(3, new java.sql.Date(validity.getTime()));
                pstmt.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RechargeSer.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Clean up
            try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
           
        }

        response.getWriter().write("Data processed successfully!");
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
