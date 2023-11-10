package controler;

import model.DatabaseInfo;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UnlockUserServlet")
public class UnlockUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userID = request.getParameter("UserID");

        if (userID != null && !userID.isEmpty()) {
            int result = unlockUser(userID);

            if (result > 0) {
                response.getWriter().write("User unlocked successfully");
            } else {
                response.getWriter().write("Failed to unlock user");
            }
        } else {
            response.getWriter().write("Invalid user ID");
        }
    }

    private int unlockUser(String userID) {
        int result = -1;
        try (Connection con = DatabaseInfo.getConnect()) {
            // Execute SQL update to unlock the user
            String sql = "UPDATE Users SET isLocked = NULL WHERE UserID = ?";
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, userID);
                result = ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
