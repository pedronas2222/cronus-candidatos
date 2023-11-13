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

// Obter o parâmetro de ordem (ascendente ou descendente) da URL
$order = $_GET['order'];

// Consulta SQL para buscar os dados da tabela
$sql = "SELECT * FROM tab_pessoas ORDER BY DataCadastro $order";
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
