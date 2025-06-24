<?php

    $host = '192.localhost';
    $user = 'root';
    $pass = '';
    $dbname = 'paisesdb';

    $conn = new mysqli('localhost', $user, $pass, $dbname);

    if($conn->connect_error){
        http_response_code(500);
        echo json_encode(['error' => 'Error de conexión: ' . $conn->connect_error]);
        exit;
    }


    $sql = "SELECT * FROM paises";
    $result= $conn->query($sql);

    $paises = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $paises[] = $row;
        }
    }

    $conn->close();

    header("Content-Type: application/json");
    echo json_encode($paises);

?>
