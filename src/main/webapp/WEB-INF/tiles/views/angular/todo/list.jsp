<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Center Column -->
<div class="col-sm-6">

    <!-- Alert -->
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>Angular</strong> Todo List!
    </div>

    <div class="" ng-app="TodoApp" ng-controller='TodoCtrl'>
        <!--<h1>Angular</h1>-->
        <h1>Angular Todo List</h1>

        <table>
            <tr ng-repeat="board in boardList">
                <td>
                    {{board.title}}
                </td>
            </tr>
        </table>

        <form name="todoForm" ng-submit="add(newTodoTitle)">
            <div class="input-group">
                <input type="text" class="form-control" ng-model="newTodoTitle" placeholder="New Todo!" minlength="3">
                <span class="input-group-btn">
                  <button class="btn btn-success" type='submit'>Add</button>
                </span>
            </div>

            <div ng-show="todoForm.$dirty && todoForm.$invalid">
                <div class="alert alert-warning" role="alert">3글자 이상 입력하세요.</div>
            </div>
        </form>

        <%--<pre>{{boardList | json}}</pre>--%>

        <!-- Single button -->
        <div class="btn-group navbar-left">
            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Action <span class="caret"></span>
            </button>
            <ul class="dropdown-menu dropdown-menu-right">
                <li><a href="#" ng-click="statusFilter={completed:true}">True</a></li>
                <li><a href="#" ng-click="statusFilter={completed:false}">False</a></li>
                <li><a href="#" ng-click="statusFilter={}">All</a></li>
            </ul>
        </div>

        <br><br>

        <ul class='list-unstyled'>
            <li ng-repeat="todo in todos | filter : statusFilter">

                <div class="">
                    <div class="input-group">
                      <span class="input-group-addon">
                         <input type="checkbox" ng-model="todo.completed" ng-click="update()">
                       </span>
                                            <input type="text" class="form-control" ng-model="todo.title" ng-blur="update()">
                       <span class="input-group-btn">
                         <button class="btn btn-danger" type="button" ng-click="remove(todo)">Delete</button>
                      </span>
                    </div>
                    <date>{{ todo.createdAt | date : 'yyyy-MM-dd HH:mm:ss' }}</date>
                </div><!-- /.col-lg-6 -->

            </li>
        </ul>
    </div>
</div>

<script>

    //Module init
    var todoApp = angular.module('TodoApp', []);

    //Controller
    todoApp.controller('TodoCtrl', function($scope, $http, todoStorage){

        $http.get("/angular/board/BDTY001/list").then(function(response){
//            console.log(response);
            $scope.boardList = response.data;
        });

        //data load
        $scope.todos = todoStorage.get();

        $scope.remove = function(todo){
            todoStorage.remove(todo);
        };

        $scope.add = function(newTodoTitle){
            todoStorage.add(newTodoTitle);
            $scope.newTodoTitle = "";
        }

        $scope.update = function(){
            todoStorage.update();
        }

    });

    //Service
    todoApp.factory('todoStorage', function(){
        var TODO_DATA = 'TODO_DATA';
        var storage = {

            todos : [],

            _saveToLocalStorage : function(data){
                localStorage.setItem(TODO_DATA, JSON.stringify(data));
            },

            _getFromLocalStorage: function(){
                return JSON.parse(localStorage.getItem(TODO_DATA)) || [];
            },

            get : function(){
                angular.copy(storage._getFromLocalStorage(), storage.todos);
                return storage.todos;
            },

            remove : function(todo){
                var idx = storage.todos.findIndex(function(item){
                    return todo.title == item.title;
                });

                if(idx > -1){
                    storage.todos.splice(idx, 1);

                    storage._saveToLocalStorage(storage.todos);

                }
            },

            add : function(newTodoTitle){

                storage.todos.push({
                    title : newTodoTitle,
                    completed : false,
                    createdAt : Date.now()
                });

                storage._saveToLocalStorage(storage.todos);

            },

            update : function(){
                storage._saveToLocalStorage(storage.todos);
            }

        };

        return storage;
    });

    //Directive
    /*todoApp.directive('todoTitle', function(){
        return {
            template : '<h1>Angular</h1>'
        }
    });

    todoApp.directive('todoItem', function(){
        return {
            templateUrl : "/angular/todoItem.tpl"
        }
    });

    todoApp.directive('todoFilters', function(){
        return {
            templateUrl : "/angular/todoFilters.tpl"
        }
    });

    todoApp.directive('todoForm', function(){
        return {
            templateUrl : "/angular/todoForm.tpl"
        }
    });*/



    // 3 function
    //service
    //factory
    //provider


</script>
