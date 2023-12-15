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
$verPago = $fila['verPago'];

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
	<br>


	<h3>Pagar Tramite</h3>

	<input type="checkbox" name="pago" value="Activo"><br>
	<!-- <input class="text-center" type="submit" value="Anterior" id="anterior" name='Anterior'> -->
	<input type="hidden" name="pago" value="ok">

	<input class="btn btn-primary" type="submit" value="Pagar" id="siguiente" name='Siguiente'>
	<br>



</div>





<!-- <input type="hidden" name="pregunta" value="si"> -->