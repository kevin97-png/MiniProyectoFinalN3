<?php

try{
    $mysqli = new mysqli("localhost", "root", "", "login_db");
}catch(mysqli_sql_exception $error) {
    echo "ERROR DE CODIGO ". $error->getMessage();
}