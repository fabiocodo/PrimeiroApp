<%@page import="java.util.ArrayList"%>
<%@page import="VO.Produto"%>
<%@page import="DAO.ProdutoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>                       
<head> <meta charset="ISO-8859-1">

<title>Lista Produto</title>  
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/jquery.mask.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/validator.js"></script>
    
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/jquery.mask.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/validator.js"></script>                          
</head>
<body>
<div style=" width: 100%; justify-content: left;
      display: flex;
      align-items: left;
      justify-content: center;">
      
<form action="/PrimeiroApp/ListaCadastro"
style="width: 530px;
      min-width: 530px;border:solid 3px; border-color: rgba(23,162,184,1);
      padding:15px;border-radius: 10px;"
 method="post">
 
	<h1>Pesquisar Produtos</h1>
	<div class="form-group row" >
		    <div class="col-sm-2">
		    <span>Nome:</span> 
		    </div>
		     <div class="col-sm-6">
					<input type="text" name="nome" class="form-control" placeholder="Produto a Ser Pesquisado" id="nome" />
			</div>
			<div class="col-sm-4">
				<input type="submit" value="Pesquisar" class="btn btn-xs btn btn-info btn-sm" />
			</div>
	</div>
	<div class="form-group row" >
		    <div class="col-sm-12" style="text-align:right;" >
				<a href="/PrimeiroApp/Produto/New.jsp"  class="btn btn-xs btn btn-success btn-sm" >Novo Produto</a>
			</div>
	</div>

</form>
</div>
<br>

<div style=" width: 100%; justify-content: center;
      display: center;
      align-items: center;
      justify-content: center;">
	<c:if test="${msg != null}"  >    
		<div class="form-group row" style="width:300px;">
		    <div class="col-sm-12" style="text-align:right;" >
				<span class="alert alert-danger" role="alert"><c:out value = "${msg}"/></span>	
			</div>
		</div>
	</c:if>
</div>


<h1>Produtos</h1>
		 <table class="table table-striped table-bordered table-hover">
		  	<tr>
			    <th>Codigo</th>
			    <th>Nome</th>
			    <th></th>
		  	</tr>
		  	<c:forEach var="item" items="${lista}" varStatus="contador" >
		  		<tr>
				    <td><c:out value = "${item.codigo}"/></td>
				    <td><c:out value = "${item.nome}"/></td>	
				    <td>
				    <c:url value="EditarCadastro" var="lnkEdicao">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>
					
					<c:url value="DeletarCadastro" var="lnkDelete">
				    	<c:param name="codigo" value="${item.codigo}" />
					</c:url>
					
					<a href="<c:out value = "${lnkEdicao}" />" class="btn btn-xs btn btn-warning btn-sm">Editar</a>
				    <a href="<c:out value = "${lnkDelete}" />" class="btn btn-xs btn btn-danger btn-sm" >Deletar</a>
				    </td>				  
				</tr> 	
				
		  	</c:forEach>
		</table>
</body>
</html>