<?php
namespace Hotel\models;

class TourismeModel extends DbModels
{

    public function getTourismeSorties()
    {
        return $this->db->query('SELECT titre, description, photo, lien FROM bloc_tourisme_sorties ORDER BY ordre')->fetchAll();
    }

    public function getTourismeMonuments()
    {
        return $this->db->query('SELECT titre, description, photo, lien FROM bloc_tourisme_monuments ORDER BY ordre')->fetchAll();
    }

}
