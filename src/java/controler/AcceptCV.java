/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CV;
import model.CVDB;
import model.EmailUtil;
import model.User;
import model.UserDB;

/**
 *
 * @author thean
 */
@WebServlet(name = "AcceptCV", urlPatterns = {"/AcceptCV"})
public class AcceptCV extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AcceptCV</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AcceptCV at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String CVID = request.getParameter("id");
        String JobID = request.getParameter("eId");
        String UserID = request.getParameter("cId");
        System.out.println(UserID);
        User us = UserDB.getUserID(UserID);
        String acc = us.getUserAccount();
        System.out.println(acc);
        EmailUtil.SendMailAccepCV(acc);
        ArrayList<CV> CV = (ArrayList<CV>) request.getAttribute("CVListJobSent");
         
        CV CVdelet = new CV(CVID);                
        CVdelet.acceptCV();
        ArrayList<CV> CVListJobSent = CVDB.getListCVfromJobID(JobID);
        request.setAttribute("CVListJobSent", CVListJobSent);
        request.getRequestDispatcher("ViewCVSentEnter.jsp").forward(request, response);    }    

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
