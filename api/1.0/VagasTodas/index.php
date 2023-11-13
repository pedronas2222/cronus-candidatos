<?php
include("../Autenticador/conn.php");

    // Obter o parâmetro de ordem (ascendente ou descendente) da URL
    //$jobId = $_GET['jobId'];

    // Definir o número máximo de registros por página
    $registrosPorPagina = 10;

    // Obter o número da página da URL, padrão para 1 se não estiver definido
    $pagina = isset($_GET['pagina']) ? $_GET['pagina'] : 0;
    // $pagina_atual = $_COOKIE['paginaAtual']; // paginal atual da paginação
    // Define o cookie
    setcookie("paginaAtual", $pagina, 3600);

    // Calcular o deslocamento com base no número da página
    $offset = ($pagina - 1) * $registrosPorPagina;

    // Consulta SQL para buscar os dados da tabela com paginação
    $sql = "SELECT * FROM tab_vagas LIMIT $registrosPorPagina OFFSET $offset";
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

