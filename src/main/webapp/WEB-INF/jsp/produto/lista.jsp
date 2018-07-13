<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista todos</title>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
</head>
<body>
	<c:if test="${not empty mensagem}">
	    <div class="alert alert-success">${mensagem}</div>
	</c:if>
	<h1>Listagem de Produtos</h1>
	
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Valor</th>
				<th>Quantidade</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="produto" items="${produtoList}">
			<tr>
				<td>${produto.nome}</td>
				<td>${produto.valor}</td>
				<td>${produto.quantidade}</td>
				<td>
				  <a href="<c:url value='/produto/remove?produto.id=${produto.id}'/>">Remover</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="<c:url value='/produto/formulario'/>">
	    Adicionar mais produtos!
	</a>
	
</body>
</html>