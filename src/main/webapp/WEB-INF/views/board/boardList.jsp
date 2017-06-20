<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 목록</title>


</head>
<body>
	<h3>게시글 목록</h3>
	<button class="" style="float: right;" onclick="location.href='/board/boardWrite'">작성</button>
	<table class="">
		<tr>
			<th>No</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성날짜</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="value" items="${boardList}">
			<tr>
				<td>${value.board_srl}</td>
				<td><a href="/board/${value.board_srl}">${value.title}</a></td>
				<td>${value.reg_id}</td>
				<td><fmt:formatDate value="${value.reg_dt}" pattern="MM/ dd" /></td>
				<td>${value.hit}</td>
			</tr>
		</c:forEach>
	</table>
</body>

</html>