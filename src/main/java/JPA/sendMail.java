package JPA;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class sendMail {
	public static void mail(HttpServletRequest request, HttpServletResponse response, String mailNhan, String tieude, String noidung, String thongbao) {
		
		final String mailgui = "khadnbps20432@fpt.edu.vn";
		final String password = "wbkjhorojrclpwfy";
		String host = "smtp.gmail.com"; // SMTP server của bạn (ví dụ: smtp.gmail.com)
		String port = "587";// Cổng SMTP của bạn (ví dụ: 587)

		String recipient = mailNhan; // Địa chỉ email người nhận
		//String recipient2 = request.getParameter("email"); // Địa chỉ email người nhận
		String subject = tieude; // Tiêu đề email
		String content = noidung; // Nội dung email

		
//		if (!us.getEmail().equals(recipient2)) {
//			request.setAttribute("ms", "Mail không đúng với tài khoản");
//			request.getRequestDispatcher("/site/forgotpass.jsp").forward(request, response);
//			return;
//		}
		
		
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);

		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(mailgui, password);
			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(mailgui));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
			message.setSubject(subject);
			message.setText(content);
			Transport.send(message);
			System.out.println("Email sent successfully.");
			request.setAttribute("ms", thongbao);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		
	}
}
