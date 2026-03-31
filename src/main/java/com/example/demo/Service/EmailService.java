package com.example.demo.Service;

public interface EmailService {

	//send email to single person
	void sendEmail(String to, String subject, String message);

}