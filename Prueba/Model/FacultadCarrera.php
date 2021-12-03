<?php
namespace Phppot;

use Phppot\DataSource;

class FacultadCarrera
{
    private $ds;
    
    function __construct()
    {
        require_once __DIR__ . './../lib/DataSource.php';
        $this->ds = new DataSource();
    }
    
 
    public function getAllFacultad()
    {
        $query = "SELECT * FROM facultad";
        $result = $this->ds->select($query);
        return $result;
    }
    
  
    public function getCarreraByFacultadId($facultadId)
    {
        $query = "SELECT * FROM carreras WHERE facultad_id = ?";
        $paramType = 'd';
        $paramArray = array(
            $facultadId
        );
        $result = $this->ds->select($query, $paramType, $paramArray);
        return $result;
    }
}