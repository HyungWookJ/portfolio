package org.zerock.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;


// log4j 사용없이 적용
@Controller
@RequestMapping(value="login")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService service;
	
	// 회원가입 화면(main)
	@GetMapping("sign_up")
	public void sign_up_main() {
		logger.info("sign_up");
		
	}
	
	@PostMapping("sign_Up")
	public String signUpMake(MemberVO member, HttpServletResponse response) throws IOException {
		logger.info("sign_upMake..." + member);
		if(member.getId()== "") {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입정보를 확인해주세요.'); history.back();</script>");
		}
		service.sign_upMake(member);
		return "redirect:/login/sign_up_c";
	}
	
	@GetMapping("sign_up_c")
	public void sign_up_c() {
		logger.info("sign_up_complete......");
		
	}

	// 로그인 화면(main)
	@GetMapping("sign_in") 
	public void sign_in_main() {
		logger.info("sign_in");
		
	}
	
	// 로그인 확인
	@PostMapping("sign_in") 
	public String login(MemberVO member, HttpSession session, HttpServletResponse response) throws IOException {
		
		logger.info("sign_complete......");
		// id,pass 검증
		MemberVO vo = service.login(member);
		
		session.setAttribute("log", vo);
		
		if(session.getAttribute("log")!=null) {
			logger.info("Success......!!");
			
			return "redirect:/";
					
		}else {
			logger.info("Fail......!!");
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
			out.flush();
			
			return null;
					
		}
		
	}
	
	// 로그아웃
	@GetMapping("logout") 
	public String getLogout(HttpSession session) {
		logger.info("Logout........");
		
		return "redirect:/";
	}
	
}