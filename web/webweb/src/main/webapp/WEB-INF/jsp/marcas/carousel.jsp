<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project ${mensagem} }</title>
<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="resources/js/jssor.js"></script>
<script type="text/javascript" src="resources/js/jssor.slider.js"></script>
<script>
	
</script>
</head>
<body style="font-family: Arial, Verdana; background-color: #fff;">
	<!-- 	<h1>Marcas Séries 1</h1> -->
	<%-- 	<c:import url="marcas_1.jsp" /> --%>
	<!-- 	<h1>Marcas Séries 2</h1> -->
	<%-- 	<c:import url="marcas_2.jsp" /> --%>
	<!-- 	<h1>Marcas Séries 3</h1> -->
	<%-- 	<c:import url="marcas_3.jsp" /> --%>
	<br />
	<br />
	<h1>Carousel</h1>
	<div id="slider1_container"
		style="position: relative; top: 0px; left: 0px; width: 600px; height: 55px;background-color: black;overflow:hidden;">

		<!-- Slides Container -->
		<div u="slides"
			style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px; height: 55px; overflow: hidden;padding-left:60px;">
			<div>
				<c:import url="marcas_1.jsp" />
			</div>
		</div>

		<!-- Arrow Navigator Skin Begin -->
		<style>
/* jssor slider arrow navigator skin 03 css */
/*
            .jssora03l              (normal)
            .jssora03r              (normal)
            .jssora03l:hover        (normal mouseover)
            .jssora03r:hover        (normal mouseover)
            .jssora03ldn            (mousedown)
            .jssora03rdn            (mousedown)
            */
.jssora03l, .jssora03r, .jssora03ldn, .jssora03rdn {
	position: absolute;
	cursor: pointer;
	display: block;
	background: url(resources/img/a17.png) no-repeat;
	overflow: hidden;
}

.jssora03l {
	background-position: -10px -40px;
}

.jssora03r {
	background-position: -70px -40px;
}

.jssora03l:hover {
	background-position: -130px -40px;
}

.jssora03r:hover {
	background-position: -190px -40px;
}

.jssora03ldn {
	background-position: -250px -40px;
}

.jssora03rdn {
	background-position: -310px -40px;
}
</style>
		<!-- Arrow Left -->
		<span u="arrowleft" class="jssora03l"
			style="width: 55px; height: 55px; top: 8px; left: 8px;"> </span>
		<!-- Arrow Right -->
		<span u="arrowright" class="jssora03r"
			style="width: 55px; height: 55px; top: 8px; right: 8px"> </span>
	</div>
	<!-- Jssor Slider End -->
</body>
</html>