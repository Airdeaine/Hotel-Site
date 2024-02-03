<?php
namespace Hotel\controllers;

use Hotel\models\ChambresModel;

class ChambresController extends Controller
{

    private $chambres;

    public function __construct()
    {
        $this->chambres = new ChambresModel;
    }

    private function getChambreTexte()
    {
        return $this->chambres->getChambreTexte();
    }

    public function index()
    {
        $chambres_texte = mb_strtoupper($this->getChambreTexte());

        $this->render('chambres', compact('chambres_texte'));

    }

}
