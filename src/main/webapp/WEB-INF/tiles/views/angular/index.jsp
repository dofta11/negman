<!DOCTYPE html>
<html>

  <head>
    <link data-require="bootstrap@3.3.6" data-semver="3.3.6" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script data-require="bootstrap@3.3.6" data-semver="3.3.6" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script data-require="angularjs@1.5.7" data-semver="1.5.7" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
    <link rel="stylesheet" href="/angular/css/style.css" />
    <script src="/angular/js/app.js"></script>
    <script src="/angular/js/controller.js"></script>
    <script src="/angular/js/directive.js"></script>
    <script src="/angular/js/services.js"></script>
  </head>

  <body ng-app="todo" ng-controller='TodoCtrl'>
    
    <div class="container">
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
  </body>

</html>
