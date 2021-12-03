<?php
namespace Phppot;

use Phppot\FacultadCarrera;
if (! empty($_POST["facultad_id"])) {
    
    $facultadId = $_POST["facultad_id"];
    
    require_once __DIR__ . '/../Model/FacultadCarrera.php';
    $facultadcarrera = new FacultadCarrera();
    $carreraResult = $facultadcarrera->getCarreraByFacultadId($facultadId);
    ?>
<option value="">Selecciona Facultad</option>
<?php
    foreach ($carreraResult as $carrera) {
        ?>
<option value="<?php echo $carrera["id"]; ?>"><?php echo $carrera["nombre"]; ?></option>
<?php
    }
}
?>
