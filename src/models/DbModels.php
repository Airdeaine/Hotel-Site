<?php
namespace Hotel\models;

use Hotel\app\Database;

class DbModels
{

    protected $db;

    public function __construct()
    {
        $this->db = new Database;
    }

}
