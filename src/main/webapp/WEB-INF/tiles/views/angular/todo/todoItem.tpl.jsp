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