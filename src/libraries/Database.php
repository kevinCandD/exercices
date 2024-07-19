<?php

class Database
{

    private ?PDO $conn = null;

    function __construct()
    {
        $servername = 'db';
        $username = 'root';
        $password = 'secret';
        $dbname = 'abc';

        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->conn = $conn;
    }

    public function query($sql, $fetchMode = PDO::FETCH_ASSOC)
    {
        $res = "";
        try {
            $res = $this->conn->query($sql, $fetchMode)->fetchAll();
        } catch (PDOException $e) {
            $res = false;
        }
        return $res;
    }
}