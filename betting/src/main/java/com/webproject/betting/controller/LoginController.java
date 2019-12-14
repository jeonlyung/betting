package com.webproject.betting.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webproject.betting.domain.UserVO;
import com.webproject.betting.service.impl.UserSeviceImpl;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Inject
	private static UserSeviceImpl userservice;
	
//	로그인(페이지 들어갈 때) 
	@RequestMapping(value = "/login",  method = RequestMethod.GET)
	public String loginGET() {
		return "login";
	}
	
//	로그인(페이지에서 폼전송했을 때)
	@RequestMapping(value = "/login",  method = RequestMethod.POST)
	public String loginPOST(@ModelAttribute UserVO userVO, HttpSession session, Model model,HttpServletRequest request,
	HttpServletResponse response) throws Exception {
		
		session = request.getSession();
		
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		
		UserVO vo =  userservice.login(userVO);
		
		if(vo == null) {
			logger.info("new login fail");
			model.addAttribute("msg", "이메일이나 비밀번호가 잘못되었습니다.");
			
			return "/login";
		}else {
			logger.info("new login success");
			
		}
		
		
		return "login";
	}
	
	
//	회원가입 페이지 이동
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String registGET(@ModelAttribute UserVO userVO) throws Exception {
		logger.info("registGET.......");
		return "regist";
	}
	
//	회원가입 값 저장
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String registPOST(@ModelAttribute UserVO userVO) throws Exception {
		logger.info("registPOST.......");
		userservice.regist(userVO);
		
		return "redirect:/login";
	}
	
}
