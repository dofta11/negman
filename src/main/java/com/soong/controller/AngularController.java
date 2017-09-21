package com.soong.controller;

import com.soong.mapper.BoardMapper;
import com.soong.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
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

    @ResponseBody
    @RequestMapping(value = "/board/{board_cd}/list", method = RequestMethod.GET)
    public List<BoardVO> angularBoardList(@PathVariable("board_cd") String board_cd) throws Exception {

        List<BoardVO> boardList = boardMapper.boardList(board_cd);
        System.out.println("boardList" + boardList);
        return boardList;
    }

}
