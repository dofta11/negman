
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!-- Center Column -->
<div class="col-sm-6">
	<!-- Articles -->
	<div class="row">
		<div class="boardPostForm">
			<form class="form-horizontal" id="boardPostForm" method="POST" action="">
				<div class="form-group">
					<label class="col-xs-3 control-label">Title</label>
					<div class="col-xs-8">
						<input type="text" class="form-control" id="title" name="title" placeholder="Title">
					</div>
				</div>
				<div class="form-group">
					<label for="pwd" class="col-xs-3 control-label">Password</label>
					<div class="col-xs-8">
						<textarea class="form-control" id="content" name="content"></textarea>
					</div>
				</div>
				<div>
					<div class="col-xs-8">
						<Button type="button" id="postBtn">등록</Button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<hr>
</div>
<!--/Center Column-->

<script type="text/javascript">
	$(document).ready(function() {
		$("#postBtn").click(function(){
			var form = $("#boardPostForm");
			form.attr("action", "/board/${board_cd}/boardPost");
			form.submit();
		});
	});
</script>

