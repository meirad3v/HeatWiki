<?php 
$host = "localhost";
$usuario = "ADMIN";
$senha = "admin";
$banco = "HeatWiki";
$bank = new mysqli($host, $usuario, $senha, $banco);
if($bank->connect_errno){
    die("Falha na conexão".$bank->connect_errno);
}
?>