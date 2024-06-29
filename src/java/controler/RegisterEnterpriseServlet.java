/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DatabaseInfo;

@WebServlet("/register_enterprise")
public class RegisterEnterpriseServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String location = request.getParameter("location");
        String consultationNeed = request.getParameter("consultation_need");

        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = DatabaseInfo.getConnect();
            String sql = "INSERT INTO EnterpriseRegistration (Name, Email, Phone, Location, ConsultationNeed) VALUES (?, ?, ?, ?, ?)";
            statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, location);
            statement.setString(5, consultationNeed);

            int rows = statement.executeUpdate();
            if (rows > 0) {
                System.out.println("A new enterprise has been registered successfully.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseInfo.closeStatement(statement);
            DatabaseInfo.closeConnection(connection);
        }

        response.sendRedirect("success.jsp");
    }
}