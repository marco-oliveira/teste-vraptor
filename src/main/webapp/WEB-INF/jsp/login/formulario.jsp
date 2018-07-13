<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
<title>Formulário de Login</title>
</head>
<body>
	<div class="container">
		<form action="<c:url value='autentica'/>" method="post">
			 <c:if test="${not empty errors}">
		        <div class="alert alert-danger">
		            <c:forEach var="error" items="${errors}">
		                ${error.category} - ${error.message}<br />
		            </c:forEach>
		        </div>
		    </c:if>
			<h2 class="form-signin-heading">Faça Login para acessar Vraptor-Produtos</h2>
			<input type="text" placeholder="nome" name="login.nome" class="form-control"/>
			<input type="password" placeholder="senha" name="login.senha" class="form-control"/>
			<button type="submit" class="btn btn-primary btn-block">Login</button>
			
		</form>
	</div>

</body>
</html>