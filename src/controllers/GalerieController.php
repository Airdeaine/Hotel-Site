<?php
namespace Hotel\controllers;

use Hotel\models\GalerieModel;

class GalerieController extends Controller
{

    private $galerie;

    public function __construct()
    {
        $this->galerie = new GalerieModel;
    }

    private function getGalerie()
    {
        return $this->galerie->getGalerie();
    }

    public function index()
    {
        $galerie = $this->getGalerie();

        $this->render('galerie', compact('galerie'));

    }
}
