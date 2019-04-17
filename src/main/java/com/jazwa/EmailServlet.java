package com.jazwa;

import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

@WebServlet("/EmailServlet")
public class EmailServlet extends HttpServlet {


    private void sendEmail(String address, String subject, String messageText) throws MessagingException {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.poczta.onet.pl");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.debug", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("jazzbar@onet.eu", "jolka27");
            }
        });

        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress("jazzbar@onet.eu"));
        message.setReplyTo(InternetAddress.parse(address));
        message.setRecipients(
                Message.RecipientType.TO, InternetAddress.parse("bartoos@poczta.onet.pl"));
        message.setSubject(subject);

        message.setText(messageText);

        Transport.send(message);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String emailAddress = req.getParameter("email_address");
        String emailSubject = req.getParameter("email_subject");
        String emailMessage = req.getParameter("email_message");

        try {
            sendEmail(emailAddress,emailSubject,emailMessage);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        RequestDispatcher rd = req.getRequestDispatcher("sent.jsp");
        req.setAttribute("recipent",emailAddress);
        rd.forward(req,resp);
    }
}
