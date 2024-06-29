/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import model.DatabaseInfo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Registration;

@WebServlet("/displayRegistrations")
public class DisplayRegistrationsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Registration> registrations = new ArrayList<>();

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DatabaseInfo.getConnect();
            String sql = "SELECT Name, Email, Phone, Location, ConsultationNeed, RegistrationDate FROM EnterpriseRegistration";
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Registration registration = new Registration();
                registration.setName(resultSet.getString("Name"));
                registration.setEmail(resultSet.getString("Email"));
                registration.setPhone(resultSet.getString("Phone"));
                registration.setLocation(resultSet.getString("Location"));
                registration.setConsultationNeed(resultSet.getString("ConsultationNeed"));
                registration.setRegistrationDate(resultSet.getTimestamp("RegistrationDate"));
                registrations.add(registration);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseInfo.closeResultSet(resultSet);
            DatabaseInfo.closeStatement(statement);
            DatabaseInfo.closeConnection(connection);
        }

        request.setAttribute("registrations", registrations);
        request.getRequestDispatcher("/displayRegistrations.jsp").forward(request, response);
    }
}
