
<%@page
	import="edu.usmp.fia.taller.common.bean.MallaCurricular.T_course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Malla Curricular Sistemas de Informaci�n</title>
<style type="text/css">
body {
	width: 150%;
}
</style>
<style type="text/css">
body {
	height: 100%;
}
</style>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<meta http-equiv="X-UA-Compatible" content="IE=7">
<link rel="stylesheet" href="MallaCurricular/jsPlumbDemo.css"></link>
<link rel="stylesheet" href="MallaCurricular/css/FlowchartDemo.css"></link>
<!--  -->
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.1/css/font-awesome.css"
	rel="stylesheet">
<!--    <link rel="stylesheet" href="../../css/jsplumb.css"> -->
<link rel="stylesheet" href="MallaCurricular/css/demo.css">
<!--  parte 1-->
<link rel="stylesheet" href="MallaCurricular/css/estilos.css">
<style type="text/css">
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/main.js"></script>

<!-- -------------------------------------------------- -->
<!-- parte 1 -->
<%@include file="/MallaCurricular/header.jsp"%>
</head>
<body onunload="jsPlumb.unload();">
	<div class="position">
		<!-- importante version de cursos flecha punteada y normal-->
		<!-- script -->
		<script type="text/javascript"
			src="http://explorercanvas.googlecode.com/svn/trunk/excanvas.js"></script>
		<script type="text/javascript"
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
		<script type="text/javascript"
			src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/jquery-ui.min.js"></script>
		<script type="text/javascript"
			src="MallaCurricular/jquery.jsPlumb-1.3.3-all.js"></script>
		<script type="text/javascript"
			src="MallaCurricular/jquery.jsPlumb.Flowchart.js"></script>

		<!--  -->
		<%@ page import="java.util.List"%>
		<%@ page import="java.util.*"%>
		<%@ page
			import="edu.usmp.fia.taller.common.bean.MallaCurricular.T_course"%>
		<%
			/*no esta implementado IS,SI,TI la llamada a la bd y en el for seria bueno q a�adiera */
			List<T_course> cursos = (List<T_course>) request.getAttribute("cursos");
		%>
		<%
			List<T_course> cursos2 = (List<T_course>) request.getAttribute("cursos2");
		%>
		<%
			List<T_course> cursos3 = (List<T_course>) request.getAttribute("cursos3");
		%>
		<%
			List<T_course> cursos4 = (List<T_course>) request.getAttribute("cursos4");
		%>
		<%
			List<T_course> cursos5 = (List<T_course>) request.getAttribute("cursos5");
		%>
		<%
			List<T_course> cursos6 = (List<T_course>) request.getAttribute("cursos6");
		%>
		<%
			List<T_course> cursos7 = (List<T_course>) request.getAttribute("cursos7");
		%>
		<%
			List<T_course> cursos8 = (List<T_course>) request.getAttribute("cursos8");
		%>
		<%
			List<T_course> cursos9 = (List<T_course>) request.getAttribute("cursos9");
		%>
		<%
			List<T_course> cursos10 = (List<T_course>) request.getAttribute("cursos10");
		%>
		<%
				List<T_course> cursos11 = (List<T_course>) request.getAttribute("cursos11");
			%>
		<div id="demo" style="background: white; overflow: hidden;">

			<div id="ciclo1"
				style="background: white; width: 5.9%; float: left; margin-right: 1%;">
				<tr>
					<h3>
						<br>Ciclo I</br>
					</h3>
				</tr>
				<%!int var=0;%>
				<%
 					for (T_course curso : cursos) {
 				%>
				<%
					var=var+1;
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>

				<%
					}
				%>
			</div>
			<!--ciclo2  -->
			<div id="ciclo2"
				style="background: white; width: 5.9%; float: left; margin-right: 1%;">
				<tr>
					<h3>
						<br>Ciclo II</br>
					</h3>
				</tr>
				<%
					for (T_course curso : cursos2) {
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- 	style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>

				<%
					}
				%>

			</div>

			<!--ciclo3  -->
			<div id="ciclo3"
				style="background: white; width: 5.9%; float: left; margin-right: 1%;">

				<tr>
					<h3>
						<br>Ciclo III</br>
					</h3>
				</tr>
				<%
					for (T_course curso : cursos3) {
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- 	style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>

				<%
					}
				%>
				<br> <br> <br> <br> <img
					src="<%=request.getContextPath()%>/MallaCurricular/imagenes/MALLA IS.PNG"></a>


			</div>

			<!--ciclo4  -->
			<div id="ciclo4"
				style="background: white; width: 5.9%; float: left; margin-right: 1%;">
				<tr>
					<h3>
						<br>Ciclo IV</br>
					</h3>
				</tr>
				<%
					for (T_course curso : cursos4) {
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- 	style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>

				<%
					}
				%>

			</div>

			<!--ciclo5  -->
			<div id="ciclo5"
				style="background: white; width: 5.9%; float: left; margin-right: 1%;">
				<tr>
					<h3>
						<br>Ciclo V</br>
					</h3>
				</tr>
				<%
					for (T_course curso : cursos5) {
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- 	style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>

				<%
					}
				%>

			</div>

			<!--ciclo6  -->
			<div id="ciclo6"
				style="background: white; width: 5.9%; float: left; margin-right: 1%;">
				<tr>
					<h3>
						<br>Ciclo VI</br>
					</h3>
				</tr>
				<%
					for (T_course curso : cursos6) {
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- 	style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>

				<%
					}
				%>

			</div>

			<!--ciclo7  -->
			<div id="ciclo7"
				style="background: white; width: 5.9%; float: left; margin-right: 1%;">

				<tr>
					<h3>
						<br>Ciclo VII</br>
					</h3>
				</tr>
				<%
					for (T_course curso : cursos7) {
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- 	style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>

				<%
					}
				%>

			</div>

			<!--ciclo8  -->
			<div id="ciclo8"
				style="background: white; width: 5.5%; float: left; margin-right: 1%;">
				<tr>
					<h3>
						<br>Ciclo VIII</br>
					</h3>
				</tr>
				<%
					for (T_course curso : cursos8) {
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- 	style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>

				<%
					}
				%>

			</div>

			<!--ciclo9  -->
			<div id="ciclo9"
				style="background: white; width: 5.5%; float: left; margin-right: 1%;">
				<tr>
					<h3>
						<br>Ciclo IX</br>
					</h3>
				</tr>
				<%
					for (T_course curso : cursos9) {
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- 	style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>
				<%
 					}
 				%>

			</div>

			<!--ciclo10  -->
			<div id="ciclo10"
				style="background: white; width: 5.5%; float: left; margin-right: 1%;">

				<tr>
					<h3>
						<br>Ciclo X</br>
					</h3>
				</tr>
				<%
					for (T_course curso : cursos10) {
				%>
				<div class="window<%=curso.getMencion()%>"
					id="<%=curso.getId()%>_estilo">
					<!-- 	style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>
				<%
					}
				%>
			</div>



			<!--Electivo IS -->
			<div id="IS"
				style="background: WHITE; width: 10%; float: left; margin-right: 1%;">
				<!--dividir2 width: 10%; float: left; margin-left: 0%;"> -->
				<tr>
					<h3>
						<br>Electivo IS</br>
					</h3>
				</tr>

				<%
								for (T_course curso : cursos11) {
							%>

				<div class="window<%=curso.getMencion()%>_M"
					id="<%=curso.getId()%>_estilo">
					<!-- style="border-color: green;"> -->
					<%=curso.getId()%>
					<br><%=curso.getName()%>

				</div>
				<br> <br> <br> <br>

				<%
					}
				%>
			</div>



			<%----%>
			<script>
			jsPlumb.bind("ready", function() {
				jsPlumb.setRenderMode(jsPlumb.SVG);

			//-------------------------------by chinoAdo{^^}----------------------------------------------------
				jsPlumb.Defaults.DragOptions = {
				//cursor : 'pointer',
					cursor : 'move',
					zIndex : 200
				};
				jsPlumb.Defaults.Connector = [ "Flowchart", {
					stub   : 4/*Aflecha4*/
				} ];
				/*ciclo1*/   
							
					var  sourceEndpoint  =  {  anchor : [  "RightMiddle" ],maxConnections : 5, 
							dropOptions : {tolerance : "touch",hoverClass : "dropHover"},
							//endpointStyle:{ fillStyle:"white", outlineColor:"white" },
							//connectorStyle :  {  lineWidth : 3 ,  strokeStyle : 'blue',outlineColor:"white",outlineWidth:3  }, 
							dropOptions : {tolerance : "touch",hoverClass : "dropHover"},
							isSource : false ,  endpoint : [  "Dot" ,  {  radius : 4//radius : 0.1
								}  ]  }; 
					var  targetEndpoint  =  { anchor : [  "LeftMiddle" ] ,maxConnections : 5,
						
							dropOptions : {tolerance : "touch",hoverClass : "dropHover"},
							isTarget : true,endpoint : [  "Rectangle" ,  {  width : 0.1 ,//width : 0.1 ,
								height : 5  }  ]  }; //1
					var  sourceEndpointE  =  {  anchor : [  "RightMiddle" ],maxConnections : 5, 
										dropOptions : {tolerance : "touch",hoverClass : "dropHover"},
										isSource : false ,  endpoint : [  "Dot" ,  {  radius : 4//radius : 0.1
											}  ]  }; 
					var  targetEndpointE  =  { anchor : [  "LeftMiddle" ] ,maxConnections : 5,
									
										dropOptions : {tolerance : "touch",hoverClass : "dropHover"},
										isTarget : true,endpoint : [  "Rectangle" ,  {  width : 0.1 ,//width : 0.1 ,
											height : 5  }  ]  }; //1								
								
					var  source1EndpointExc  =  {  anchor : [ 1, 0.8, -1,0.5 ],maxConnections : 5, 
										dropOptions : {tolerance : "touch",hoverClass : "dropHover"},
										isSource : false ,  endpoint : [  "Dot" ,  {  radius : 4//radius : 0.1
											}  ]  }; 
					var  target1EndpointExc  =  { anchor :  [  0, 0.8, -1,0.5 ],//anchor:[  "LeftMiddle" ] ,
										maxConnections : 5,
										dropOptions : {tolerance : "touch",hoverClass : "dropHover"},
										isTarget : true,endpoint : [  "Rectangle" ,  {  width : 0.1 ,//width : 0.1 ,
											height : 5  }  ]  };///ciclo1,4
					var  source2EndpointExc  =  {  anchor : [ 1, 0.8, -1,0.5 ],maxConnections : 5,dropOptions :
					{tolerance:"touch",hoverClass:"dropHover"},isSource:false,endpoint:["Dot",{radius:4}]}; 
					var  target2EndpointExc  =  { anchor :  [  0, 0.8, -1,0.5 ],maxConnections : 5,dropOptions : 
					{tolerance:"touch",hoverClass:"dropHover"},isTarget:true,endpoint:["Rectangle",{width:0.1,height:5}]};
					var  source3EndpointExc  =  {  anchor : [ 1, 0.1, -1,0.5 ],maxConnections : 5,dropOptions :
					{tolerance:"touch",hoverClass:"dropHover"},isSource:false,endpoint:["Dot",{radius:4}]}; 
					var  target3EndpointExc  =  { anchor :  [  0, 0.1, -1,0.5 ],maxConnections : 5,dropOptions : 
					{tolerance:"touch",hoverClass:"dropHover"},isTarget:true,endpoint:["Rectangle",{width:0.1,height:5}]};
					var  source4EndpointExc  =  {  anchor : [ 1, 0.3, -1,0.5 ],maxConnections : 5,dropOptions :
					{tolerance:"touch",hoverClass:"dropHover"},isSource:false,endpoint:["Dot",{radius:4}]}; 
					var  target4EndpointExc  =  { anchor :  [  0, 0.3, -1,0.5 ],maxConnections : 5,dropOptions : 
					{tolerance:"touch",hoverClass:"dropHover"},isTarget:true,endpoint:["Rectangle",{width:0.1,height:5}]};
					var  source5EndpointExc  =  {  anchor : [ 1, 0.3, -1,0.5 ],maxConnections : 5,dropOptions :
					{tolerance:"touch",hoverClass:"dropHover"},isSource:false,endpoint:["Dot",{radius:4}]}; 
					var  target5EndpointExc  =  { anchor :  [  0, 0.3, -1,0.5 ],maxConnections : 5,dropOptions : 
					{tolerance:"touch",hoverClass:"dropHover"},isTarget:true,endpoint:["Rectangle",{width:0.1,height:5}]};
					var  source6EndpointExc  =  {  anchor : [ 1, 0.1, -1,0.5 ],maxConnections : 5,dropOptions :
					{tolerance:"touch",hoverClass:"dropHover"},isSource:false,endpoint:["Dot",{radius:4}]}; 
					var  target6EndpointExc  =  { anchor :  [  0, 0.1, -1,0.5 ],maxConnections : 5,dropOptions : 
					{tolerance:"touch",hoverClass:"dropHover"},isTarget:true,endpoint:["Rectangle",{width:0.1,height:5}]};
					var  source7EndpointExc  =  {  anchor : [ 1, 0.3, -1,0.5 ],maxConnections : 5,dropOptions :
					{tolerance:"touch",hoverClass:"dropHover"},isSource:false,endpoint:["Dot",{radius:4}]}; 
					var  target7EndpointExc  =  { anchor :  [  0, 0.3, -1,0.5 ],maxConnections : 5,dropOptions : 
					{tolerance:"touch",hoverClass:"dropHover"},isTarget:true,endpoint:["Rectangle",{width:0.1,height:5}]};
					var  source8EndpointExc  =  {  anchor : [ 1, 0.3, -1,0.5 ],maxConnections : 5,dropOptions :
					{tolerance:"touch",hoverClass:"dropHover"},isSource:false,endpoint:["Dot",{radius:4}]}; 
					var  target8EndpointExc  =  { anchor :  [  0, 0.8, -1,0.5 ],maxConnections : 5,dropOptions : 
					{tolerance:"touch",hoverClass:"dropHover"},isTarget:true,endpoint:["Rectangle",{width:0.1,height:5}]};
					var  source9EndpointExc  =  {  anchor : [ 1, 0.5, -1,0.5 ],maxConnections : 5,dropOptions :
					{tolerance:"touch",hoverClass:"dropHover"},isSource:false,endpoint:["Dot",{radius:4}]}; 
					var  target9EndpointExc  =  { anchor :  [  0, 0.8, -1,0.5 ],maxConnections : 5,dropOptions : 
					{tolerance:"touch",hoverClass:"dropHover"},isTarget:true,endpoint:["Rectangle",{width:0.1,height:5}]};
					
					var s1exc90663=jsPlumb . addEndpoint (  "90663_estilo" ,  source1EndpointExc  );//geometrianalitica*1
					var t1exc90668=jsPlumb . addEndpoint (  "90668_estilo" ,  target1EndpointExc  );//matediscreta*4 */
					var s2exc91114=jsPlumb . addEndpoint (  "91114_estilo" ,  source2EndpointExc  );//INTRODUCCIONPROGRA
					var t2exc91115=jsPlumb . addEndpoint (  "91115_estilo" ,  target2EndpointExc  );//TI1
					var s3exc90655=jsPlumb . addEndpoint (  "90655_estilo" ,  source3EndpointExc  );//calculo1
					var t3exc91116=jsPlumb . addEndpoint (  "91116_estilo" ,  target3EndpointExc  );//fisicainfo
					var s4exc90655=jsPlumb . addEndpoint (  "90655_estilo" ,  source4EndpointExc  );//calculo1
					var t4exc90054=jsPlumb . addEndpoint (  "90054_estilo" ,  target4EndpointExc  );//estadiyproba1
					var s5exc90057=jsPlumb . addEndpoint (  "90057_estilo" ,  source5EndpointExc  );//introalateconomica
					var t5exc90122=jsPlumb . addEndpoint (  "90122_estilo" ,  target5EndpointExc  );//contabilidadgeneral
					var s6exc90090=jsPlumb . addEndpoint (  "90090_estilo" ,  source6EndpointExc  );//ingadministrativa
					var t6exc91162=jsPlumb . addEndpoint (  "91162_estilo" ,  target6EndpointExc  );//sistemainfo3
					var s7exc91162=jsPlumb . addEndpoint (  "91162_estilo" ,  source7EndpointExc  );//sistemainfo3
					var t7exc91121=jsPlumb . addEndpoint (  "91121_estilo" ,  target7EndpointExc  );//tallerproyectos
					var s8exc90119=jsPlumb . addEndpoint (  "90119_estilo" ,  source8EndpointExc  );//sistemainfo3
					var t8exc91121=jsPlumb . addEndpoint (  "91121_estilo" ,  target8EndpointExc  );//tallerproyectos
					var s9exc91116=jsPlumb . addEndpoint (  "91116_estilo" ,  source9EndpointExc  );//fisicainformatica
					var t9exc91161=jsPlumb . addEndpoint (  "91161_estilo" ,  target9EndpointExc  );//tecnologiainfo3
				
					
					/*  */
					var t90002=jsPlumb . addEndpoint (  "90002_estilo" ,  targetEndpoint  ); //lenguaje
					var s90002=jsPlumb . addEndpoint (  "90002_estilo" ,  sourceEndpoint  ); //lenguaje
					var s90005=jsPlumb . addEndpoint (  "90005_estilo" ,  sourceEndpoint  );//actividades1
					var s90663=jsPlumb . addEndpoint (  "90663_estilo" ,  sourceEndpoint  );//geometria analitica
					var s90709=jsPlumb . addEndpoint (  "90709_estilo" ,  sourceEndpoint  );//realidad nacional
					//var s90710=jsPlumb . addEndpoint (  "90710_estilo" ,  sourceEndpoint  );//metodos de estudio
					var s90971=jsPlumb . addEndpoint (  "90971_estilo" ,  sourceEndpoint  );//ingles1
					var s91113=jsPlumb . addEndpoint (  "91113_estilo" ,  sourceEndpoint  );//intro a la computacion
					var s91114=jsPlumb . addEndpoint (  "91114_estilo" ,  sourceEndpoint  );//intro a la programacion
					//ciclo2
					var t90003=jsPlumb . addEndpoint (  "90003_estilo" ,  targetEndpoint  );//--o	//filosofia
					//var s90003=jsPlumb . addEndpoint (  "90003_estilo" ,  sourceEndpoint  );//filosofia
					var t90020=jsPlumb . addEndpoint (  "90020_estilo" ,  targetEndpoint  );//actividades2
					//var s90020=jsPlumb . addEndpoint (  "90020_estilo" ,  sourceEndpoint  );//actividades2
					var t90053=jsPlumb . addEndpoint (  "90053_estilo" ,  targetEndpoint  );// Algoritmos y Estructura de Datos I
					var s90053=jsPlumb . addEndpoint (  "90053_estilo" ,  sourceEndpoint  );// Algoritmos y Estructura de Datos I
					var t90057=jsPlumb . addEndpoint (  "90057_estilo" ,  targetEndpoint  );//Introducci�n a la Teor�a Econ�mica
					var s90057=jsPlumb . addEndpoint (  "90057_estilo" ,  sourceEndpoint  );//Introducci�n a la Teor�a Econ�mica
					var t90655=jsPlumb . addEndpoint (  "90655_estilo" ,  targetEndpoint  );//calculo1
					var s90655=jsPlumb . addEndpoint (  "90655_estilo" ,  sourceEndpoint  );//calculo1
					var t91115=jsPlumb . addEndpoint (  "91115_estilo" ,  targetEndpoint  );//TI1
					var s91115=jsPlumb . addEndpoint (  "91115_estilo" ,  sourceEndpoint  );//TI1
					var t91155=jsPlumb . addEndpoint (  "91155_estilo" ,  targetEndpoint  );//INGLES2
					//var s91155=jsPlumb . addEndpoint (  "91155_estilo" ,  sourceEndpoint  );//INGLES2
					//ciclo3
					var t90069=jsPlumb . addEndpoint (  "90069_estilo" ,  targetEndpoint  );//alg y estuctura 2
					var s90069=jsPlumb . addEndpoint (  "90069_estilo" ,  sourceEndpoint  );//alg y estructura 2
					var t90366=jsPlumb . addEndpoint (  "90366_estilo" ,  targetEndpoint  );//algebra lineal
					var s90366=jsPlumb . addEndpoint (  "90366_estilo" ,  sourceEndpoint  );//algebra lineal
					var t91116=jsPlumb . addEndpoint (  "91116_estilo" ,  targetEndpoint  );//fisica para informatica
					var s91116=jsPlumb . addEndpoint (  "91116_estilo" ,  sourceEndpoint  );//fisica para informatica
					var t91117=jsPlumb . addEndpoint (  "91117_estilo" ,  targetEndpoint  );//sistemas de info1
					var s91117=jsPlumb . addEndpoint (  "91117_estilo" ,  sourceEndpoint  );//sistemas de info1
					var t91149=jsPlumb . addEndpoint (  "91149_estilo" ,  targetEndpoint  );//TI2
					var s91149=jsPlumb . addEndpoint (  "91149_estilo" ,  sourceEndpoint  );//TI2
					//ciclo4
					var t90089=jsPlumb . addEndpoint (  "90089_estilo" ,  targetEndpoint  );//TEORIA Y DISE�O DE BD
					var s90089=jsPlumb . addEndpoint (  "90089_estilo" ,  sourceEndpoint  );//TEORIA Y DISE�O DE BD
					var t90090=jsPlumb . addEndpoint (  "90090_estilo" ,  targetEndpoint  );//ING ADM
					var s90090=jsPlumb . addEndpoint (  "90090_estilo" ,  sourceEndpoint  );//ING ADM
					var t90668=jsPlumb . addEndpoint (  "90668_estilo" ,  targetEndpoint  );//MATE DISCRETA
					//var s90668=jsPlumb . addEndpoint (  "90668_estilo" ,  sourceEndpoint  );//MATE DISCRETA
					var t91118=jsPlumb . addEndpoint (  "91118_estilo" ,  targetEndpoint  );//SISTEMAS DE INFO 2
					var s91118=jsPlumb . addEndpoint (  "91118_estilo" ,  sourceEndpoint  );//SISTEMAS DE INFO 2
					var t91161=jsPlumb . addEndpoint (  "91161_estilo" ,  targetEndpoint  );//TI3
					//var s91161=jsPlumb . addEndpoint (  "91161_estilo" ,  sourceEndpoint  );//TI3
					//ciclo5
					//var t90034=jsPlumb . addEndpoint (  "90034_estilo" ,  targetEndpoint  );//ETICA Y MORAL
					//var s90034=jsPlumb . addEndpoint (  "90034_estilo" ,  sourceEndpoint  )//ETICA Y MORAL
					var t90054=jsPlumb . addEndpoint (  "90054_estilo" ,  targetEndpoint  );//ESTADIYPROBA1
					var s90054=jsPlumb . addEndpoint (  "90054_estilo" ,  sourceEndpoint  );//ESTADISYPROBA1
					var t90119=jsPlumb . addEndpoint (  "90119_estilo" ,  targetEndpoint  );//ING SW1
					var s90119=jsPlumb . addEndpoint (  "90119_estilo" ,  sourceEndpoint  );//ING SW1
					var t90122=jsPlumb . addEndpoint (  "90122_estilo" ,  targetEndpoint  );//CONTABILIDAD GENERAL
					var s90122=jsPlumb . addEndpoint (  "90122_estilo" ,  sourceEndpoint  );//CONTABILIDAD GENERAL
					//var t90667=jsPlumb . addEndpoint (  "90667_estilo" ,  targetEndpoint  );//LIDE Y ORA
					//var s90667=jsPlumb . addEndpoint (  "90667_estilo" ,  sourceEndpoint  );//LIDE Y ORA
					var t91162=jsPlumb . addEndpoint (  "91162_estilo" ,  targetEndpoint  );//SISTE INFO 3
					var s91162=jsPlumb . addEndpoint (  "91162_estilo" ,  sourceEndpoint  );//SISTE INFO 3
					//ciclo6
					var t90060=jsPlumb . addEndpoint (  "90060_estilo" ,  targetEndpoint  );//ESTADI Y PROBABI 2
					var s90060=jsPlumb . addEndpoint (  "90060_estilo" ,  sourceEndpoint  );//ESTADI Y PROBABI 2
					var t90134=jsPlumb . addEndpoint (  "90134_estilo" ,  targetEndpoint  );//MERCADOTECNIA
					//var s90134=jsPlumb . addEndpoint (  "90134_estilo" ,  sourceEndpoint  );//MERCADOTECNIA
					var t90137=jsPlumb . addEndpoint (  "90137_estilo" ,  targetEndpoint  );//ING SW2
					var s90137=jsPlumb . addEndpoint (  "90137_estilo" ,  sourceEndpoint  );//ING SW2
					var t91121=jsPlumb . addEndpoint (  "91121_estilo" ,  targetEndpoint  );//TALLER DE PROYECTOS
					var s91121=jsPlumb . addEndpoint (  "91121_estilo" ,  sourceEndpoint  );//TALLER DE PROYECTOS
					//ciclo7
					var t90145=jsPlumb . addEndpoint (  "90145_estilo" ,  targetEndpoint  );//GESTION FINANCIERA
					var s90145=jsPlumb . addEndpoint (  "90145_estilo" ,  sourceEndpoint  );//GESTION FINANCIERA
					var t90577=jsPlumb . addEndpoint (  "90577_estilo" ,  targetEndpoint  );//GESTION DE PROYECTOS
					var s90577=jsPlumb . addEndpoint (  "90577_estilo" ,  sourceEndpoint  );//GESTION DE PROYECTOS
					var t90721=jsPlumb . addEndpoint (  "90721_estilo" ,  targetEndpoint  );//DIS
					var s90721=jsPlumb . addEndpoint (  "90721_estilo" ,  sourceEndpoint  );//DIS
					//ciclo8
					var t90664=jsPlumb . addEndpoint (  "90664_estilo" ,  targetEndpoint  );//GRTI
					var s90664=jsPlumb . addEndpoint (  "90664_estilo" ,  sourceEndpoint  );//GRTI
					var t90679=jsPlumb . addEndpoint (  "90679_estilo" ,  targetEndpoint  );//SEGURIDAD Y AUDITORIA SI
					//var s90679=jsPlumb . addEndpoint (  "90679_estilo" ,  sourceEndpoint  );//SEGURIDAD Y AUDITORIA SI
					//ciclo9
					var t90673=jsPlumb . addEndpoint (  "90673_estilo" ,  targetEndpoint  );//PROYECTO 1
					var s90673=jsPlumb . addEndpoint (  "90673_estilo" ,  sourceEndpoint  );//PROYECTO 1
					//ciclo10
					var t90070=jsPlumb . addEndpoint (  "90070_estilo" ,  targetEndpoint  );//PROYECTO 2
					//var s90070=jsPlumb . addEndpoint (  "90070_estilo" ,  sourceEndpoint  );//PROYECTO 2
					/*ELECTIVO IS */
					var te90671 =jsPlumb . addEndpoint (  "90671_estilo" ,  targetEndpointE  );
					var se90671 =jsPlumb . addEndpoint (  "90671_estilo" ,  sourceEndpointE  );//Programaci�n I
					var te90672 =jsPlumb . addEndpoint (  "90672_estilo" ,  targetEndpointE  );
					var se90672 =jsPlumb . addEndpoint (  "90672_estilo" ,  sourceEndpointE  );//Programaci�n II
					var te90665 =jsPlumb . addEndpoint (  "90665_estilo" ,  targetEndpointE  );
					var se90665 =jsPlumb . addEndpoint (  "90665_estilo" ,  sourceEndpointE  );//Fundamentos de Dise�o Web
					var te90861 =jsPlumb . addEndpoint (  "90861_estilo" ,  targetEndpointE  );
					//var se90861 =jsPlumb . addEndpoint (  "90861_estilo" ,  sourceEndpointE  );//Administraci�n de Base de Datos
					var te91124 =jsPlumb . addEndpoint (  "91124_estilo" ,  targetEndpointE  );
					var se91124 =jsPlumb . addEndpoint (  "91124_estilo" ,  sourceEndpointE  );//Pruebas de Software
					var te90659 =jsPlumb . addEndpoint (  "90659_estilo" ,  targetEndpointE  );
					var se90659 =jsPlumb . addEndpoint (  "90659_estilo" ,  sourceEndpointE  );//Desarrollo de Aplicaciones I
					var te90658 =jsPlumb . addEndpoint (  "90658_estilo" ,  targetEndpointE  );
					//var se90658 =jsPlumb . addEndpoint (  "90658_estilo" ,  sourceEndpointE  );//Calidad de Software
					var te90085 =jsPlumb . addEndpoint (  "90085_estilo" ,  targetEndpointE  );
					//var se90085 =jsPlumb . addEndpoint (  "90085_estilo" ,  sourceEndpointE  );//Investigaci�n Operativa I
					var te90660 =jsPlumb . addEndpoint (  "90660_estilo" ,  targetEndpointE  );
					//var se90660 =jsPlumb . addEndpoint (  "90660_estilo" ,  sourceEndpointE  );//Desarrollo de Aplicaciones II
					var te90666 =jsPlumb . addEndpoint (  "90666_estilo" ,  targetEndpointE  );
					//var se90666 =jsPlumb . addEndpoint (  "90666_estilo" ,  sourceEndpointE  );//Inteligencia Artificial y Rob�tica
 
					/* LA CONEXION CAUSA DESCONEXIONES O VARIABLE GENERAL NO ESTA DECLARADA  */
					jsPlumb.connect({source : s90069,target : te90671,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
						,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//Algoritmos y Estructura de Datos II,Programaci�n I
					jsPlumb.connect({source : se90671,target : te90672,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
						,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//Programaci�nI,Programaci�n II
					jsPlumb.connect({source : se90672,target : te90666,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
						,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//Programaci�nII,Inteligencia Artificial y Rob�tica
					jsPlumb.connect({source : s90137,target : te91124,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
						,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//Ingenier�a de Software II,Pruebas de Software
					jsPlumb.connect({source : se91124,target : te90658,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
						,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//Pruebas de Software,Calidad de Software
						jsPlumb.connect({source : s90069,target : te90665,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
							,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//Algoritmos y Estructura de Datos II,Fundamentos de Dise�o Web
						jsPlumb.connect({source : se90665,target : te90659,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
							,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//Fundamentos de Dise�o Web,Desarrollo de Aplicaciones I
						jsPlumb.connect({source : se90659,target : te90660,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
							,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//Desarrollo de Aplicaciones I,Desarrollo de Aplicaciones II
						jsPlumb.connect({source : s90089,target : te90861,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
							,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//TDBD,DBA
						jsPlumb.connect({source : s90060,target : te90085,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#04B4AE"
							,outlineColor:"white",outlineWidth:-1},overlays:[["Arrow" , { width:12, length:12, location:1}],],});//Estadistica y Probabilidades II�,Investigaci�n Operativa I
						//-------------*
					/*  */
					jsPlumb.connect({source : s90002,target : t90003,paintStyle : {dashstyle : "0",strokeStyle : "purple",//line color con y flecha
					lineWidth : 2
						},outlineColor:"white",outlineWidth:2,// endpoint : [  "Dot" ,"red"],
						/*  endpointStyle:{ fillStyle:"lightgray", outlineColor:"gray" }, */
						 overlays:[ ["Arrow" , { width:12, length:12, location:1 }],//by chino
						            /*  [ "Label", { label:"-", location:0.5, id:"myLabel" } ] */
						           ],// endpointStyle:{ fillStyle:"purple", outlineColor:"black", outlineWidth:1 }   
					});//lenguaje, filosofia	
					jsPlumb.connect({source : s90005,target : t90020,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "purple"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//actividades 1 ,2
					jsPlumb.connect({source : s90971,target : t91155,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "purple"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//ingles1,2
					jsPlumb.connect({source : s90663,target : t90655,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "orange"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//geometrian analitica,calculo1
					//jsPlumb.connect({source : s90663,target : t90668,paintStyle : {dashstyle : "1",lineWidth : 3,strokeStyle : "orange"
						//,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//geometrian analitica,matediscreta
					jsPlumb.connect({source : s90709,target : t90057,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "purple"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//realidad nacional,introduccion a la teoria economica
					//jsPlumb.connect({source : s91114,target : t91115,paintStyle : {dashstyle : "0",lineWidth : 3,strokeStyle : "blue"
						//,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//Introduccion a la programacion,TI 1
					jsPlumb.connect({source : s91113,target : t91117,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "#01DF01"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//Introducci�n a la Ingenier�a y computacion,Sistemas de Informaci�n I
					jsPlumb.connect({source : s91114,target : t90053,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "blue"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//Introdiccion a la programacion,Algoritmo estructura1
					jsPlumb.connect({source : s90053,target : t90069,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "blue"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//algo estructura1,2
					jsPlumb.connect({source : s90069,target : t90089,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "blue"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//algo2, teoriabasedatos
					jsPlumb.connect({source : s90089,target : t90119,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "blue"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//teoriabasedatos,ing sw1
					//jsPlumb.connect({source : s90119,target : t91121,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "blue"
						//,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//ing sw1,taller de proyectos
					jsPlumb.connect({source : s90119,target : t90137,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "blue"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//ing sw1,ing sw2
					jsPlumb.connect({source : s91121,target : t90577,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "#01DF01"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//taller de proyectos,GProyectos
					jsPlumb.connect({source : s90137,target : t90721,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "blue"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//ing sw2,DIS
					jsPlumb.connect({source : s90721,target : t90679,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "#01DF01"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//DIS,Seguridad y auditoria de SI
					jsPlumb.connect({source : s90655,target : t90366,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "orange"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//calculo1,algebra lineal
					//jsPlumb.connect({source : s90655,target : t91116,paintStyle : {dashstyle : "0",lineWidth : 3,strokeStyle : "orange"
						//,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//calculo1,fisica para informatica
					//jsPlumb.connect({source : s90655,target : t90054, paintStyle : {dashstyle : "1",lineWidth : 3,strokeStyle : "orange"
						//,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//calculo1,estadisticayprobabi1
					jsPlumb.connect({source : s90054,target : t90060,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "orange"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//estadisticayproba1,estadisticayproba2	
					//jsPlumb.connect({source : s90057,target : t90122,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "brown"
						//,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//punteado//introduccion a la teoria economica,contabilidad general
					jsPlumb.connect({source : s90122,target : t90145,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "brown"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//punteado//contabilidadGeneral,GestionFinanciera	
					jsPlumb.connect({source : s90057,target : t90090,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "brown"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//punteado//introduccion a la teoria economica,ing administrativa
					jsPlumb.connect({source : s91115,target : t91149,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "green"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//tecnologia info1,2
					jsPlumb.connect({source : s91117,target : t91118,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "#01DF01"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//sistema info1,2
					jsPlumb.connect({source : s91118,target : t91162,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "#01DF01"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//sistema info2,3
					jsPlumb.connect({source : s91149,target : t91161,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "green"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//tecnologiainfo2,3
					//jsPlumb.connect({source : s91116,target : t91161,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "orange"
						//,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//fisica para informatica,tecnologiainfo3
					//jsPlumb.connect({source : s90090,target : t91162,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "brown"
						//,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//ingadmi,sisteinfo3
					jsPlumb.connect({source : s91162,target : t90664,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#01DF01"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//sisteinfo3,GRTI
					//jsPlumb.connect({source : s91162,target : t91121,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "#01DF01"
						//,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//sisteinfo3,Taller de proyectos
					
					jsPlumb.connect({source : s90090,target : t90134, paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "brown"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//IngAdministrativa,Mercadotecnia
					jsPlumb.connect({source : s90577,target : t90673, paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "#01DF01"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//GProyectos,Proyectos1
					jsPlumb.connect({source : s90673,target : t90070,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "#01DF01"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//Proyectos1,Proyectos2
						
						
					jsPlumb.connect({source : s1exc90663,target : t1exc90668,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "orange"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//geometrian analitica,matediscreta	
					jsPlumb.connect({source : s2exc91114,target : t2exc91115,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "blue"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//introprogra,ti1
					jsPlumb.connect({source : s3exc90655,target : t3exc91116,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "orange"
							,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//caculo1,fisicainfo	
					jsPlumb.connect({source : s4exc90655,target : t4exc90054,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "orange"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//caculo1,estadisyproba1
					jsPlumb.connect({source : s5exc90057,target : t5exc90122,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "brown"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//introalateconomica,contabilidadgeneral
					jsPlumb.connect({source : s6exc90090,target : t6exc91162,paintStyle : {dashstyle : "1",lineWidth : 2,strokeStyle : "brown"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//ingadministrativa,sisteinfo3
					jsPlumb.connect({source : s7exc91162,target : t7exc91121,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "#01DF01"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//sisteinfo3,tallerproyectos	
					jsPlumb.connect({source : s8exc90119,target : t8exc91121,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "blue"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//ingSw1,tallerproyectos		
					jsPlumb.connect({source : s9exc91116,target : t9exc91161,paintStyle : {dashstyle : "0",lineWidth : 2,strokeStyle : "orange"
						,outlineColor:"white",outlineWidth:2},overlays:[["Arrow" , { width:12, length:12, location:1 }],], });//ingSw1,tallerproyectos		
							
					
						
			
			});
		</script>
		</div>
</body>
</html>