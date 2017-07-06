package com.soong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.soong.mapper.BoardMapper;
import com.soong.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardMapper boardMapper;

	
	// Notice
	@RequestMapping(value = "/{board_cd}/list", method = RequestMethod.GET)
	public ModelAndView boardList(@PathVariable("board_cd") String board_cd) throws Exception {
		List<BoardVO> boardList = boardMapper.boardList(board_cd);
		ModelAndView mav = new ModelAndView("board/boardList");
		mav.addObject("boardList", boardList);
		return mav;
	}
	
//	// Board List
//	@RequestMapping(method = RequestMethod.GET)
//	public ModelAndView board() throws Exception {
//		List<BoardVO> boardList = boardMapper.boardList();
//		ModelAndView mav = new ModelAndView("board/boardList");
//		mav.addObject("boardList", boardList);
//		return mav;
//	}
//	
//	// Board Detail
//	@RequestMapping(value = "/{board_srl}", method = RequestMethod.GET)
//	public ModelAndView view(@PathVariable("board_srl") int board_srl) throws Exception {
//
//		BoardVO board = boardMapper.boardView(board_srl);
//		
//		//게시글 카운트
//		boardMapper.hitPlus(board_srl);
//		
//		return new ModelAndView("board/boardView", "board", board);
//	}
//
//	// Board Write Form
//	@RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
//	public ModelAndView writeForm() throws Exception {
//		return new ModelAndView("board/boardWrite");
//	}
//
//	// Board Write Process
//	@RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
//	public ModelAndView write(@ModelAttribute("BoardVO") BoardVO board) throws Exception {
//
//		boardMapper.boardInsert(board);
//		
//		//return "redirect://localhost:8080/board";
//		return new ModelAndView(new RedirectView("/board", true));
//	}
//	
//	// Board update Form
//	@RequestMapping(value="/boardWrite/{board_srl}", method=RequestMethod.GET)
//	public ModelAndView updateForm(@PathVariable("board_srl") int board_srl) throws Exception{
//	        
//	    BoardVO board = boardMapper.boardView(board_srl);
//	    
//	    return new ModelAndView("board/boardUpdate","board",board);
//	}
//	
//	//게시글 수정(PATCH)
//	@RequestMapping(value="/boardWrite/{board_srl}", method=RequestMethod.PATCH)
//	public ModelAndView update(@ModelAttribute("BoardVO")BoardVO board,@PathVariable("board_srl") int board_srl) throws Exception{
//	        System.out.println(board.getBoard_srl());
//	        System.out.println(board.getContents());
//	        System.out.println(board.getTitle());
//	    boardMapper.boardUpdate(board);
//	        
//	    return new ModelAndView(new RedirectView("/board/"+board_srl, true));
//	}
//	//게시글 삭제(DELETE)
//	@RequestMapping(value="/boardWrite/{board_srl}", method=RequestMethod.DELETE)
//	public ModelAndView delete(@PathVariable("board_srl") int board_srl) throws Exception{
//	        
//	    boardMapper.boardDelete(board_srl);
//	        
//	    return new ModelAndView(new RedirectView("/board", true));
//	}

}
