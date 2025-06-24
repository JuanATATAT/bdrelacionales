<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['error' => 'Solo método POST es permitido']);
    exit;
}

require 'conexionSakila.php';

$data = json_decode(file_get_contents('php://input'), true);

if (!isset($data['lengua'], $data['capital'], $data['nacionalidad'], $data['numero_habitantes'], $data['continentes'])) {
    http_response_code(400);
    echo json_encode(['error' => 'Faltan campos en el cuerpo de la solicitud']);
    exit;
}

$lengua = $data['lengua'];
$capital = $data['capital'];
$nacionalidad = $data['nacionalidad'];
$numero_habitantes = $data['numero_habitantes'];
$continentes = $data['continentes'];

$query = $conn->prepare(
    "INSERT INTO paises (lengua, capital, nacionalidad, numero_habitantes, continentes) VALUES (?, ?, ?, ?, ?)"
);

if (!$query) {
    http_response_code(500);
    echo json_encode(["error" => "Error al preparar la consulta"]);
    exit;
}

$query->bind_param("sssis", $lengua, $capital, $nacionalidad, $numero_habitantes, $continentes);

if ($query->execute()) {
    echo json_encode([
        "mensaje" => "País insertado correctamente",
        "pais_id" => $query->insert_id
    ]);
} else {
    http_response_code(500);
    echo json_encode([
        "error" => "Fallo en la inserción",
        "detalle" => $query->error
    ]);
}

$query->close();
$conn->close();
?>

