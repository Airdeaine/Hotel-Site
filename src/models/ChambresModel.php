<?php
namespace Hotel\models;

class ChambresModel extends DbModels
{

    public function getChambreTexte()
    {
        return $this->db->query('SELECT contenu FROM bloc_les_chambres')->fetch()->contenu;
    }

}
