package com.soong.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.soong.vo.BoardVO;

public interface BoardMapper {
	public void boardInsert(BoardVO boardVO) throws Exception;

	public List<BoardVO> boardList(String board_cd) throws Exception;
	public List<BoardVO> allBoardList() throws Exception;

	public BoardVO boardDetail(@Param("board_cd") String board_cd, @Param("board_no") int board_no) throws Exception;

	// 글보기
	public BoardVO boardView(int board_no) throws Exception;

	// 조회수 증가
	public void hitPlus(int board_no) throws Exception;

	// 글수정
	public void boardUpdate(BoardVO vo) throws Exception;

	// 글삭제
	public void boardDelete(int board_no) throws Exception;
}
