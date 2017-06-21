package com.soong.mapper;

import java.util.List;

import com.soong.vo.BoardVO;

public interface BoardMapper {
	public void boardInsert(BoardVO boardVO) throws Exception;

	public List<BoardVO> boardList() throws Exception;

	// 글보기
	public BoardVO boardView(int board_srl) throws Exception;

	// 조회수 증가
	public void hitPlus(int board_srl) throws Exception;

	// 글수정
	public void boardUpdate(BoardVO vo) throws Exception;

	// 글삭제
	public void boardDelete(int board_srl) throws Exception;
}
