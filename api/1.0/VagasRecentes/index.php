<?php
    include("../Autenticador/conn.php");

    // Obter o parâmetro de ordem (ascendente ou descendente) da URL
    $order = $_GET['order'];

    // Consulta SQL para buscar os dados da tabela
    $sql = "SELECT * FROM tab_vagas ORDER BY DataPostagem $order";
    $result = $conn->query($sql);

    $data = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }

    // Enviar os dados como resposta em JSON
    echo json_encode($data);

    $conn->close();
?>