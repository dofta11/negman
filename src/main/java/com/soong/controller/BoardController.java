package com.soong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.soong.mapper.BoardMapper;
import com.soong.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardMapper boardMapper;

	// Board List
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView board() throws Exception {
		List<BoardVO> boardList = boardMapper.boardList();
		ModelAndView mav = new ModelAndView("board/boardList");
		mav.addObject("boardList", boardList);
		return mav;
	}

	// Board Write Form
	@RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
	public ModelAndView writeForm() throws Exception {
		return new ModelAndView("board/boardWrite");
	}

	// Board Write Process
	@RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
	public String write(@ModelAttribute("BoardVO") BoardVO board) throws Exception {

		boardMapper.boardInsert(board);

		return "redirect://localhost:8080/board";
	}

	// Board Detail
	@RequestMapping(value = "/{board_srl}", method = RequestMethod.GET)
	public ModelAndView view(@PathVariable("board_srl") int board_srl) throws Exception {

		BoardVO board = boardMapper.boardView(board_srl);
		boardMapper.hitPlus(board_srl);

		return new ModelAndView("board/boardView", "board", board);
	}

}
