<?php
namespace Hotel\controllers;

use Hotel\models\TourismeModel;

class TourismeController extends Controller
{

    private $tourisme;

    public function __construct()
    {
        $this->tourisme = new TourismeModel;
    }

    private function getTourismeSorties()
    {
        return $this->tourisme->getTourismeSorties();
    }

    private function getTourismeMonuments()
    {
        return $this->tourisme->getTourismeMonuments();
    }

    public function index()
    {

        $tourisme_sorties = $this->getTourismeSorties();
        $tourisme_monuments = $this->getTourismeMonuments();

        $this->render('tourisme', compact('tourisme_sorties', 'tourisme_monuments'));

    }

}
