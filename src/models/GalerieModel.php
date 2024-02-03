<?php
namespace Hotel\models;

class GalerieModel extends DbModels
{

    public function getGalerie()
    {
        return $this->db->query('SELECT id, photo, alt FROM bloc_galerie')->fetchAll();
    }

}
