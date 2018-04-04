package com.ktds.member.web;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String doJoinAction(@ModelAttribute("joinForm")
								@Valid MemberVO memberVO) {

		if(memberVO.getUserId() != null) {
			
			return "member/login";
		} else {

			return "member/join";
		}
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	// @GetMapping("/write")
	public String viewLoginPage() {
		
		
		return "member/login";
	}
	
}
