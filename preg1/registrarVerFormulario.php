<?php
$ci = $_GET['ci'];

if(isset($_GET['aprobar'])){

	

	include 'coneccion.php';

	$sqlx = "UPDATE profesional SET verFormulario = 'si' WHERE ci = '$ci' ";

	$resultado=mysqli_query($con, $sqlx);

	// header('Location: http://localhost:8080/recu/motor.php?codflujo=F1&codproceso=P5');
	// header('Location: index.php');

}

?>
