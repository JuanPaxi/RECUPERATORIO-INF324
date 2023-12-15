<?php
session_start();

$ci = $_SESSION['ci'];

$sql = "select * from tramite where ci = '$ci'";
$resultado=mysqli_query($con, $sql);
$fila = mysqli_fetch_array($resultado);

$ci = $fila['ci'];
$nombre = $fila['nombre'];
$apellido = $fila['apellido'];
$cargo = $fila['cargo'];
// $nacionalidad = $fila['nacionalidad'];

?>



<h2 class="text-center" style="color: black;">SISTEMA PAGO DE NIT</h2>
<div class="card container rounded-4 text-center col-3">
	<h4>Tramites Administrador</h4>
	<ul style="text-align: left;">
		<li>Ci: <?php echo $ci;?></li>
		<li>Nombre: <?php echo $nombre;?></li>
		<li>Apellido: <?php echo $apellido;?></li>
		<li>Cargo: <?php echo $cargo?></li>

	</ul>

	<h4>Datos Usuarios</h4>
	<?php
		
			include 'coneccion.php';
			$sql = "select * from profesional";
		$result=mysqli_query($con, $sql);

		// Verificar si hay resultados
		if ($result->num_rows > 0) {
		    // Crear la tabla HTML
		    echo "<table border='1'>
		            <tr>
		                <th>ci</th>
		                <th>Nombre</th>
		                <th>Formulario</th>
		                <th>Accion </th>
		            </tr>";

		    // Recorrer los resultados y mostrarlos en la tabla
		    while ($row = $result->fetch_assoc()) {
		        echo "<tr>
		                <td>{$row['ci']}</td>
		                <td>{$row['nombre']}</td>
		                <td>{$row['formulario']}</td>
		                <td><a href='http://localhost:8080/recu/verFormularioProfesional.php?ci={$row['ci']}' target='_blank'>Ver</a></td>
		              </tr>";
		    }

		    echo "</table>";

		   }



	?>

<br>


	<input class="btn btn-primary" type="submit" value="Salir" name='Siguiente'>
	<br>
</div>

<!-- <a href="localhost:8080/recsu/verFormularioProfesional.php?id=">  </a> -->