<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Muambatrom -- Comprar barato é nosso lema</title>
<link  rel='stylesheet' href='../bootstrap/bootstrap-theme.min.css'></link>
<link  rel='stylesheet' href='../bootstrap/bootstrap.min.css'></link>
<link  rel='stylesheet' href='../css/site.css'></link>
<script type='text/javascript' src='../js/site.js' ></script>
<script type='text/javascript' src='../js/jquery-2.2.3.min.js' ></script>
</head>
<body id='bodyMain' >
	<div id='faixaMain'>
		<div id='containerMainLogo'>
			<img src='../media/image/logo.png' class='width10' />
			<span class='name'>
				Muambatrom
			</span>
		</div>
		<div id='caixaBusca'>
			<input id='enhancedText' type='text' class='form-control'>
		</div>
		<div id='resultado'>
		</div>
	</div>
	<footer>
		<div id='rodape'>
			<span>Versão Beta</span>
			<span>Desenvolvido por: Jhonatan S. Souza 2016 - todos os direitos reservados</span>
		</div>
	</footer>
</body>
<script type='text/javascript'>
	jQuery('#enhancedText').change(function(event){
		jQuery.get('../Busca',{key : jQuery(this).val()},function(data){
			console.log(data);
		});
	});
</script>
</html>