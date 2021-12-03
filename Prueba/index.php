<?php
namespace Phppot;

use Phppot\FacultadCarrera;
require_once __DIR__ . '/Model/FacultadCarrera.php';
$facultadcarrera = new FacultadCarrera();
//$facultadResult = $facultadCarrera->getAllFacultad();
?>
<html>
<head>
<TITLE>Bienvenido a la UCSM</TITLE>
<head>
<link href="./assets/css/style.css" rel="stylesheet" type="text/css" />
<script src="./vendor/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
<script>
function getCarrera(val) {
    $("#loader").show();
	$.ajax({
	type: "POST",
	url: "./ajax/get-facultad-carrera.php",
	data:'facultad_id='+val,
	success: function(data){
		$("#carrera-lista").html(data);
		$("#loader").hide();
	}
	});
}
</script>
</head>
<body>
    <div class="frmDronpDown">
        <div class="row">
            <label>Facultad:</label><br /> <select name="facultad"
                id="facultad-lista" class="demoInputBox"
                onChange="getCarrera(this.value);">
                <option value="">Seleccionar Facultad</option>
<?php
foreach ($facultadResult as $fac) {
    ?>
<option value="<?php echo $fac["id"]; ?>"><?php echo $fac["nombre_facultad"]; ?></option>
<?php
}
?>
</select>
        </div>
        <div class="row">
            <label>State:</label><br /> <select name="state"
                id="carrera-lista" class="demoInputBox">
                <option value="">Selecciona Carrera</option>
            </select> <img id="loader" src="./images/loader.gif" />
        </div>
    </div>
</body>
</html>