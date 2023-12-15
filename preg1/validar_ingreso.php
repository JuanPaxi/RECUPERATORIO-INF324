<?php
	session_start();
	$_SESSION['ci']=$_POST["usuario"];
	
    $usuario=$_POST["usuario"];
	$clave=$_POST["clave"];
	$rol = $$_POST['rol'];


	include 'coneccion.php';
	$sql = "select * from usuarios where ci='$usuario' and clave='$clave'";
	
	$resultado=mysqli_query($con, $sql);

	if($resultado->num_rows > 0){
		session_start();
		$fila = mysqli_fetch_array($resultado);
		$_SESSION["ci"]=$fila["ci"];

		if($fila['rol']=='profesional'){
			header('Location:  motor.php?'.'codflujo=F1&codproceso=P1');
			exit();
		}else{
			header('Location:  motor.php?'.'codflujo=F1&codproceso=P5');
			exit();
		}
		
	}else{
		header("Location: index.php");
		exit();
	}
// echo "hola mundo";
?>

