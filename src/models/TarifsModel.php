<?php
namespace Hotel\models;

use PDO;

class TarifsModel extends DbModels
{

    public function getTarifsChambres()
    {
        return $this->db->query('SELECT id, titre, sous_titre, tarif FROM bloc_tarif_chambre ORDER BY ordre')->fetchAll(PDO::FETCH_ASSOC);

    }

    public function getTarifsSupplements()
    {
        return $this->db->query('SELECT id, nom, tarif FROM bloc_tarif_supplements ORDER BY ordre')->fetchAll();

    }

    public function getTarifsOptions($id_chambre)
    {

        return $this->db->query('SELECT  options, tarif FROM bloc_tarif_chambre_options WHERE id_tarif_chambre=?', [$id_chambre])->fetchAll();

    }

}
