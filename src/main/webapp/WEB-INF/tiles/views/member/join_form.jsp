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

        <form id="joinFrm" action="/member/join_proc" method="POST">
            <div>
                <input type="text" class="form-control join" id="user_id" name="user_id" placeholder="사용자 ID : 4 ~ 16자 이내">
            </div>

            <div>
                <input type="password" class="form-control join" id="password" name="password" placeholder="비밀번호">
            </div>

            <div>
                <input type="password" class="form-control join" id="confirm_password" name="confirm_password" placeholder="비밀번호 확인">
            </div>

            <div>
                <input type="text" class="form-control join" id="user_nm" name="user_nm" placeholder="이름">
            </div>

            <div>
                <input type="text" class="form-control join" id="email" name="email" placeholder="E-mail">
            </div>

            <div>
                <input type="submit" class="btn-primary" value="Sign Up">
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
        $("#joinFrm").validate({

            submitHandler: function () {
                var f = confirm("회원가입을 완료하겠습니까?");
                if (f) {
                    return true;
                } else {
                    return false;
                }
            },
            //규칙
            rules: {
                user_id: {
                    required: true,
                    minlength: 4,
                    maxlength: 16
                },
                password: {
                    required: true,
                    minlength: 6
                },
                confirm_password: {
                    required: true,
                    minlength: 6,
                    equalTo: password
                },
                user_nm: {
                    required: true,
                    minlength: 2
                },
                /*age: {
                    digits: true
                },*/
                email: {
                    required: true,
                    minlength: 2,
                    email: true
                }
            },
            //규칙체크 실패시 출력될 메시지
            messages: {
                user_id: {
                    required: "필수로입력하세요",
                    minlength: "최소 {0}글자이상이어야 합니다"
                },
                password: {
                    required: "필수로입력하세요",
                    minlength: "최소 {0}글자이상이어야 합니다"
                },
                confirm_password: {
                    required: "필수로입력하세요",
                    minlength: "최소 {0}글자이상이어야 합니다",
                    equalTo: "비밀번호가 일치하지 않습니다."
                },
                user_nm: {
                    required: "필수로입력하세요",
                    minlength: "최소 {0}글자이상이어야 합니다"
                },
                email: {
                    required: "필수로입력하세요",
                    minlength: "최소 {0}글자이상이어야 합니다",
                    email: "메일규칙에 어긋납니다"
                }
            }
        });
    });


</script>



