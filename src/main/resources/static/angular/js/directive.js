

angular.module('todo').directive('todoTitle', function(){
  return {
    template : '<h1>Angular</h1>'
  }
});

angular.module('todo').directive('todoItem', function(){
  return {
    templateUrl : "/angular/todoItem.tpl"
  }
});

angular.module('todo').directive('todoFilters', function(){
  return {
    templateUrl : "/angular/todoFilters.tpl"
  }
});

angular.module('todo').directive('todoForm', function(){
  return {
    templateUrl : "/angular/todoForm.tpl"
  }
});