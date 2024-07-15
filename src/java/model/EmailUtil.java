package model;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailUtil {

    public static void sendActivationEmail(String toEmail, String activationCode) {
        final String username = "nguyenanhtu3703@gmail.com"; // Thay thế bằng địa chỉ email của bạn
        final String password = "ietj qlee vvwb dtce"; // Thay thế bằng mật khẩu của bạn

        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        // tin nhắn
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject("Activation Code for JobLink' account");

            String emailContent = "<!DOCTYPE html>"
                    + "<html lang=\"vi\">"
                    + "<head>"
                    + "<meta charset=\"UTF-8\">"
                    + "<title>Kích hoạt tài khoản</title>"
                    + "</head>"
                    + "<body>"
                    + "<p>Chào mừng bạn đến với JobLink!</p>"
                    + "<p>Dưới đây là mã kích hoạt tài khoản của bạn:</p>"
                    + "<h3>Mã kích hoạt: " + activationCode + "</h3>"
                    + "<p>Vui lòng truy cập vào trang web của chúng tôi và nhập mã kích hoạt này để hoàn tất quá trình kích hoạt tài khoản của bạn.</p>"
                    + "<p>Nếu bạn gặp bất kỳ vấn đề nào hoặc cần hỗ trợ, xin vui lòng liên hệ với chúng tôi qua <a href=\"https://m.me/295506026989207\">Facebook Messenger</a>.</p>"
                    + "<p>Trân trọng,</p>"
                    + "</body>"
                    + "</html>";

            message.setContent(emailContent, "text/html; charset=UTF-8");

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    public static void SendMailAccep(String toEmails) {
        final String username = "anhnttde170203@fpt.edu.vn"; // Thay thế bằng địa chỉ email của bạn
        final String password = "gdvg zpds yumf scbh"; // Thay thế bằng mật khẩu của bạn

        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }

        });

        try {
            // Tạo tin nhắn email
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmails));
            msg.setSubject("Notice Email");
            msg.setText("Your post has been approved");

            // Gửi email
            Transport.send(msg);

            System.out.println("Email sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    public static void SendEmailReject(String toEmails) {
        final String username = "anhnttde170203@fpt.edu.vn"; // Thay thế bằng địa chỉ email của bạn
        final String password = "gdvg zpds yumf scbh"; // Thay thế bằng mật khẩu của bạn

        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }

        });
        try {
            // Tạo tin nhắn email
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmails));
            msg.setSubject("Notice Email");
            msg.setText("Your post has been reject");

            // Gửi email
            Transport.send(msg);

            System.out.println("Email sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    public static void SendMailAccepCV(String toEmails) {
        final String username = "anhnttde170203@fpt.edu.vn"; // Thay thế bằng địa chỉ email của bạn
        final String password = "gdvg zpds yumf scbh"; // Thay thế bằng mật khẩu của bạn

        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }

        });

        try {
            // Tạo tin nhắn email
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmails));
            msg.setSubject("Notice Email");
            msg.setText("Your CV has been approved by the Enterprise");

            // Gửi email
            Transport.send(msg);

            System.out.println("Email sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    public static void SendEmailRejectCV(String toEmails) {
        final String username = "anhnttde170203@fpt.edu.vn"; // Thay thế bằng địa chỉ email của bạn
        final String password = "gdvg zpds yumf scbh"; // Thay thế bằng mật khẩu của bạn

        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }

        });
        try {
            // Tạo tin nhắn email
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmails));
            msg.setSubject("Notice Email");
            msg.setText("Your CV has been reject by the Enterprise");

            // Gửi email
            Transport.send(msg);

            System.out.println("Email sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}
