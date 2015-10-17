<%@page import="edu.usmp.fia.taller.common.action.SessionParameters"%>
<%@page import="edu.usmp.fia.taller.common.bean.Usuario"%>
<%@page import="edu.usmp.fia.taller.common.bean.Persona"%>
<%
	Usuario oUsuario = (Usuario) request.getSession(false).getAttribute(SessionParameters.USUARIO.text());
	Persona oPersona = oUsuario.getPersona();
%>

<div class="sidebar-menu">

	<div class="sidebar-menu-inner">

		<header class="logo-env">
			<!-- logo -->
			<div class="logo">
				<a href="SimulacionMatricula/index.jsp">
					<h1 style="color: #FCFDFF;">
						<strong>USMP</strong>
					</h1>
				</a>
			</div>
			<!-- logo collapse icon -->
			<div class="sidebar-collapse">
				<a href="#" class="sidebar-collapse-icon"> <!-- add class "with-animation" if you want sidebar to have animation during expanding/collapsing transition -->
					<i class="entypo-menu"></i>
				</a>
			</div>
			<!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
			<div class="sidebar-mobile-menu visible-xs">
				<a href="#" class="with-animation"> <!-- add class "with-animation" to support animation -->
					<i class="entypo-menu"></i>
				</a>
			</div>
		</header>

		<div class="sidebar-user-info">
			<div class="sui-normal">
				<a href="#" class="user-link"> <img
					src="<%=request.getServletContext().getContextPath() %>/resources/assets/images/thumb-1@2x.png" alt="" class="img-circle" />
					<span>Bienvenido,</span> <strong><%=oPersona.getNombre() + " " + oPersona.getApePaterno()%></strong>
				</a>
			</div>
			<div class="sui-hover inline-links animate-in">
				<!-- You can remove "inline-links" class to make links appear vertically, class "animate-in" will make A elements animateable when click on user profile -->

				<a href="correo.html"> <i class="entypo-mail"></i> Correo
				</a> <a href="login?f=logout""> <i class="entypo-lock"></i> Salir
				</a> <span class="close-sui-popup">&times;</span>
				<!-- this is mandatory -->
			</div>
		</div>

		<ul id="main-menu" class="main-menu">
			<li><a href="<%=request.getContextPath()%>/SimulacionMatricula/index.jsp"><i class="entypo-gauge"></i><span class="title">INICIO</span></a></li>
			<li><a href="#"> <i class="entypo-gauge"></i><span class="title">SIMULACI&Oacute;N DE MATRICULA</span></a>
				<ul>
					<li><a href="<%=request.getContextPath()%>/SimulacionInicial"><span class="title"> Simulaci&oacute;n Inicial</span></a></li>
					<li><a href="<%=request.getContextPath()%>/SimularCursosConcluyentes"><span class="title">Matricula Probable</span></a></li>
					<li><a href="<%=request.getContextPath()%>/SimularCursosPreferidos"><span class="title">Matricula Preferible</span></a></li>
					<li>
						<a href="index.jsp"> <i class="entypo-gauge"></i><span class="title">MATRICULA PROGRESIVA</span></a>
						<ul>
							<li><a href="<%=request.getContextPath()%>/ListarAlumnos"><span class="title">Listado Alumnos</span></a></li>
							<li><a href="<%=request.getContextPath()%>/ListarCursos"><span class="title">Listado Cursos</span></a></li>
							<li><a href="#"> <span class="title">Demanda de Cursos preferidos </span></a></li>
							<li><a href="#"> <span class="title">Solicitudes y Observaciones</span></a></li>
							<li><a href="#"> <span class="title">Resultado de Matricula Progresiva</span></a>
						</li>
						</ul>
					</li>
					<li><a href="index.jsp"> <i class="entypo-gauge"></i><span class="title">MAT PROGRESIVA-ALUMNO</span></a>
						<ul>
							<li><a href="<%=request.getContextPath()%>/AlumnoListarCursosAptos"><span class="title">Listado Cursos Aptos</span></a></li>
							<li><a href="<%=request.getContextPath()%>/AlumnoListarCursosPropuestos"><span class="title">Listado Cursos Propuestos</span></a></li>
							<li><a href="<%=request.getContextPath()%>/ListarCursos"><span class="title">Generar Pre-Matricula</span></a></li>
							<li><a href="<%=request.getContextPath()%>/ListarCursos"><span class="title">Actualizar Pre-Matricula</span></a></li>
							<li><a href="#"> <span class="title">Solicitudes y Observaciones</span></a></li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div>

</div>