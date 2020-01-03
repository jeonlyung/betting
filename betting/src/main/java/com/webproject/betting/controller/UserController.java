package com.webproject.betting.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webproject.betting.domain.UserVO;
import com.webproject.betting.service.impl.UserSeviceImpl;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Inject
	private UserSeviceImpl userService;
	
//	회원가입 페이지 이동
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String registGET(@ModelAttribute UserVO userVO, HttpSession session, Model model) throws Exception {
		logger.info("registGET.......");
		return "/user/regist";
	}
	
//	회원가입 값 저장
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String registPOST(@ModelAttribute UserVO userVO, HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("registPOST.......");
		logger.info("userVO : " + userVO);
		
		try {
			userService.regist(userVO);
			rttr.addFlashAttribute("errorMessageTitle", "가입 성공");
			rttr.addFlashAttribute("errorMessage", "회원가입에 성공했습니다.");
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/user/regist";
		}
		
		return "redirect:/login";
	}
//	비밀번호 찾는 페이지 이동
	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public String forgotPassword(@ModelAttribute UserVO userVO, HttpSession session, Model model) throws Exception {
		logger.info("forgetPasswordGET.......");
		return "/user/forgotPassword";
	}
	
//	마이페이지 페이지 이동
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboardGET(@ModelAttribute UserVO userVO, HttpSession session, Model model) throws Exception {
		logger.info("dashboardGET.......");
		return "/user/dashboard";
	}
	
//	차트 페이지 이동
	@RequestMapping(value = "/chart", method = RequestMethod.GET)
	public String chartGET(@ModelAttribute UserVO userVO, HttpSession session, Model model) throws Exception {
		logger.info("chartGET.......");
		return "/user/chart";
	}
	
//	테이블 페이지 이동
	@RequestMapping(value = "/table", method = RequestMethod.GET)
	public String tableGET(@ModelAttribute UserVO userVO, HttpSession session, Model model) throws Exception {
		logger.info("tableGET.......");
		return "/user/table";
	}
}

