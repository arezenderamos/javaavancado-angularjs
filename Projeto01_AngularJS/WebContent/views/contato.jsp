<div>
	<h2>Entre em contato com um de nossos colaboradores:</h2>
	
	<div ng-controller="ContactController as cc">
		
		<h3>Novo Contato</h3>
		<div class="row">
			<div class="col-md-7">
				<div class="form-horizontal">
					<form name="incluirForm" ng-submit="cc.adicionar()">
						<div class="form-group">
							<label class="control-label col-md-2">Nome:</label>
							<div class="col-md-10">
								<input type="text" class="form-control" ng-model="cc.novoContato.Nome"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-2">Telefone:</label>
							<div class="col-md-10">
								<input type="text" class="form-control" ng-model="cc.novoContato.Telefone"/>
							</div>
						</div>	
						<div class="form-group">
							<label class="control-label col-md-2">Data Nascimento:</label>
							<div class="col-md-10">
								<input type="date" class="form-control" ng-model="cc.novoContato.DataNascimento"/>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-md-offset-2 col-md-10">
								<input type="submit" value="Adicionar" class="btn btn-info" />
							</div>
						</div>											
					</form>
				</div>
			</div>
		</div>
		
		<hr/>
		<h3>Lista de Contatos</h3>		
		<table class="table table-hover">
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Telefone</th>
			</tr>
			<tbody ng-repeat="contato in cc.contatos">
				<tr>
					<td>{{contato.Id}}</td>
					<td>{{contato.Nome}}</td>
					<td>{{contato.Telefone}}</td>
				</tr>			
			</tbody>
		</table>
	</div>
</div>