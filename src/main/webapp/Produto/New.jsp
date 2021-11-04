<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<head><title>Cadastro Produto</title></head>

 	<link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/jquery.mask.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/validator.js"></script>

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/jquery.mask.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/validator.js"></script>
</head>

<body>
<div style=" width: 100%; justify-content: center;
      display: flex;
      align-items: center;
      justify-content: center;">
      
	<form action="/PrimeiroApp/Cadastro" method="post" style="width: 530px;
      min-width: 530px;border:solid 3px; border-color: rgba(23,162,184,1);
      padding:15px;border-radius: 10px;" 
      id="formCadastro"  data-toggle="validator" role="form" >
      
		<div class="form-group row" >
		    <div class="col-sm-12">
		    	<H1>Cadastro de Produtos</H1>
			</div>
		</div>    
		<div class="form-group row" >
		    <div class="col-sm-2">
				<span>Nome</span> 
			</div>
			<div class="col-sm-10">
				<input type="text" name="nome" id="nome"  class="form-control"
				 placeholder="Entre com o Nome"				 
				 required   data-error="Nome Obrigatório"				
				  value="<c:out value = "${produto.nome}"/>"  />
				  <div class="help-block with-errors" style="color:red;"></div>
			</div>
		</div>
		<div class="form-group row" >
		    <div class="col-sm-2">
		    <span>Marca</span> 
		    </div>
		     <div class="col-sm-10">
		    <input type="text" name="marca" id="marca"  type="text" 
		     required
		     data-error="Marca Obrigatória"
		      class="form-control" placeholder="Entre com a marca" value="<c:out value = "${produto.marca}"/>" />
			  <div class="help-block with-errors" style="color:red;" ></div>
			 </div>
			
		</div>
		<div class="form-group row" >
		    <div class="col-sm-2">
		    <span>Codigo:</span> 
		    </div>
		     <div class="col-sm-10">
			<input type="text" name="codigo"  class="form-control" placeholder="Entre com o Codigo" value="<c:out value = "${produto.codigo}"/>"  id="codigo" />
			 </div>
		</div>	
		<div class="form-group row" >
    <div class="col-sm-12">
    	<input type="submit" value="Gravar" class="btn btn-xs btn btn-success btn-sm"  />
		<a href="/PrimeiroApp/ListaCadastro" class="btn btn-xs btn btn-info btn-sm">Voltar</a>
	</div>
</div>
	</form>

</div>
<script>
$('#formCadastro').validator();
//$('#codigo').mask("###.##0,00", {reverse: true});
//$('#codigo').mask("###", {reverse: true});
$("#marca").mask("(00) 00000-0000");

</script>
</body>
</html>