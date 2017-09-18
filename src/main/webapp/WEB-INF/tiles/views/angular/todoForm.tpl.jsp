<form name="todoForm" ng-submit="add(newTodoTitle)">
  <div class="input-group">
    <input type="text" class="form-control" ng-model="newTodoTitle" placeholder="New Todo!" minlength="3">
    <span class="input-group-btn">
      <button class="btn btn-success" type='submit'>Add</button>
    </span>
  </div>
  
  <div ng-show="todoForm.$dirty && todoForm.$invalid">
    <div class="alert alert-warning" role="alert">3글자 이상 입력하세요..</div>
  </div>
</form>