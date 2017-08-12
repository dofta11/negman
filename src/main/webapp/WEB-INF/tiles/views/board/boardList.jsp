
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<style>
.boardWriteBtn{
	
}
</style>

<!-- Center Column -->
<div class="col-sm-6">

	<!-- Alert -->
	<div class="alert alert-success alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<strong>Notice:</strong> 일반회원은 조회만 가능합니다 :)
	</div>

	<!-- Articles -->
	<div class="row">
		<div class="boardWriteBtn pull-right">
			<button type="button" id="boardPostBtn" class="btn btn-default">글쓰기</button>
		</div>

		<div class="boardList">

			<c:forEach items="${boardList}" var="iter">
				<div class="">
					<h2>${iter.title }</h2>
					<p>${iter.content }</p>
					<p>
						<a class="btn btn-secondary" href="/board/${board_cd}/detail?board_no=${iter.board_no}" role="button">more »</a>
					</p>
				</div>
			</c:forEach>

		</div>

	</div>
	<hr>
</div>
<!--/Center Column-->

<script type="text/javascript">
	$(document).ready(function() {
		$("#boardPostBtn").click(function(){
			location.href = "/board/${board_cd}/boardPostForm";
		});
	});
</script>

