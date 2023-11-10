/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Enterprise;
import model.User;

/**
 *
 * @author ASUS
 */
public class VerifyServlet extends HttpServlet {

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
            out.println("<title>Servlet VerifyServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VerifyServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("Verify.jsp").forward(request, response);
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
//         request.getRequestDispatcher("Verify.jsp").forward(request, response);
        HttpSession session = request.getSession();
        String inputcode = request.getParameter("input-code").trim();
        String emaildont = (String) session.getAttribute("emaildont");
        String passdont = (String) session.getAttribute("passdont");
        int id = -1;
        if (inputcode.equals(session.getAttribute("codetest")) && "User".equals(session.getAttribute("role"))) {
            User u = new User(emaildont, passdont);
            if(u.isDupplicatedAccount()){
                request.setAttribute("inputError", "Account is used. Try another one!");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
            id = u.addNew();
        } else if (inputcode.equals(session.getAttribute("codetest")) && "Enterprise".equals(session.getAttribute("role"))) {
            Enterprise e = new Enterprise(emaildont, passdont);
            if(e.isDupplicatedAccount()){
                request.setAttribute("inputEnrror", "Account is used. Try another one!");
            }
            id = e.addNew();
        } else if(!inputcode.equals(session.getAttribute("codetest"))){
            request.setAttribute("inputError", "Incorrect code");
            request.getRequestDispatcher("Verify.jsp").forward(request, response);
        }

        request.getRequestDispatcher("Login.jsp").forward(request, response);
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
