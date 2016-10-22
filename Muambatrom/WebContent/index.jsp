<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="http://simbyone.com/wp-content/uploads/2014/04/3455e6f65c33232a060c28829a49b1cb.png">
<title>Muambatrom</title>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<style>
#loading{
	background-color: black;
	height: 100%;
	width: 100%;
	position: fixed;
	z-index: 1;
	margin-top: 0px;
	top: 0px;
}
#loading-center{
	width: 100%;
	height: 100%;
	position: relative;
	}
#loading-center-absolute {
	position: absolute;
	left: 50%;
	top: 50%;
	height: 100px;
	width: 40px;
	margin-top: -50px;
	margin-left: -20px;
}
.object{
	width: 40px;
	height: 8px;
	margin-bottom:20px;
	background-color: #FFF;
	-webkit-animation: animate 0.8s infinite;
	animation: animate 0.8s infinite;
	}


#object_two { 
	-webkit-animation-delay: 0.2s; 
    animation-delay: 0.2s;

	}
#object_three {	
	-webkit-animation-delay: 0.4s; 
    animation-delay: 0.4s; 
	}





@-webkit-keyframes animate {
 
  50% {
	-ms-transform: scale(1.5); 
   	-webkit-transform: scale(1.5);   
    transform: scale(1.5);  
	  }
	  


}

@keyframes animate {
  50% {
	-ms-transform: scale(1.5); 
   	-webkit-transform: scale(1.5);   
    transform: scale(1.5);  
	  }

  
}

body{

background : black;

}


</style>
</head>
<body>
<div id="loading">
<div id="loading-center">
<div id="loading-center-absolute">
<div class="object" id="object_one"></div>
<div class="object" id="object_two"></div>
<div class="object" id="object_three"></div>


</div>
</div>
 
</div>


<div id="header">
<div id="header-left">

</div>

<div id="header-right">
</div>
</div>

<div id="wrapper">
<div id="wrapper-center">
</div>
<div class="wrapper-center-title">Muambatrom..</div>
<div class="wrapper-center-content">
</div>
</div>
</body>
</html>
<script type='text/javascript'>

	setTimeout(function(event){
		window.location.href = 'start.jsp';
	}, 3000);

</script>
