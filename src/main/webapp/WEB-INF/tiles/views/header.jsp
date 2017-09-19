<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Portal 1</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/custom.css" rel="stylesheet">
    <link rel="stylesheet" href="/angular/css/style.css" />

    <!-- jQuery -->
    <script src="/js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/js/bootstrap.min.js"></script>

    <!-- IE10 viewport bug workaround -->
    <script src="/js/ie10-viewport-bug-workaround.js"></script>

    <!-- Placeholder Images -->
    <script src="/js/holder.min.js"></script>

    <!-- web jar -->
    <script src="/webjars/jquery-validation/1.14.0/jquery.validate.min.js"></script>

    <%--<link data-require="bootstrap@3.3.6" data-semver="3.3.6" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />--%>
    <%--<script data-require="bootstrap@3.3.6" data-semver="3.3.6" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>

    <!-- Angular -->
    <script data-require="angularjs@1.5.7" data-semver="1.5.7" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
    <script data-require="angularjs@1.5.7" data-semver="1.5.7" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-mocks.js"></script>
    <script data-require="angularjs@1.5.7" data-semver="1.5.7" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-resource.js"></script>
    <script data-require="angularjs@1.5.7" data-semver="1.5.7" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-route.js"></script>



</head>

<body> 

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container">
            <!-- Logo and responsive toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-globe"></span> SOONGTORY</a>
            </div>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="/main">Home</a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">LAB <span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="about-us">
                            <li><a href="/board/BDTY001/list">Basic Board</a></li>
                            <li><a href="/angular/BDTY002/list">Angular Board</a></li>
                            <li><a href="#">React Board</a></li>
                            <li><a href="#">Couchbase</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Angular Study<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="about-us">
                            <li><a href="/angular/todo/list">Angular Todo List</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="#">FAVORITE</a>
                    </li>

                    <li>
                        <a href="#" >Contact</a>
                    </li>
                    <li>
                        <a href="#" >Access Log</a>
                    </li>
                </ul>

				<!-- Search -->
				<%--<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="text" class="form-control">
					</div>
					<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> Search</button>
				</form>--%>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
  <div class="container-fluid">