/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.CustormerDAO;
import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Customer;

/**
 *
 * @author Admin
 */
@WebServlet(name="AddkhServlet", urlPatterns={"/addkh"})
public class AddkhServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet AddkhServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddkhServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       request.getRequestDispatcher("addkh.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         request.setCharacterEncoding("UTF-8");
//        processRequest(request, response);
        //Lay data tu form
        String id = request.getParameter("id");
        int id1 = Integer.parseInt(id);
        String name = request.getParameter("name");
        String amount = request.getParameter("amount");
        double amount1 = Double.parseDouble(amount);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Customer newCustomer = new Customer();
        String hashedPassword = newCustomer.hashPassword(password);

        
        CustormerDAO cdb = new CustormerDAO();
        Customer c = cdb.getCustomerById(id1);
        System.out.println("+++++++++++++++++++++++++++++++++++++addkh");
        System.out.println(id1);
 System.out.println(name);
System.out.println(amount);
System.out.println(username);
System.out.println(password);
System.out.println(hashedPassword);
        
        if (c == null) {
            Customer cNew = new Customer(id1, name, amount1, username, hashedPassword);
            cdb.insert(cNew);
            response.sendRedirect("quanly");
        } else {
            request.setAttribute("error", id + " existed!!!");
            request.getRequestDispatcher("addkh.jsp").forward(request, response);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}