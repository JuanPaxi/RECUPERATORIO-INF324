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
$verFormulario = $fila['verFormulario'];
// $nacionalidad = $fila['nacionalidad'];

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
<h4 class="text-center" style="color: black;">Registrar Operaciones</h4>

<div class="card container rounded-4 text-center col-16">
	<label for="select">Op 1</label>
	<input type="text" name="operacion1" >
	<label for="select">monto</label>
	<input type="text" name="monto1" >

</div>
<input type="hidden" name="pregunta" value="<?php echo $verFormulario;?>">
<!-- <input type="hidden" name="registrar" value="ok"> -->
<input class="btn btn-primary" type="submit" value="Registrar" name='registrar'>

<?php

if($verFormulario=="si"){

	

	?>
	<input class="btn btn-primary" type="submit" value="Avanzar" id="siguiente" name='Siguiente'>
	<?php
}
?>






<!-- <input type="hidden" name="pregunta" value="si"> -->




