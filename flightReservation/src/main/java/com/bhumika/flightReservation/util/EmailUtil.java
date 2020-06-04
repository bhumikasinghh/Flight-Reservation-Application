package com.bhumika.flightReservation.util;

import java.io.File;

import javax.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailUtil {

	@Autowired
	private JavaMailSender sender;

	
	public void sendItinerary(String toAddress, String filePath) throws MessagingException {

		javax.mail.internet.MimeMessage message =sender.createMimeMessage();
		MimeMessageHelper helper=new MimeMessageHelper(message,true);
		try {
			helper.setTo(toAddress);
			helper.setSubject("Initenary For Your Flight");
			helper.setText("Please Find your Itinerary attached");
			helper.addAttachment("Itinerary", new File(filePath));
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		sender.send(message);
	}


	
	}