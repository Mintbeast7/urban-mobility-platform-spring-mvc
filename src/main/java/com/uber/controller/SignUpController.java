package com.uber.controller;

import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uber.request.UserData;

@Controller
public class SignUpController {

	@RequestMapping("user/signup")
	public ModelAndView doSignUp() {
		System.out.println("me chal gya........");
		ModelAndView mcv = new ModelAndView();
		mcv.setViewName("signup");
		return mcv;		
	}

//	@GetMapping("user/signUpformload")
//	public ModelAndView doSubmit(@RequestParam("name") String readName, @RequestParam("email") String readEmail,
//			@RequestParam("mobile") String readMobile, @RequestParam("password") String readPassword,
//	        @RequestParam("confirmPassword") String readConfirmPassword){	        	
//		System.out.println("SignUpController.doSubmit()........");
//		System.out.println(readName + readEmail + readMobile + readPassword + readConfirmPassword);
//		ModelAndView mcv = new ModelAndView();
//		mcv.setViewName("confirmation");
//		return mcv;
//	}
	
	@PostMapping("user/signUpformload")                            
	public String handleSignUpResult(@ModelAttribute UserData UserData, Model model) { //this object(UserData ) will have all the data
 		System.out.println("SignUpController.handleSignUpResult()........");
		String name	= UserData.getName();
		String email = UserData.getEmail();
		String mobile = UserData.getMobile();
		String password = UserData.getConfirmPassword();
		String confirmPassword = UserData.getConfirmPassword();
		System.out.println("Data Received [" + name + email + mobile + password + confirmPassword + "]");
		String confirmationId = UUID.randomUUID().toString().replace("-", "").substring(0, 6).toUpperCase();
		System.out.println("Your booking code is: " + confirmationId);
		model.addAttribute("confirmationId", confirmationId); //this will be sent back to page 
		return "confirmation";
	}
}