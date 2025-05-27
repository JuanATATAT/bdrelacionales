<?php
    header("content-Type: application/json");
    header("Access-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Juan Mecanico", "correo" => "juan@gmail.com"],
        ["id" => 1, "nombre" => "Luis Verga", "correo" => "luis@gmail.com"],
        ["id" => 1, "nombre" => "Yuriel Torres", "correo" => "yuriel@gmail.com"],
    ];

    echo json_encode($usuarios);


?>
