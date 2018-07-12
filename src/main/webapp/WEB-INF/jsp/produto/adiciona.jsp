<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Produto adicionado</title>
</head>
<body>
	<h1>Produto adicionado com sucesso!</h1>
	<a href="<c:url value='/produto/lista'/>">
	    Voltar para a listagem
	</a>
</body>
</html>