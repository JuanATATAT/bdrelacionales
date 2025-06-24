<?php

    $host = '192.localhost';
    $user = 'root';
    $pass = '';
    $dbname = 'paisesdb';

    //crear conexión
    $conn = new mysqli('localhost', 'root', '', 'paisesdb');

    //verificar conexión
    if($conn->connect_error){
        http_response_code(500);
        echo json_encode(['error' => 'Error de cpnexión: ' . $conn->connect_error]);
        exit;
    }

    //consulta mysql

    $sql = "SELECT * FROM paises";
    $result= $conn->query($sql);

    $actors = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $actors[] = $row;
        }
    }


    $conn->close();


    header("Content-Type: application/json");
    echo json_encode($actors);


?>
