<!DOCTYPE html>
<html ng-app="angularApp">
<head>
	<meta charset="UTF-8">
	<title>Rotas</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Allianz</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li><a href="#/">Home</a></li>
					<li><a href="#/users/allianz">Sobre</a></li>
					<li><a href="#/contato">Contato</a></li>
				</ul>
			</div>
		</div>	
	</nav>
	<div class="container">
		<ng-view></ng-view>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular-route.min.js"></script>
	<script type="text/javascript">
		var app = angular.module('angularApp',['ngRoute']);
		
		//Definindo rotas
		app.config(function($routeProvider){
			$routeProvider
				.when('/',{templateUrl:"views/home.jsp"})
				.when('/users/:id',{controller: "UserController",templateUrl: "views/sobre.jsp"})
				.when('/contato',{controller: "ContactController",templateUrl: "views/contato.jsp"})
				.otherwise({redirectTo: '/'});
		});
		
		app.controller("UserController", function($scope, $routeParams){
			//atribuindo o param. requisição ao scopo da view
			$scope.nome = $routeParams.id;
		});
		
		app.controller("ContactController", function($http){
			var self = this;	
			self.contatos = [];
			
			var listaTodos = function(){
				$http.get("http://www.emiliocelso.com.br/api/android")
				.then(function(response){
					self.contatos = response.data;
				}, function(error){
					alert("Erro: " + error);
				});
			};
			
			listaTodos();			
			self.novoContato = {};
			
			self.adicionar = function(){
				$http.post("http://www.emiliocelso.com.br/api/android", self.novoContato)
				.then(listaTodos)
				.then(function(response){
					self.novoContato = {};
				});
			};
			
		});
	</script>
</body>
</html>