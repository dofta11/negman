package com.soong.controller;

import com.soong.mapper.MemberMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member")
public class MemberController {

    private MemberMapper memberMapper;

    // Notice
    @RequestMapping(value = "/join_form", method = RequestMethod.GET)
    public ModelAndView setMember() throws Exception {
        ModelAndView mav = new ModelAndView("member/join_form");
        return mav;
    }
}

