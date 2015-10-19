<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="edu.usmp.fia.taller.registrodocente.servlet.Listar_DocenteServlet"%>
<%@page import="edu.usmp.fia.taller.common.bean.Persona"%>
<%@page import="edu.usmp.fia.taller.common.bean.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="css/boostrap/bootstrap.min.css" rel="stylesheet" />
<link href="css/boostrap/bootstrap-table.min.css" rel="stylesheet" />
 <link href="css/dashboard.css" rel="stylesheet" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <script src="js/bootstrap-table.min.js"></script>
 <script src="js/validator.min.js"></script>
 <script src="js/combos.js"></script>
 <script src="js/accionesRegistroDocentes.js"></script>
<title>Insert title here</title>
</head>
<%
	Usuario oUsuario = (Usuario) request.getSession(false).getAttribute(SessionParameters.USUARIO.text());
	Persona oPersona = oUsuario.getPersona();
%>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Taller</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><%= oPersona.getNombre() + " " + oPersona.getApePaterno()%></a></li>
				<li><a href="login?f=logout">Salir</a></li>
			</ul>

		</div>
	</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">Malla curricular</a></li>
					<li><a href="Gestionar_Docente?f=registrarDocente">Registro de docentes</a></li>
					<li><a href="Gestionar_Docente?f=registrarDisponibilidadDocente">Registro de Disponibilidad</a></li>
					<li><a data-toggle="modal" href="#myModal">Elaboracion de Horarios</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<a data-toggle="modal" href="#RegistrarDocenteModal">Registrar Docente</a>
			</div>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<form class="form-horizontal"  role="form" id="formDocente" action="<%=getServletContext().getContextPath() %>/Gestionar_Docente?f=guardarDocente" method="post">
		<div class="row">
		
		<div class="col-md-6">
		<input type="hidden" name="f" value="guardarDocente" /> 
				
				<fieldset>
				<legend align="left">Datos Generales</legend>
				<div class="form-group">
				<label for="foto"  class="col-sm-3 control-label" >Url Foto: </label>
				<div class="col-sm-9">
				<input type="text" name="url_foto" class="form-control input-sm"/>
				</div>
				</div>
				
				<div class="form-group">
				<label for="Nombres" class="col-sm-3 control-label"  >Nombres: </label>
				<div class="col-sm-9">
				<input type="text" name="nombres" class="form-control input-sm" required/>
				</div>
				</div>
				
				<div class="form-group">
				<label for="apellido_paterno" class="col-sm-3 control-label" >Apellido Paterno:</label>
				<div class="col-sm-9">
				 <input type="text" name="apellido_paterno" class="form-control input-sm" required/>
				 </div>
				 </div>
				 
				 <div class="form-group">
				<label for="apellido_materno" class="col-sm-3 control-label">Apellido Materno:</label>
				<div class="col-sm-9">
				 <input type="text" name="apellido_materno" class="form-control input-sm" required/>
				 </div>
				 </div>
				 
				 <div class="form-group">
				<label for="sexo" class="col-sm-3 control-label">Sexo:</label>
				 <div class="col-sm-9">
				 <select size="1" name="sexo" class="form-control input-sm">
	                	<option value="Masculino">Masculino</option>
	                    <option value="Femenino">Femenino</option>
	                     </select>
	             </div>
	             </div>
	             
	              <div class="form-group">
	             <label for="estado_civil" class="col-sm-3 control-label">Estado Civil:</label>
				 <div class="col-sm-9">
				 <select size="1" name="estado_civil" class="form-control input-sm">
	                	<option value="S">Soltero</option>
	                    <option value="C">Casado</option>
	                    <option value="D">Divorciado</option>
	                     </select>
	             </div>
	             </div>
	             
				 <div class="form-group">
				<label for="paisnacimiento" class="col-sm-3 control-label">Pais de Nacimiento:</label>
				<div class="col-sm-9">
				 <select size="1" name="pais" class="form-control input-sm">
	                	<option value="1">Peru</option>
	                    <option value="2">Chile</option>
	                    <option value="3">Colombia</option>
	                     </select>
	              </div>
	              </div>
	              
				</fieldset>
				
				<fieldset>
				<legend align="left">Datos de Nacimiento</legend>
				
				<div class="form-group">
				<label for="fechanacimiento" class="col-sm-3 contro1-label">Fecha de Nacimiento:</label> 
				<div class="col-sm-9">
				<input type="date" name="fecha_nacimiento" class="form-control input-sm">
				</div>
				</div>
				
			  <div class="form-group">
			  <label for="combo_departamentos_1" class="col-sm-3 contro1-label">Departamento:</label>
			  <div class="col-sm-9">
			  <select id="combo_departamentos_1" class="form-control input-sm" name="departamento1" required>
				  <option>Seleccionar</option>
			  </select>
			  </div>
			  </div>
			  
			  <div class="form-group">
			  <label for="combo_provincias_1" class="col-sm-3 contro1-label">Provincia</label>
			   <div class="col-sm-9">
			  <select id="combo_provincias_1" class="form-control input-sm" disabled="true" name="provincia1" required>
				  <option>Seleccionar</option>
			  </select>
			  </div>
			  </div>
			  
			  <div class="form-group">
			  <label for="combo_distritos_1" class="col-sm-3 contro1-label">Distrito</label>
			   <div class="col-sm-9">
			  <select id="combo_distritos_1" class="form-control input-sm" disabled="true" name="distrito1">
				  <option>Seleccionar</option>
			  </select>
			  </div>
			  </div>
			  
			  </fieldset>
			  
			  
			  <fieldset>
			 <legend align="left">Direccion</legend>
				
			 <div class="form-group">
			  <label for="combo_departamentos_2" class="col-sm-3 contro1-label">Departamento:</label>
			  <div class="col-sm-9">
			  <select id="combo_departamentos_2" class="form-control input-sm" name="departamento2">
				  <option>Seleccionar</option>
			  </select>
			  </div>
			  </div>
			  
			  <div class="form-group">
			  <label for="combo_provincias_2" class="col-sm-3 contro1-label">Provincia</label>
			   <div class="col-sm-9">
			  <select id="combo_provincias_2" class="form-control input-sm" disabled="true" name="provincia2">
				  <option>Seleccionar</option>
			  </select>
			  </div>
			  </div>
			  
			  <div class="form-group">
			  <label for="combo_distritos_2" class="col-sm-3 contro1-label">Distrito</label>
			   <div class="col-sm-9">
			  <select id="combo_distritos_2" class="form-control input-sm" disabled="true" name="distrito2">
				  <option>Seleccionar</option>
			  </select>
			  </div>
			  </div>
	                         
				 <div class="form-group">
				 <label for="referencia" class="col-sm-3 contro1-label">Referencia:</label> 
				 <div class="col-sm-9">
				 <input type="text" name="referencia" class="form-control input-sm"/>
				 </div>
				 </div>
				 
				</fieldset>
				
				<fieldset>
				 		<legend align= "left">Datos de Contacto</legend>
				 		
			
				<div class="form-group">
				 <label for="telefono1" class="col-sm-3 contro1-label">Telefono1:</label>
				  <div class="col-sm-9">
				  <div class="row">
					  <div class="col-xs-9">
						<input type="number" name="telefono1" id="telefono1" class="form-control input-sm"/>
					  </div>
					 
				  </div>
				</div>
				</div>
				
				<div class="form-group">
				 <label for="telefono2" class="col-sm-3 contro1-label">Telefono2:</label>
				  <div class="col-sm-9">
				  <div class="row">
					  <div class="col-xs-9">
						<input type="number" name="telefono2" id="telefono2" class="form-control input-sm"/>
					  </div>
					 
				  </div>
				</div>
				</div>
				
				<div class="form-group">
				 <label for="telefono3" class="col-sm-3 contro1-label">Telefono3:</label>
				  <div class="col-sm-9">
				  <div class="row">
					  <div class="col-xs-9">
						<input type="number" name="telefono3" id="telefono3" class="form-control input-sm"/>
					  </div>
					 
				  </div>
				</div>
				</div>
				
				</br>	
				
				<div class="form-group">
				 <label for="email1" class="col-sm-3 contro1-label">Email1:</label>
				 <div class="col-sm-9">
				 <div class="row">
					  <div class="col-xs-9">
					  <input type="email" name="email1" class="form-control input-sm" id="email1"/>
					  </div>
					 
				  </div>
				</div>
				</div>
				
				<div class="form-group">
				 <label for="email2" class="col-sm-3 contro1-label">Email2:</label>
				 <div class="col-sm-9">
				 <div class="row">
					  <div class="col-xs-9">
					  <input type="email" name="email2" class="form-control input-sm" id="email2"/>
					  </div>
					 
				  </div>
				</div>
				</div>
				
				<div class="form-group">
				 <label for="email3" class="col-sm-3 contro1-label">Email3:</label>
				 <div class="col-sm-9">
				 <div class="row">
					  <div class="col-xs-9">
					  <input type="email" name="email3" class="form-control input-sm" id="email3"/>
					  </div>
					 
				  </div>
				</div>
				</div>

				
				</br>	
				
				<div class="form-group">
				 <label class="col-sm-3 contro1-label">Tipo Doc.:</label> 
				<div class="col-sm-9">
				 <select size="1" id="tipodoc"  name="tipo_doc" class="form-control input-sm">
	                	<option value="DNI">DNI</option>
	                    <option value="Pasaporte">Pasaporte</option>
	                           </select>
	                    </div>
	                    </div>
	             
	              <div class="form-group">
				 <label class="col-sm-3 contro1-label">Numero:</label>
				 <div class="col-sm-9">
				 <div class="row">
					  <div class="col-xs-9">
					  <input type="number" id="numeroDocumento" name="numero_doc" class="form-control input-sm"/>
					  </div>
					  
				  </div>
				</div>
				</div>
				
				
				 
				 </fieldset>
		</div>
		<div class="col-md-6">
				 		
				 		<fieldset>
				 		<legend align= "left">
					 		<p>Datos Academicos
							 		
					 		</p>
				 		</legend>
				 		
				 		
				 <div class="form-group">
				 <label for="email" class="col-sm-3 contro1-label">Grado Academico:</label>
				 <div class="col-sm-9">
				 <select size="1" class="form-control input-sm" name="grado_academico">
	                	<option value="Bachiller">Bachiller</option>
	                    <option value="Licenciado">Licenciado</option>
	                    <option value="Master">Master</option>
	                    <option value="Doctorado">Doctorado</option>
	                    </select>
	                    </div>
	                    </div>
	                                 
	                 <div class="form-group">
				 <label for="email" class="col-sm-3 contro1-label">Profesion:</label>
				 <div class="col-sm-9">
				 <select size="1" class="form-control input-sm" name="profesion">
	                	<option value="Ing.Sistemas">Ingenieria</option>
	                   
	                    </select>
	                    </div>
	                    </div>   
	                             
	             <div class="form-group">
				 <label class="col-sm-3 contro1-label">Especialidad:</label>
					 <div class="col-sm-9">
						 <select size="1" class="form-control input-sm" name="especialidad">
			                	<option value="S.I">Industrial</option>
			                    <option value="T.I">Ambiental</option>
			                    <option value="S.I">Civil</option>
			                    <option value="T.I">Económica</option>
			                    <option value="S.I">Estadística</option>
			                    <option value="T.I">Electronica</option>
			                    <option value="S.I">Sistemas</option>
			                    <option value="T.I">Naval</option>
			                    <option value="S.I">Alimentarias</option>
			                    <option value="T.I">Química</option>
			             </select>
		             </div>
	             </div>
	                    
	               <div class="form-group">
				 <label class="col-sm-3 contro1-label">Institucion:</label>
				 <div class="col-sm-9">
				 <input type="text" class="form-control input-sm" name="institucion"/>  
	              </div>
	              </div>
	              
	             <div class="form-group">
				 <label class="col-sm-3 contro1-label">Fecha de Ingreso:</label>
				 <div class="col-sm-9">
				 <input type="date" class="form-control input-sm" name="fecha_ingreso"/>
				 </div>
				 </div>
				 
				 
				 
		
			</div>
			<div class="form-group">
				 <input type="submit"value="Agregar" class="btn btn-primary">
	        </div>
		</div>
		</form>
		</div>
	</div>
				<!-- Inicio Modal importar excel jose-->
		<div id="RegistrarDocenteModal" class="modal fade" role="dialog">
		  <div class="modal-dialog">
		    <!-- Modal content-->
		    <div class="modal-content" style="margin-top:50%;">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">REGISTRAR DOCENTE</h4>
		      </div>
		      <div class="modal-body">
		        		    
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>

		  </div>
		</div>
		<!-- Fin Modal -->
		
		
		<!-- Inicio Modal -->
		<div id="myModal" class="modal fade" role="dialog">
		  <div class="modal-dialog">

		    <!-- Modal content-->
		    <div class="modal-content" style="margin-top:50%;">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">Sistema Elaboracion de Horarios</h4>
		      </div>
		      <div class="modal-body">
		        <p>¿Desea agregar el archivo excel consolidado?.</p>
		        </br>
		        <center>
				<form action="cargarExcels" method="get" >
						<input type="hidden" name="f" value="leerExcel" /> <input type="hidden"
			name="p" id="p" value="" />
			        <button type="submit"  class="btn btn-success">Agregar archivo</button>
			     </form>
			     <form action="ElaboracionHorariosServlet" method="get" > 
			     <input type="hidden" name="f" value="leerHorario" /> <input type="hidden"
						name="p" id="p" value="" /> 
			        <button type="submit"  class="btn btn-info">No agregar archivo</button>
				</form>
			     </center>
			     <p>.</p>
		      </div>
		      <div class="modal-footer">
		        <button type="submit" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>

		  </div>
		</div>
		<!-- Fin Modal -->
		
		<script>
		
		
		function telefonoataPost(nombreTabla){
		var dataTelefonos=$('#table_'+nombreTabla).bootstrapTable('getData');
		dataTelefonos.each(function( index, filaTabla ) {
			
		});
			
		}
</script>
</body>
</html>