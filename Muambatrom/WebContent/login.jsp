<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<%@ include file='jsp/head.jsp' %>
		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<script src="js/jquery-2.2.3.min.js" type="text/javascript"></script>
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		<link href='css/login.css' type='text/css' rel='stylesheet'></link>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
  		<link rel="stylesheet" href="/resources/demos/style.css">
  		<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
		<title>Admin</title>
	</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="brand" style='color : white!important;' >Hora do show!</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" id='formCad' method="post" action="#">
						
<!-- 						<div class="form-group"> -->
<!-- 							<label for="name" class="cols-sm-2 control-label">Nome:</label> -->
<!-- 							<div class="cols-sm-10"> -->
<!-- 								<div class="input-group"> -->
<!-- 									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span> -->
<!-- 									<input type="text" class="form-control" name="name" id="name"  placeholder="Digite seu nome"/> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Email:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input required type="text" class="form-control" name="email" id="email"  placeholder="Digite seu Email"/>
								</div>
							</div>
						</div>

<!-- 						<div class="form-group"> -->
<!-- 							<label for="username" class="cols-sm-2 control-label">Usuário:</label> -->
<!-- 							<div class="cols-sm-10"> -->
<!-- 								<div class="input-group"> -->
<!-- 									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span> -->
<!-- 									<input type="text" class="form-control" name="username" id="username"  placeholder="Digite seu usuário"/> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Senha:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input required type="password" class="form-control" name="password" id="password"  placeholder="Digite sua senha"/>
								</div>
							</div>
						</div>

<!-- 						<div class="form-group"> -->
<!-- 							<label for="confirm" class="cols-sm-2 control-label">Confirme sua senha:</label> -->
<!-- 							<div class="cols-sm-10"> -->
<!-- 								<div class="input-group"> -->
<!-- 									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span> -->
<!-- 									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirme sua senha"/> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->

						<div class="form-group ">
							<button id='logar' type="button" class="btn btn-primary btn-lg btn-block login-button">Logar</button>
							<i>
								<span id='msg' style='color : red'></span>
							</i>
						</div>
						<div class="login-register">
				            <a id='show' href="#">Não sou cadastrado</a>
				         </div>
					</form>
				</div>
			</div>
		</div>
<div id="dialog" style='display : none' title="Opa!!!">
	<p>A fase de novos usuários foi encerrada em: <b>07/08/2016</b>.</p>
	<span>A nova fase se incia em: <b>03/04/2017</b>.</span>
	</div>
		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
		<script type='text/javascript'>
			
		jQuery('#logar').click(function(event){
			if(jQuery('#email').val() != '' && jQuery('#password').val() != ''){
				
				jQuery.ajax({
					url : 'Busca',
					data : jQuery('#formcad').serialize(),
					method : 'POST',
					success: function(data){
// 					alert(data);
						jQuery('#msg').text(data);
					}
				});
			}else{
				jQuery('#msg').text('Preencha os dados!');
			}
				
				
				
			});
		
		jQuery('#show').click(function(event){
			$( "#dialog" ).dialog();
		});
		
		</script>
	</body>
</html>