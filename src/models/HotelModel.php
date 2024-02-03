<?php
namespace Hotel\models;

class HotelModel extends DbModels
{

    public function getInfoHotel()
    {
        return $this->db->query('SELECT contenu FROM bloc_hotel')->fetch()->contenu;
    }

    public function getHotelLesPlus()
    {
        return $this->db->query('SELECT id, icone, alt FROM hotel_les_plus ORDER BY ordre')->fetchAll();
    }

    public function getHotelAdherents()
    {
        return $this->db->query('SELECT id, icone, alt FROM hotel_adherent ORDER BY ordre')->fetchAll();
    }

}
