package com.soong.controller;

import com.soong.mapper.BoardMapper;
import com.soong.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/angular")
public class AngularController {

    @Autowired
    private BoardMapper boardMapper;

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
        mav.setViewName("angular/todo/todoFilters.tpl");

        return mav;
    }

    @RequestMapping(value = "/todoItem.tpl", method = RequestMethod.GET)
    public ModelAndView todoItem(){
        ModelAndView mav = new ModelAndView();

        mav.setViewName("angular/todo/todoItem.tpl");
        return mav;
    }

    @RequestMapping(value = "/todoForm.tpl", method = RequestMethod.GET)
    public ModelAndView todoForm(){
        ModelAndView mav = new ModelAndView();

        mav.setViewName("angular/todo/todoForm.tpl");
        return mav;
    }

    //Angular tutorial
    @RequestMapping(value = "/todo/list", method = RequestMethod.GET)
    public ModelAndView todoList() throws Exception {
        ModelAndView mav = new ModelAndView("angular/todo/list");
        System.out.println("Test");
        return mav;
    }

}
