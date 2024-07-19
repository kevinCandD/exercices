<?php

require_once('libraries/Database.php');

class User
{

    private $id;
    private $name;
    public function __construct(int $id){
        $db = new Database();

        $user = $db->query("SELECT * FROM user WHERE id=$id");
        if(!$user) new Exception("User not found");

        $this->name = $user[0]["name"];
        $this->id = $user[0]["id"];
    }

    public function getName(): string
    {
        return $this->name;
    }

    // récupérer les voitures associées à l'utilisateur
    public function getCars(): array
    {
        return [];
    }
}