<!-- Center Column -->
<div class="col-sm-6">

    <!-- Alert -->
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>Angular</strong> Todo List!
    </div>

    <div class="row" ng-app="TodoApp" ng-controller='TodoCtrl'>
        <!--<h1>Angular</h1>-->
        <todo-title></todo-title>
        <todo-form></todo-form>

        <pre>{{todoForm | json}}</pre>

        <ul class='list-unstyled'>
            <li ng-repeat="todo in todos | filter : statusFilter">

                <div class="col-lg-6">
                    <todo-item></todo-item>
                </div><!-- /.col-lg-6 -->

            </li>
        </ul>
        <todo-filters></todo-filters>
    </div>
</div>

<script>

    //Module init
    var todoApp = angular.module('TodoApp', []);

    //Controller
    todoApp.controller('TodoCtrl', function($scope, todoStorage){

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

    //Directive
    todoApp.directive('todoTitle', function(){
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

    // 3 function
    //service
    //factory
    //provider


</script>
