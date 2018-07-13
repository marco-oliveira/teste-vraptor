<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulário de Produto</title>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../base.css">
</head>
<body class="container">
	  <h1>Adicionar Produto</h1>

    <form action="<c:url value='/produto/adiciona'/>" method="post">
    Nome:
    <input type="text" name="produto.nome" value="${produto.nome}" class="form-control"/>
    Valor:
        <input type="text" name="produto.valor" value="${produto.valor}" class="form-control"/>
    Quantidade:
    <input type="text" name="produto.quantidade" value="${produto.quantidade}" class="form-control"/>
    <button type="submit" class="btn btn-primary">Adicionar</button>
    </form>
  </body>
</body>
</html>