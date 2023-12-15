<?php
session_start();
$ci = $_SESSION['ci'];

$sql = "select nit from profesional where ci='$ci'";
$resultado=mysqli_query($con, $sql);
$fila = mysqli_fetch_array($resultado);
$nitpro = $fila['nit'];
$veri = $nitpro[6];

include 'coneccion.php';
$sql1 = "select fecha from fecha where id = 1 ";
$resultado1=mysqli_query($con, $sql1);
$fila1 = mysqli_fetch_array($resultado1);
$fecha = $fila1['fecha'];
$verifecha = $fecha[0];


?>


<?php


if($veri==$verifecha){
	?>

		<h3>Sistema de pagos disponible </h3>
		<input type="hidden" name="pregunta" value="si">
		<input class="btn btn-primary" type="submit" value="Siguiente" id="siguiente" name='Siguiente'>


	<?php
}else{
		?>
		<h3>Sistemas de pago No disponible</h3>
		<input type="hidden" name="pregunta" value="no">
		<input class="btn btn-primary" type="submit" value="Siguiente" id="siguiente" name='Siguiente'>
	<?php
}



?>




