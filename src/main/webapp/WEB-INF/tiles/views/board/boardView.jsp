
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="contents">
    <h3>게시글 상세</h3>
    <div style="padding : 30px;">
      <div class="">
        <label>제목</label>
        <span>${board.title}</span>
      </div>
      <div class="">
        <label>작성자</label>
        <span>${board.reg_id}</span>
      </div>
      <div class="">
        <label>작성날짜</label>
        <span><fmt:formatDate value="${board.reg_dt}" pattern="yyyy/ MM/ dd HH:mm" /></span>
      </div>
      <div class="">
        <label>조회수</label>
        <span>${board.hit}</span>
      </div>
      <div class="">
        <label>내용</label>
        <p>${board.contents}</p>
      </div>
      <div class="">
          <input type="button" value="수정" onclick='location.href="/board/boardWrite/${board.board_srl}"'>
          
          <form:form action="/board/boardWrite/${board.board_srl}" method="DELETE">
              <input type="submit" value="삭제">
          </form:form>
          
      </div>
    </div>
</div>