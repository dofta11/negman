
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Right Column -->
 <div class="col-sm-3" ng-app="RnbApp">

	<!-- Form --> 
	<%--<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">
				<span class="glyphicon glyphicon-log-in"></span> 
				Log In
			</h3>
		</div>
		<div class="panel-body">
			<form>
				<div class="form-group">
					<input type="text" class="form-control" id="uid" name="uid" placeholder="Username">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
				</div>
				<button type="submit" class="btn btn-default">Sign In</button>
				<button type="button" id="signUpBtn" class="btn btn-primary">Sign Up</button>
			</form>
		</div>
	</div>--%>

	<!-- Progress Bars -->
	<%--<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">
				<span class="glyphicon glyphicon-scale"></span> 
				Dramatically Engage
			</h3>
		</div>
		<div class="panel-body">
			<div class="progress">
				<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100"
				aria-valuemin="0" aria-valuemax="100" style="width:100%">
					100% Proactively Envisioned
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80"
				aria-valuemin="0" aria-valuemax="100" style="width:80%">
					80% Objectively Innovated
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="45"
				aria-valuemin="0" aria-valuemax="100" style="width:45%">
					45% Portalled
				</div>
			</div>
			<div class="progress">
				<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="35"
				aria-valuemin="0" aria-valuemax="100" style="width:35%">
					35% Done
				</div>
			</div>
		</div>
	</div>--%>

	<!-- Carousel --> 
		<h3><span class="glyphicon glyphicon-modal-window"></span> Banner</h3>
		<div id="side-carousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#side-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#side-carousel" data-slide-to="1"></li>
				<li data-target="#side-carousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<a href="#">
						<img class="img-responsive" src="/image/banner/banner1.jpg" alt="">
					</a>
					<div class="carousel-caption">
						<h3></h3>
						<p>Developer.</p>
					</div>
				</div>
				<div class="item">
					<a href="#">
						<img class="img-responsive" src="/image/banner/banner2.jpg" alt="">
					</a>
					<div class="carousel-caption">
						<h3></h3>
						<p>Soong.</p>
					</div>
				</div>
				<div class="item">
					<a href="#">
						<img class="img-responsive" src="/image/banner/banner3.jpg" alt="">
					</a>
					<div class="carousel-caption">
						<h3></h3>
						<p>Story.</p>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#side-carousel" role="button" data-slide="prev">
			  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			  <span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#side-carousel" role="button" data-slide="next">
			  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			  <span class="sr-only">Next</span>
			</a>
	  </div>

	 <%--<div ng-controller="RnbCtrl">
		 &lt;%&ndash;{{ boardList | json }}&ndash;%&gt;
		 <ul ng-repeat="board in boardList">
			 <li>{{board.title}}</li>
		 </ul>
	 </div>--%>

 </div><!--/Right Column -->
<script>
	/*$.ajax({
		url  : '/angular/board/BDTY001/list',
		type : 'GET',
		dataType: "JSON",
		data : null,
		success: function(data){
			alert(data);
		},
		error : function(){

		}
	});*/

	//View Preparers 설정 해야 하는듯하다

	//Body를 제외하고는 모두 tiles xml설정으로 뷰를 렌더링하기때문에...

	//Module init
	/*var app = angular.module("RnbApp", []);
	//Controller
	app.controller("RnbCtrl", function($scope, $http){
		$http.get("/angular/board/BDTY001/list").then(function(response){
			$scope.boardList = response.data;
		});
	});*/
</script>