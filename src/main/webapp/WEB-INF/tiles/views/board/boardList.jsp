<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<style>
    .boardWriteBtn {

    }
</style>

<!-- Center Column -->
<div class="col-sm-6">

    <!-- Alert -->
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        <strong>Notice:</strong> Spring Boot 게시판 :)
    </div>

    <!-- Articles -->

    <div ng-view="" class="ng-scope">
        <div class="ng-scope">
            <div class="panel panel-default">

                <div class="panel-heading">
                    <strong>게시판리스트</strong>
                    <a id="boardPostBtn" class="btn btn-xs btn-primary pull-right"><span
                            class="glyphicon glyphicon-pencil"></span> 글쓰기</a>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-hover" id="listTable">
                            <colgroup>
                                <col width="80px">
                                <col width="*">
                                <col width="150px">
                                <col width="80px">
                                <col width="150px">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>NO</th>
                                <th>TITLE</th>
                                <th>WRITER</th>
                                <th>HIT</th>
                                <th>DATE</th>
                            </tr>
                            </thead>
                            <tbody>
                                <!-- ngRepeat: b in board -->
                                <c:forEach items="${boardList}" var="iter">
                                    <tr ng-repeat="b in board" class="ng-scope">
                                        <td class="ng-binding">${iter.board_no }</td>
                                        <td style="text-align: left;"><a href="/board/${board_cd}/detail?board_no=${iter.board_no}" class="ng-binding">${iter.title }</a></td>
                                        <td class="ng-binding">${iter.reg_id }</td>
                                        <td class="ng-binding">${iter.like_cnt }</td>
                                        <td class="ng-binding">${iter.reg_dt }</td>
                                    </tr>
                                </c:forEach>
                            </tbody>

                            <%--<tfoot>
                            <tr>
                                <td colspan="5">
                                    <nav>
                                        <ul class="pagination">
                                            <li>
                                                <a href="#" aria-label="Previous">
                                                    <span aria-hidden="true">«</span>
                                                </a>
                                            </li>
                                            <li class="active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li>
                                                <a href="#" aria-label="Next">
                                                    <span aria-hidden="true">»</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </td>
                            </tr>
                            </tfoot>
                            --%>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <%--<div class="row">
        <div class="boardWriteBtn pull-right">
            <button type="button" id="boardPostBtn" class="btn btn-default">글쓰기</button>
        </div>

        <div class="boardList">

            <c:forEach items="${boardList}" var="iter">
                <div class="">
                    <h2>${iter.title }</h2>
                    <p>${iter.content }</p>
                    <p>
                        <a class="btn btn-secondary" href="/board/${board_cd}/detail?board_no=${iter.board_no}"
                           role="button">more »</a>
                    </p>
                </div>
            </c:forEach>

        </div>

    </div>--%>
    <hr>
</div>
<!--/Center Column-->

<script type="text/javascript">
    $(document).ready(function () {
        $("#boardPostBtn").click(function () {
            location.href = "/board/${board_cd}/boardPostForm";
        });
    });
</script>

