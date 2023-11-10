/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Comment;
import model.Job;
import model.User;

/**
 *
 * @author ASUS
 */
public class ViewJobDetailUser extends HttpServlet {

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
            out.println("<title>Servlet ViewJobDetailUser</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewJobDetailUser at " + request.getContextPath() + "</h1>");
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
        String JobID = request.getParameter("id");
        System.out.println(JobID);
        Job j = new Job();
        Comment c = new Comment();
        List<Comment> list = c.getListCommentByJobId(JobID);
        List<Comment> list2 = c.getListCommentEByJobId(JobID);

        Job completeJob = j.getJobbyId(JobID);
//        System.out.println(list.size() + "comment");

        request.getAttribute("User");

        HttpSession session = request.getSession();
        User us = (User) session.getAttribute("User");
        
        request.getSession().setAttribute("User", us);// chừ qua bên kia gõ User.getUSerID là dùng được
        request.getSession().setAttribute("JobDetail", completeJob);
        request.setAttribute("list", list);
        request.setAttribute("list2", list2);
        request.getRequestDispatcher("ViewJobDetailUser.jsp").forward(request, response);
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
//        Comment comment = new Comment();
//        List<Comment> list = comment.getListCommentByJobId(Id)
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
