package controler;

import model.DatabaseInfo;
import model.Registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

            // Kiểm tra yêu cầu sắp xếp từ request parameter
            String sortParam = request.getParameter("sort");
            if (sortParam != null && !sortParam.isEmpty()) {
                // Sắp xếp theo yêu cầu
                if (sortParam.equals("newest")) {
                    // Sắp xếp từ mới nhất đến cũ nhất
                    Collections.sort(registrations, Comparator.comparing(Registration::getRegistrationDate).reversed());
                } else if (sortParam.equals("oldest")) {
                    // Sắp xếp từ cũ nhất đến mới nhất
                    Collections.sort(registrations, Comparator.comparing(Registration::getRegistrationDate));
                }
            } else {
                // Mặc định sắp xếp từ mới nhất đến cũ nhất
                Collections.sort(registrations, Comparator.comparing(Registration::getRegistrationDate).reversed());
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
 