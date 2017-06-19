package com.soong.mapper;

import java.util.List;

import com.soong.vo.BoardVO;

public interface BoardMapper {
	public void boardInsert(BoardVO boardVO) throws Exception;
	public List<BoardVO> boardList() throws Exception;
}
