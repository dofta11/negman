<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
<!-- BootStrap CDN -->

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<title>게시글 수정</title>
</head>
<body>
    <h3>게시글 수정</h3>
    <div style="padding : 30px;">
        <form:form commandName="BoardVO" action="/board/boardWrite/${board.board_srl}" method="PATCH">
          <div class="form-group">
            <label>제목</label>
            <input type="text" name="title" value="${board.title}" class="form-control">
          </div>
          <div class="form-group">
            <label>내용</label>
            <textarea name="contents" class="form-control" rows="5">${board.contents}</textarea>
          </div>
          <button type="submit" class="btn btn-default">수정</button>
        </form:form>
    </div>
</body>
</html>


