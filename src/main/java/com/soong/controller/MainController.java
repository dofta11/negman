package com.soong.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController {
	
	@RequestMapping("/main")
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main/main");
		return mav;
	}
	
	@RequestMapping("/main2")
	public ModelAndView main2(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("redirect:/main");
		return mav;
	}
}
