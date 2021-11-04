<%@page import="java.util.ArrayList"%>
<%@page import="VO.Categoria"%>
<%@page import="DAO.CategoriaDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>                       
<head> <meta charset="ISO-8859-1">
<title>Lista Categoria</title>                            
</head>
<body>
<form action="/PrimeiroApp/CategoriaListar" method="post">
	<h1>Pesquisar Categorias</h1>
	 Nome: <input type="text" name="nome" id="nome" />
	<input type="submit" value="Pesquisar"/><br>
	<a href="/PrimeiroApp/Categoria/New.jsp">Novo Categoria</a>
</form>
<c:out value = "${msg}"/>
<h1>Categorias</h1>
		 <table class="table">
		  	<tr>
			    <th>Codigo</th>
			    <th>Nome</th>
			   
		  	</tr>
		  	<c:forEach var="item" items="${lista}" varStatus="contador" >
		  		<tr>
				    <td><c:out value = "${item.codigo}"/></td>
				    <td><c:out value = "${item.nome}"/></td>	
				    <td>
				    <c:url value="CategoriaEditar" var="lnkEdicao">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>
					
					<c:url value="CategoriaDeletar" var="lnkDelete">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>
					
					<a href="<c:out value = "${lnkEdicao}"/>">Editar</a>
				    <a href="<c:out value = "${lnkDelete}"/>">Deletar</a>
				    </td>				  
				</tr> 	
				
		  	</c:forEach>
		</table>
</body>
</html>