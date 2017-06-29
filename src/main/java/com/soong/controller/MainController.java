package com.soong.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController {

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main/main");
		return mav;
	}
	
	@RequestMapping(value = "/main2", method = RequestMethod.GET)
	public ModelAndView main2(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main/index");
		return mav;
	}
	
	@RequestMapping("/member")
	public ModelAndView helloworld(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("main/member");
		return mav;
	}
}
