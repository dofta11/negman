package com.soong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.soong.mapper.BoardMapper;
import com.soong.vo.BoardVO;

@RestController
public class BoardController {
	@Autowired
	private BoardMapper boardMapper;
	
	@RequestMapping("/board")
	public List<BoardVO> board() throws Exception{
		List<BoardVO> board = boardMapper.boardList();
		return board;
	}
}
