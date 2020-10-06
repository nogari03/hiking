package project.user.service;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service("mailService")
public class MailService {
	@Autowired 
	private JavaMailSender mailSender;
	
	@Autowired
	private SimpleMailMessage preConfiguredMessage;
	
	private int size;
	
	//인증키 생성
	public String getKey(int size) {
		this.size = size;
		return getAuthCode();
	}
	
	//인증코드 난수 발생
	private String getAuthCode() {
		Random random = new Random();
		StringBuffer buffer = new StringBuffer();
		int num = 0;
		
		while(buffer.length() < size) {
			num = random.nextInt(10);
			buffer.append(num);
		}
	 return buffer.toString();
	}
	
	
	@Async
	public String sendAuthMail(String email, String authKey) {
		MimeMessage message = mailSender.createMimeMessage();
		
		
		
		String mailContent = "<h1>[산오름 이메일 인증]</h1><br><p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>"
                + "<a href='http://localhost:8080/user/signUpConfirm.do?email=" 
                + email + "&authKey=" + authKey + "' target='_blenk'>이메일 인증 확인</a>";
		
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom("bithiking168@gmail.com", "산오름");
			messageHelper.setTo(email);
			messageHelper.setSubject("산오름에서 보내는 회원가입 이메일 인증입니다.");
			messageHelper.setText(mailContent);
			mailSender.send(message);
			sendPreConfiguredMail("회원가입 인증 메일입니다.");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return authKey;
		}
	
	@Async
	public void sendPreConfiguredMail(String message) {
		SimpleMailMessage mailMessage = new SimpleMailMessage(preConfiguredMessage);
		mailMessage.setText(message);
		mailSender.send(mailMessage);
	}
	

}