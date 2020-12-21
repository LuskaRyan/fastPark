<?php 
/********************************************************
    Objetivo: Configuração para conectar no BD MySql
    Data: 16/09/2020
    Autor: Marcel
*********************************************************/

function conexaoMysql ()
{
    /*
        Existem 3 formas de conexão com o BD
            
            mysql_connect() - Versão mais antiga (evitar de utilizar)
            
            mysqli_connect() - Versão mais atualizada e que possibilita uma melhor segurança e eficiencia.
            
            PDO() - Versão para conexão com o BD utlilizando programação Orientada a Objetos (Segurança muito mais eficiente)
    
    */
    
    /*Variaveis para conexão com o BD*/
    $server = (string) "localhost";
    $user = (string) "root";
    $password = (string) "bcd127";
    $dataBase = (string) "dbestacionamento";

    /*Cria a conexão com o BD MySQL*/
    if ($conexao = @mysqli_connect($server, $user, $password, $dataBase))
        return $conexao;
    else
        return false;

}


?>