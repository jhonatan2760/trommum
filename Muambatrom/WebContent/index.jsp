<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
	<link rel="icon" type="image/png" href="img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Muambatrom</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/material-kit.css" rel="stylesheet"/>
	<style>
		body > nav > div > nav {
			background-color : black!important;
		}
	</style>
</head>

<body class="signup-page">
	<nav  class="navbar navbar-transparent navbar-absolute" >
    	<div class="container">
        	<!-- Brand and toggle get grouped for better mobile display -->
        	<nav class="navbar navbar-fixed-top navbar-color-on-scroll">
	<div class="container">
        <div class="navbar-header" >
	    	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-index">
	        	<span class="sr-only">Toggle navigation</span>
	        	<span class="icon-bar"></span>
	        	<span class="icon-bar"></span>
	        	<span class="icon-bar"></span>
	    	</button>
	    	<a href="http://www.creative-tim.com">
	        	<div class="logo-container">
	                <div class="logo">
	                    <img style='width : 49%;' src="media/image/logo_med.png" alt="Comprar barato é o nosso lema" rel="tooltip" title="" data-placement="bottom" data-html="true" data-original-title="<b>Muambatrom</b>">
	                </div>
	                <div class="brand" style='color : white'>
	                    Muambatrom
	                </div>
				</div>
	      	</a>
	    </div>
</div>
</nav>
	    <div class="collapse navbar-collapse" id="navigation-index">
	    	<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="components-documentation.html" class="btn" target="_blank">
						<i class="material-icons">dashboard</i> Components
					</a>
				</li>
				<li>
					<a href="http://www.creative-tim.com/product/material-kit" target="_blank" class="btn">
						<i class="material-icons">cloud_download</i> Download Desktop Client
					</a>
				</li>
				<li>
					<a rel="tooltip" title="" data-placement="bottom" href="#" target="_blank" class="btn btn-simple" data-original-title="Follow us on Twitter">
						<i class="fa fa-twitter"></i>
					</a>
				</li>
				<li>
					<a rel="tooltip" title="" data-placement="bottom" href="https://www.facebook.com/muambatrom/" target="_blank" class="btn btn-simple" data-original-title="Like us on Facebook">
						<i class="fa fa-facebook-square"></i>
					</a>
				</li>
				<li>
					<a rel="tooltip" title="" data-placement="bottom" href="#" target="_blank" class="btn btn-simple" data-original-title="Follow us on Instagram">
						<i class="fa fa-instagram"></i>
					</a>
				</li>

	    	</ul>
	    </div>
	</div>
</nav>       
<div class="wrapper">
	<div class="header header-filter" style="transform: translate3d(0px, 66.6667px, 0px); background-image: url('https://images.unsplash.com/photo-1423655156442-ccc11daa4e99?crop=entropy&dpr=2&fit=crop&fm=jpg&h=750&ixjsv=2.1.0&ixlib=rb-0.3.5&q=50&w=1450');">
		<div class="container">
			<div class="main main-raised">
			<div>
			</div>
			<div class="section section-basic">
				<div class="col-sm-6">
					<div class="form-group">
						<input type="text" value="" placeholder="Pesquisar" class="form-control" />
						<button class="btn btn-raised btn-success">Pesquisar<div class="ripple-container"></div></button>
					</div>
				</div>
			</div>
		</div>	
		</div>
		<div class='container'>
			<div class="card card-nav-tabs" >
							<div class="header header-success" style='background : black'>
								<!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
								<div class="nav-tabs-navigation">
									<div class="nav-tabs-wrapper">
										<ul class="nav nav-tabs" data-tabs="tabs">
											<li class="active">
												<a href="#profile" data-toggle="tab">
													<i class="material-icons">search</i>
													Produtos Encontrados
												</a>
											</li>
											<li>
												<a href="#messages" data-toggle="tab">
													<i class="material-icons">chat</i>
													Dicas dos usuários que buscaram esse produto
												</a>
											</li>
											<li>
												<a href="#settings" data-toggle="tab">
													<i class="material-icons">build</i>
													Filtros de busca
												</a>

											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="content">
								<div class="tab-content text-center">
									<div class="tab-pane active" id="profile">
										<div class='wrapper'>
											<div class="col-sm-2 col-sm-offset-1">
												<h4>Mulher Loira Exemplo</h4>
													<img src="media/image/avatar.jpg" alt="Raised Image" class="img-rounded img-responsive img-raised">
											</div>
										</div>
									</div>
									<div class="tab-pane" id="messages">
										<p> Em construção</p>
									</div>
									<div class="tab-pane" id="settings">
										<p>Em construção</p>
									</div>
								</div>
							</div>
						</div>
		</div>
	</div> 
	
   </div>
   

</body>
	<!--   Core JS Files   -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/material.min.js"></script>

	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="js/nouislider.min.js" type="text/javascript"></script>

	<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
	<script src="js/bootstrap-datepicker.js" type="text/javascript"></script>

	<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
	<script src="js/material-kit.js" type="text/javascript"></script>

	<script type="text/javascript">
		$().ready(function(){
			// the body of this function is in material-kit.js
			materialKit.initSliders();
			$(window).on('scroll', materialKit.checkScrollForTransparentNavbar);

            window_width = $(window).width();

            if (window_width >= 768){
                big_image = $('.wrapper > .header');

				$(window).on('scroll', materialKitDemo.checkScrollForParallax);
			}

		});
	</script>




</html>
