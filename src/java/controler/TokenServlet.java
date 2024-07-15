/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/token")
public class TokenServlet extends HttpServlet {
    private static final String API_KEY_SID = "SK.0.sDLH5SRMn6QwyYQNOdLtClRedV2tdPmi";
    private static final String API_KEY_SECRET = "QXI3WEV1MWI3VmRWaWQ2RUFMUEx6ck1DV3NSaDhHdA==";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        if (userId == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing userId parameter");
            return;
        }

        try {
            Algorithm algorithm = Algorithm.HMAC256(API_KEY_SECRET);
            String token = JWT.create()
                    .withClaim("jti", "token_id")
                    .withClaim("iss", API_KEY_SID)
                    .withClaim("exp", new Date(System.currentTimeMillis() + 3600 * 1000))
                    .withClaim("userId", userId)
                    .sign(algorithm);

            resp.setContentType("application/json");
            resp.getWriter().write("{\"token\":\"" + token + "\"}");
        } catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}
