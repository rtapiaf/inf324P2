<?php
	include "conexion.inc.php";
	$usuario=$_GET["usuario"];
	$contrasenia=$_GET["contrasenia"];
	$sql="select * from usuarios_cei where usuario='".$usuario;
	$sql.="' and contrasenia='".$contrasenia."'";
	$resultado=mysqli_query($conexion,$sql);
	$fila=mysqli_fetch_array($resultado);
	if($fila["usuario"]==$usuario and $fila["contrasenia"]==$contrasenia)
	{
		//echo("ingresaste");
		session_start();
		$_SESSION["usuario"]=$usuario;
		header("Location: bandeja.php");
	}else{
		header("Location: index.php");
	}
	
?>