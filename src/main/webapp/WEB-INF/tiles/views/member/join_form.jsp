<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!-- Center Column -->
<div class="col-sm-6">

    <!-- Alert -->
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>Join</strong> Let's get it!
    </div>

    <div class="row">

        <form action="/member/join_proc" method="POST">
            <div>
                <input type="text" class="form-control join" id="user_id" name="user_id" placeholder="사용자 ID : 4 ~ 16자 이내">
            </div>

            <div>
                <input type="password" class="form-control join" id="password" name="password" placeholder="비밀번">
            </div>

            <div>
                <input type="text" class="form-control join" id="user_nm" name="user_nm" placeholder="이름">
            </div>

            <div>
                <input type="text" class="form-control join" id="email" name="email" placeholder="E-mail">
            </div>

        </form>
    </div>
</div>

<style>

    .join {
        width: 50%;
        margin: 10px 0 0 15px;
    }

</style>

<script type="text/javascript">
    $(document).ready(function(){

    });
</script>



