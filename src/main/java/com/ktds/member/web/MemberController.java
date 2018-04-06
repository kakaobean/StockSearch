package com.ktds.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.member.constans.Member;
import com.ktds.member.service.MemberService;
import com.ktds.member.vo.MemberVO;

@Controller
public class MemberController {
	private MemberService memberService;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	// @GetMapping("/write")
	public String viewJoinPage() {
		
		
		return "member/join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public ModelAndView doJoinAction(@ModelAttribute("joinForm")
								@Valid MemberVO memberVO) {
	
		if(memberService.createMember(memberVO)) {
			
			return new ModelAndView("redirect:/login");
		} 
		
			return new ModelAndView("member/join");
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	// @GetMapping("/write")
	public String viewLoginPage() {
		
		
		return "member/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String doLoginAction(@ModelAttribute("loginForm") 
			@Valid MemberVO memberVO, HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO a = memberService.readMember(memberVO);
		if(a != null) {
			session.setAttribute(Member.USER, a);
			return "redirect:/";
		}
			return "redirect:/login";
	}
	
	@RequestMapping("/logout")
	public String doLogoutAction(HttpSession session) {
		session.invalidate();
		
		return "redirect:/login";
	}
	
}
