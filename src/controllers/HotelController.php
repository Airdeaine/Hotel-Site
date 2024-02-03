<?php
namespace Hotel\controllers;

use Hotel\models\HotelModel;

class HotelController extends Controller
{

    private $hotel;

    public function __construct()
    {
        $this->hotel = new HotelModel;
    }

    private function getHotelTexte()
    {
        return $this->hotel->getInfoHotel();
    }

    private function getHotelLesPlus()
    {
        return $this->hotel->getHotelLesPlus();
    }

    private function getHotelAdherents()
    {
        return $this->hotel->getHotelAdherents();
    }

    public function index()
    {
        $hotel_texte = mb_strtoupper($this->getHotelTexte());
        $hotel_les_plus = $this->getHotelLesPlus();
        $hotel_adherents = $this->getHotelAdherents();

        $this->render('hotel', compact('hotel_texte', 'hotel_les_plus', 'hotel_adherents'));

    }

}
