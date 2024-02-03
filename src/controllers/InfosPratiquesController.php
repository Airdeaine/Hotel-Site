<?php
namespace Hotel\controllers;

use Hotel\models\InfosPratiquesModel;

class InfosPratiquesController extends Controller
{

    private $infospratiques;

    public function __construct()
    {
        $this->infospratiques = new InfosPratiquesModel;
    }

    private function getInfosPratiques()
    {
        return $this->infospratiques->getInfosPratiques();
    }

    public function index()
    {

        $infospratiques = $this->getInfosPratiques();
        $this->render('infos_pratiques', compact('infospratiques'));

    }

}
