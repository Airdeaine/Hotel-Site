<?php
namespace Hotel\models;

class InfosPratiquesModel extends DbModels
{

    public function getInfosPratiques()
    {
        return $this->db->query('SELECT horaire FROM horaires')->fetchAll();
    }

}
