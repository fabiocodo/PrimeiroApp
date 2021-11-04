<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<head><title>Página Cadastro</title></head>
<body>
<form action="/PrimeiroApp/CategoriaGravar" method="post">
	Nome: <input type="text" name="nome" id="nome" 
	value="<c:out value = "${categoria.nome}"/>"  />
<br />
	Codigo: <input type="text" name="codigo" value="<c:out value = "${categoria.codigo}"/>"  id="codigo" />
	<input type="submit" value="Enviar"/>
	<a href="/PrimeiroApp/CategoriaListar">Voltar</a>
</form>
</body>
</html>