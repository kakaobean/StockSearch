package com.ktds.community.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.community.service.CommunityService;
import com.ktds.community.vo.CommunityVO;

@Controller
public class CommunityController {

	private CommunityService communityService;
	
	public void setCommunityService(CommunityService communityService) {
		this.communityService = communityService;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	// @GetMapping("/write")
	public String viewMainPage() {
		
		
		return "community/main";
	}
	
	
	@RequestMapping("/list")
	public ModelAndView viewListPage() {
		
		ModelAndView view = new ModelAndView();
		
		// /WEB-INF/view/community/list.jsp
		view.setViewName("community/list");
		
		List<CommunityVO> communityList = communityService.getAll();
		view.addObject("communityList", communityList);
		
		return view;
	}
	
	
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	// @GetMapping("/write")
	public String viewWritePage() {
		
		
		return "community/write";
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	// @PostMapping("/write")
	ModelAndView doWrite(@ModelAttribute("writeForm") 
	@Valid CommunityVO communityVO) {
		boolean isSuccess = communityService.createCommunity(communityVO);

		// 만약에 글쓰기 등록이 완료 되었다면~ 리스트로 정보 보내고 다시 가겠다.
		
		if (isSuccess) {
			return new ModelAndView("redirect:/list");
		}
		
		return new ModelAndView("redirect:/write");
	}
	@RequestMapping("/view/{id}")
	public ModelAndView viewViewPage(@PathVariable int id) {
		
		
		
		ModelAndView view = new ModelAndView();
		view.setViewName("community/view");
		
	
		CommunityVO community = communityService.getOne(id);
		
		view.addObject("community", community);
		
		return view;
	}
	
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	// @GetMapping("/write")
	public String viewSearchPage() {
		
		
		return "community/search";
	}


	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	// @GetMapping("/write")
	public String viewNoticePage() {
		
		
		return "community/notice";
	}

}