<?php
session_start();
include "conexion.inc.php";
$sql = "select * from seguimiento_cei where usuario='" . $_SESSION["usuario"] . "' ";
$sql .= "and fechafin is null";
$resultado = mysqli_query($conexion, $sql);
include("cabecera.php");
?>
<div class="container">
	<div class="row">
		<div class="card">
			<img class="card-img-top" src="holder.js/100x180/" alt="">
			<div class="card-body">
				<h4 class="card-title">Procesos</h4>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>Tramite</th>
							<th>Flujo</th>
							<th>Proceso</th>
							<th>Fecha Inicio</th>
							<th>Accion</th>
						</tr>
					</thead>
					<tbody>
						<?php
						while ($fila = mysqli_fetch_array($resultado)) {
							echo "<tr>";
							echo "<td>" . $fila["notramite"] . "</td>";
							echo "<td>" . $fila["flujo"] . "</td>";
							echo "<td>" . $fila["proceso"] . "</td>";
							echo "<td>" . $fila["fechainicio"] . "</td>";
							echo "<td><a ";
							echo "href='desflujo.php?flujo=$fila[flujo]&proceso=$fila[proceso]'>";
							echo "Mostrar</a></td>";
							echo "</tr>";
						}
						?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<?php include("pie.php"); ?>