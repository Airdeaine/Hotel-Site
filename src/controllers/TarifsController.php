<?php
namespace Hotel\controllers;

use Hotel\models\TarifsModel;

class TarifsController extends Controller
{
    private $tarifs;

    public function __construct()
    {
        $this->tarifs = new TarifsModel;
    }

    private function getTarifsChambres()
    {
        return $this->tarifs->getTarifsChambres();
    }

    private function getTarifsSupplements()
    {
        return $this->tarifs->getTarifsSupplements();
    }

    private function getTarifsOptions($id_chambre)
    {
        return $this->tarifs->getTarifsOptions($id_chambre);
    }

    public function index()
    {
        $tarifs_options = [];
        $tarifs_chambres_sans_les_options = $this->getTarifsChambres();
        $tarifs_supplements = $this->getTarifsSupplements();

        foreach ($tarifs_chambres_sans_les_options as $tarif):

            $tarif['options'] = $this->getTarifsOptions($tarif['id']);

            $tarifs_chambres[] = $tarif;

        endforeach;

        $this->render('tarifs', compact('tarifs_chambres', 'tarifs_supplements', 'tarifs_options'));

    }

}
