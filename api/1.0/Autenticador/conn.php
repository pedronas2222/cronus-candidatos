<?php

    // Conexão com o banco de dados (substitua pelos seus próprios detalhes de conexão)
    $servername = "dev.pedro.com";
    $username = "root";
    $password = "";
    $dbname = "dbcronus";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Conexão falhou: " . $conn->connect_error);
    }

?>