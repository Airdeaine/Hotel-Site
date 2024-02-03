<?php
require '../vendor/autoload.php';
use Hotel\controllers\HotelController;
use Hotel\controllers\TarifsController;
use Hotel\controllers\GalerieController;
use Hotel\controllers\TourismeController;
use Hotel\controllers\ReservationsController;
use Hotel\controllers\InfosPratiquesController;
use Hotel\controllers\MentionsLegalesController;

$url = ($_GET['url']) ?? null;

$url = explode("/", filter_var($url, FILTER_SANITIZE_URL));

$ctrl_url = $url[0] ?? null;
$action_url = ($url[1]) ?? 'index';
$param1_url = ($url[2]) ?? null;

if ($ctrl_url == "chambres") {

    $controller = new Hotel\controllers\ChambresController();
    $controller->index();

} elseif ($ctrl_url == "galerie") {

    $controller = new GalerieController();
    $controller->index();
} elseif ($ctrl_url == "tourisme") {

    $controller = new TourismeController();
    $controller->index();

} elseif ($ctrl_url == "tarifs") {

    $controller = new TarifsController();
    $controller->index();

} elseif ($ctrl_url == "infos_pratiques") {

    $controller = new InfosPratiquesController();
    $controller->index();

} elseif ($ctrl_url == "reservations") {

    $controller = new ReservationsController();
    $controller->index();

} elseif ($ctrl_url == "mentions_legales") {

    $controller = new MentionsLegalesController();
    $controller->index();

} else {
    $controller = new HotelController();
    $controller->index();
}
