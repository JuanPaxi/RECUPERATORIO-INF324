<?php
session_start();

$ci = $_SESSION['ci'];

$sql = "select * from profesional where ci = '$ci'";
$resultado=mysqli_query($con, $sql);
$fila = mysqli_fetch_array($resultado);

$nit = $fila['nit']; 
$ci = $fila['ci'];
$nombre = $fila['nombre'];
$apellido = $fila['apellido'];
// $nacionalidad = $fila['nacionalidad'];


$sql1 = "select * from tramites where ci = '$ci'";
$resultado1=mysqli_query($con, $sql1);
$fila1 = mysqli_fetch_array($resultado1);
$pago = $fila1['monto'];

$iva = floatval($pago)*0.13;
$ite = floatval($pago)*0.03;


?>



<h2 class="text-center" style="color: black;">SISTEMA PAGO DE NIT</h2>
<div class="card container rounded-4 text-center col-3">
	<h4>Datos Profesisonal</h4>
	<ul style="text-align: left;">
		<li>NIT: <?php echo $nit; ?></li>
		<li>Ci: <?php echo $ci;?></li>
		<li>Nombre: <?php echo $nombre;?></li>
		<li>Apellido: <?php echo $apellido;?></li>
	</ul>





		<h4>Detalles del Impuesto</h4>

	<ul style="text-align: left;">
		<li>Total pago : <?php echo $pago; ?></li>
		<li>Impuesto IVA: <?php echo $iva; ?></li>
		<li>Impuesto IVA: <?php echo $ite;?></li>
	</ul>

	<br>
	<input class="btn btn-primary" type="submit" value="Salir " id="siguiente" name='Siguiente'>
	<br>
</div>