

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div id="contents">
	<h3>게시글 작성</h3>
	<div style="padding: 30px;">
		<form method="POST" action="/board/boardWrite">
			<div class="">
				<label>제목</label> <input type="text" name="title" class="">
			</div>
			<div class="">
				<label>작성자</label> <input type="text" name="reg_id" class="">
			</div>
			<div class="">
				<label>내용</label>
				<textarea name="contents" class="" rows="5"></textarea>
			</div>
			<button type="submit" class="">작성</button>
		</form>
	</div>
</div>