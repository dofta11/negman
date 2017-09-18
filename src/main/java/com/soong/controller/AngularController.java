package com.soong.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/angular")
public class AngularController {

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public ModelAndView main(){
        ModelAndView mav = new ModelAndView();
        System.out.println("Test");
        mav.setViewName("angular/index");
        return mav;
    }

    @RequestMapping(value = "/todoFilters.tpl", method = RequestMethod.GET)
    public ModelAndView todoFilters(){
        ModelAndView mav = new ModelAndView();

        mav.setViewName("angular/todoFilters.tpl");
        return mav;
    }

    @RequestMapping(value = "/todoItem.tpl", method = RequestMethod.GET)
    public ModelAndView todoItem(){
        ModelAndView mav = new ModelAndView();

        mav.setViewName("angular/todoItem.tpl");
        return mav;
    }

    @RequestMapping(value = "/todoForm.tpl", method = RequestMethod.GET)
    public ModelAndView todoForm(){
        ModelAndView mav = new ModelAndView();

        mav.setViewName("angular/todoForm.tpl");
        return mav;
    }

}
