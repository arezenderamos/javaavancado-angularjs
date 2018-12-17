<!DOCTYPE html>
<html ng-app>
<head>
<meta charset="UTF-8">
<title>Introdução AngulasJS</title>
</head>
<body>
	<div>
      <label>Nome:</label>
      <input type="text" ng-model="nome" placeholder="Seu nome">
      <hr>
      <h1>Hello {{nome}}!</h1>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.5/angular.min.js"></script>
</body>
</html>