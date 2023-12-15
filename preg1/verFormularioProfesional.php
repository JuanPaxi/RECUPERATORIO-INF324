<?php

$ci = $_GET['ci'];
include 'coneccion.php';
$sql = "select * from profesional where ci = '$ci'";
$resultado=mysqli_query($con, $sql);
$fila = mysqli_fetch_array($resultado);

$nit = $fila['nit']; 
$ci = $fila['ci'];
$nombre = $fila['nombre'];
$apellido = $fila['apellido'];
// $nacionalidad = $fila['nacionalidad'];

?>


<?php
$ci = $_GET['ci'];

if(isset($_GET['ci'])){

	

	include 'coneccion.php';

	$sqlx = "UPDATE profesional SET verFormulario = 'si' WHERE ci = '$ci' ";

	$resultado=mysqli_query($con, $sqlx);

	// header('Location: http://localhost:8080/recu/motor.php?codflujo=F1&codproceso=P5');
	// header('Location: index.php');

}

?>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Sistema Login</title>
</head>
<body style="background-color: #fed">






	



<h2 class="text-center" style="color: black;">SISTEMA PAGO DE NIT</h2>
<div class="card container rounded-4 text-center col-3">
	<h4>Datos Profesisonal</h4>
	<ul style="text-align: left;">
		<li>NIT: <?php echo $nit; ?></li>
		<li>Ci: <?php echo $ci;?></li>
		<li>Nombre: <?php echo $nombre;?></li>
		<li>Apellido: <?php echo $apellido;?></li>

	</ul>
	<br>

	<input type="hidden" name="ci" value="<?php echo $ci;?>">

	<h4>Detalle Formulario</h4>


<form action="" method="get">
	
	<?php
	$sql1 = "select * from tramites where ci = '$ci'";
	$result=mysqli_query($con, $sql1);
		if ($result->num_rows > 0) {
		    // Crear la tabla HTML
		    echo "<table border='1'>
		            <tr>
		                <th>ci</th>
		                <th>operacion</th>
		                <th>monto</th>
		            </tr>";

		    // Recorrer los resultados y mostrarlos en la tabla
			    while ($row = $result->fetch_assoc()) {
			        echo "<tr>
			                <td>{$row['ci']}</td>
			                <td>{$row['operacion']}</td>
			                <td>{$row['monto']}</td>
			             </tr>";
			    }

		    echo "</table>";

		   }
	?>
	<br>
	<input type="hidden" name="ci" value="<?php echo $ci; ?>">
	<input class="btn btn-primary" type="submit" name="aprobar" value="Aprobar Formulario">
	<br><br>

	<button class="btn btn-primary"  onclick="cerrarVentana()">Salir</button>
	<br>
</form>
<br>

</div>

<script>
function cerrarVentana() {
    window.close();
}

</script>
</body>



</html>