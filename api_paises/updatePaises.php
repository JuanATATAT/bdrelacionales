<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'PUT') {
    http_response_code(405);
    echo json_encode(['error' => 'Solo se permite el método PUT']);
    exit();
}

require 'conexionSakila.php';

$input = json_decode(file_get_contents('php://input'), true);
if ($input === null) {
    http_response_code(400);
    echo json_encode(["error" => "JSON inválido"]);
    exit();
}

if (!isset($input["id"], $input["lengua"], $input["capital"], $input["nacionalidad"], $input["numero_habitantes"], $input["continentes"])) {
    http_response_code(400);
    echo json_encode(["error" => "Datos incompletos"]);
    exit();
}

$id = intval($input["id"]);
if ($id <= 0) {
    http_response_code(400);
    echo json_encode(["error" => "ID inválido"]);
    exit();
}

$lengua = $conn->real_escape_string($input["lengua"]);
$capital = $conn->real_escape_string($input["capital"]);
$nacionalidad = $conn->real_escape_string($input["nacionalidad"]);
$numero_habitantes = intval($input["numero_habitantes"]);
$continentes = $conn->real_escape_string($input["continentes"]);

$query = "UPDATE paises SET lengua = ?, capital = ?, nacionalidad = ?, numero_habitantes = ?, continentes = ? WHERE id = ?";

$st = $conn->prepare($query);

if (!$st) {
    http_response_code(500);
    echo json_encode(["error" => "Error en la consulta", "detalle" => $conn->error]);
    exit();
}

$st->bind_param("sssisi", $lengua, $capital, $nacionalidad, $numero_habitantes, $continentes, $id);

if ($st->execute()) {
    if ($st->affected_rows > 0) {
        echo json_encode(["message" => "País actualizado correctamente"]);
    } else {
        http_response_code(400);
        echo json_encode(["error" => "No se encontró el país con id: $id"]);
    }
} else {
    http_response_code(500);
    echo json_encode(["error" => "Error al ejecutar", "detalle" => $st->error]);
}

$st->close();
$conn->close();
