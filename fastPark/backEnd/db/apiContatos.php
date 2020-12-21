<?php 

    function listarContatos($id)
    {
        
        /*Abre a conexão com o BD*/

        //Import do arquivo de Variaveis e Constantes
        require_once('../modulo/confing.php');

        //Import do arquivo de função para conectar no BD
        require_once('conexaoMysql.php');

        //chama a função que vai estabelecer a conexão com o BD
        if(!$conex = conexaoMysql())
        {
            echo("<script> alert('".ERRO_CONEX_BD_MYSQL."'); </script>");
            //die; //Finaliza a interpretação da página
        }

            $sql = "	select tblentradaveiculo.*
                            from tblentradaveiculo
                            where idEntradaVeiculo
                   
                        ";
        
         
        
            //Validação para filtrar pelo ID
            if($id > 0)
                $sql = $sql . " and tblentradaveiculo.idEntradaVeiculo = ".$id;
            
                       
            
            $sql = $sql . " and idVaga = 1 order by tblentradaveiculo.idEntradaVeiculo desc";
                  
              
            $select = mysqli_query($conex, $sql);
        
            

            while($rsContatos = mysqli_fetch_assoc($select))
            {
                
                $dados [] = array (
                
                        "idEntradaVeiculo"      => $rsContatos['idEntradaVeiculo'],
                        "modelo"           => $rsContatos['modelo'],
                        "placa"           => $rsContatos['placa'],
                        "cor"           => $rsContatos['cor'],
                        "idVaga"        => $rsContatos['idVaga'],
                        "idValor"          => $rsContatos['idValor'],
                        "dataEntrada"       => $rsContatos['dataEntrada'],
                        "horarioEntrada"          => $rsContatos['horarioEntrada'],
                        "dataSaida"              => $rsContatos['dataSaida'],
                        "horarioSaida"           => $rsContatos['horarioSaida'],
                        "nomeCliente"            => $rsContatos['nomeCliente'],
                        "valorPago"            => $rsContatos['valorPago']
                    );
                
             
            
             

            }
          
        /*
            $headerDados = array (
                "status"    => "success",
                "data"      => "2020-11-25",
                "contatos"  => $dados
            
            ); 
            */
            
        if(isset($dados))
            $listContatosJSON = convertJSON($dados);
        else
            return false;
        
                
        
        //Verifica se foi gerado um arquivo JSON 
        if(isset($listContatosJSON))
            return $listContatosJSON;
        else
            return false;
     
    }
    function listarContatosCheckout($id) {
         require_once('../modulo/confing.php');

        //Import do arquivo de função para conectar no BD
        require_once('conexaoMysql.php');

        //chama a função que vai estabelecer a conexão com o BD
        if(!$conex = conexaoMysql())
        {
            echo("<script> alert('".ERRO_CONEX_BD_MYSQL."'); </script>");
            //die; //Finaliza a interpretação da página
        }

            $sql = "	select tblentradaveiculo.*
                            from tblentradaveiculo
                            where idEntradaVeiculo
                   
                        ";
        
         
        
            //Validação para filtrar pelo ID
            if($id > 0)
                $sql = $sql . " and tblentradaveiculo.idEntradaVeiculo = ".$id;
            
                       
            
            $sql = $sql . " and idVaga = 2 order by tblentradaveiculo.idEntradaVeiculo desc";
                  
              
            $select = mysqli_query($conex, $sql);
        
            

            while($rsContatos = mysqli_fetch_assoc($select))
            {
                
                $dados [] = array (
                
                        "idEntradaVeiculo"      => $rsContatos['idEntradaVeiculo'],
                        "modelo"           => $rsContatos['modelo'],
                        "placa"           => $rsContatos['placa'],
                        "cor"           => $rsContatos['cor'],
                        "idVaga"        => $rsContatos['idVaga'],
                        "idValor"          => $rsContatos['idValor'],
                        "dataEntrada"       => $rsContatos['dataEntrada'],
                        "horarioEntrada"          => $rsContatos['horarioEntrada'],
                        "dataSaida"              => $rsContatos['dataSaida'],
                        "horarioSaida"           => $rsContatos['horarioSaida'],
                        "nomeCliente"            => $rsContatos['nomeCliente'],
                        "valorPago"            => $rsContatos['valorPago']
                    );
                
             
            
             

            }
          
        /*
            $headerDados = array (
                "status"    => "success",
                "data"      => "2020-11-25",
                "contatos"  => $dados
            
            ); 
            */
            
        if(isset($dados))
            $listContatosJSON = convertJSON($dados);
        else
            return false;
        
                
        
        //Verifica se foi gerado um arquivo JSON 
        if(isset($listContatosJSON))
            return $listContatosJSON;
        else
            return false;      
    }
    function convertJSON($objeto)
    {
        //forçamos o cabeçalho do arquivo a ser aplicação do tipo JSON
        header("content-type:application/json");

        //Converte a array de dados em JSON
        $listJSON = json_encode($objeto);
        
        return $listJSON;
    }
    function excluirContato($id) 
    {
                    require_once('../modulo/confing.php');

                    //Import do arquivo de função para conectar no BD
                    require_once('conexaoMysql.php');

                    //chama a função que vai estabelecer a conexão com o BD
                    if(!$conex = conexaoMysql())
                    {
                        echo("<script> alert('".ERRO_CONEX_BD_MYSQL."'); </script>");
                        //die; //Finaliza a interpretação da página
                    }
                    
                    //Recebendo o id para a exclusão
                   

                    $sql = "delete from tblentradaveiculo 
                            where idEntradaVeiculo = " . $id;

                    //Executa no BD o Script SQL

                    if (mysqli_query($conex, $sql))
                    {
                      
                        return true;
                    }
                    else
                         return false;
                   
     }
    function atualizarContato($id, $dadosContatos){
    
      //Import do arquivo de Variaveis e Constantes
        require_once('../modulo/confing.php');

        //Import do arquivo de função para conectar no BD  
        require_once('conexaoMysql.php');

        if(!$conex = conexaoMysql())
        {
            echo("<script> alert('".ERRO_CONEX_BD_MYSQL."'); </script>");
            //die; //Finaliza a interpretação da página
        }

            $sql = "update tblentradaveiculo set
                        dataSaida= current_date() ,
                        horarioSaida = current_time(),
                        idVaga = 2
                        where idEntradaVeiculo = " . $id;


        
        
            if (mysqli_query($conex, $sql))
                if(mysqli_affected_rows($conex) > 0)
                return true;
            else
                return false;

            
        
        }
       
    function inserirContato($dadosContatos) {
        /*Abre a conexão com o BD*/

            //Import do arquivo de Variaveis e Constantes
            require_once('../modulo/confing.php');

            //Import do arquivo de função para conectar no BD
            require_once('conexaoMysql.php');

            //Import do arquivo que realiza o upload de uma Fot
            //chama a função que vai estabelecer a conexão com o BD
         if(!$conex = conexaoMysql())
            {
                echo("<script> alert('".ERRO_CONEX_BD_MYSQL."'); </script>");
                //die; //Finaliza a interpretação da página
            }

            /*Variaveis*/
            $nomeCliente = (string) null;
            $placa = (string) null;
            $cor = (string) null;
            $modelo = (string) null;
        
            $idVaga = (string) null;
            $idValor = (string) null;
       

            //converte json para uma array

                 $nomeCliente = $dadosContatos['nomeCliente'];
            $placa = $dadosContatos['placa'];
            $cor = $dadosContatos['cor'];
            $modelo = $dadosContatos['modelo'];
        
            $idVaga = $dadosContatos['idVaga'];
            $idValor = $dadosContatos['idValor'];



            $sql = "insert into tblentradaveiculo 
                        (
                            nomeCliente,
                            modelo,
                            placa,
                            cor,
                            
                            dataEntrada, 
                            horarioEntrada, 
                            dataSaida, 
                            horarioSaida, 
                            idValor,
                            idVaga
                         
                        )
                        values
                        (
                            '". $nomeCliente ."',
                            '".$modelo."',
                            '".$placa."',
                            '".$cor."',
                            current_date(),
                            current_time(), 
                            null,
                            null ,
                            '". $idValor ."', 
                            '". $idVaga ."'
                        )
                    ";
            //Executa no BD o Script SQL

            if (mysqli_query($conex, $sql))
            
                return true;
            else
                return false;
    }

    function atualizarValor($id, $valorDado) {
              //Import do arquivo de Variaveis e Constantes
            require_once('../modulo/confing.php');

            //Import do arquivo de função para conectar no BD
            require_once('conexaoMysql.php');
            //Import do arquivo que realiza o upload de uma Fot
            //chama a função que vai estabelecer a conexão com o BD
         if(!$conex = conexaoMysql())
            {
                echo("<script> alert('".ERRO_CONEX_BD_MYSQL."'); </script>");
                //die; //Finaliza a interpretação da página
            }

            /*Variaveis*/
                $valor = (string) null;
                 $valor = $valorDado['primeiraHora'];
        
                        
        $sql = "update tblvalor set primeiraHora = '". $valor ."' where idValor = " . $id;

            if (mysqli_query($conex, $sql))
                 
                return true;
            else
                return false;
    }
    
    function valorPagar($idPagar) {
          require_once('../modulo/confing.php');

            //Import do arquivo de função para conectar no BD
            require_once('conexaoMysql.php');

            //Import do arquivo que realiza o upload de uma Fot
            //chama a função que vai estabelecer a conexão com o BD
            if(!$conex = conexaoMysql())
            {
                echo("<script> alert('".ERRO_CONEX_BD_MYSQL."'); </script>");
                //die; //Finaliza a interpretação da página
            }
        
        
           
        $sql = "select hour(timediff(horarioEntrada,horarioSaida)) as diferenca
                from tblentradaveiculo
                where idEntradaVeiculo = " .$idPagar;
                
                $select = mysqli_query($conex, $sql);
         
               $pagarDado = mysqli_fetch_assoc($select);
            
                $guarda = $pagarDado['diferenca'];
        
        $sql2 = "select primeiraHora from tblvalor
                    where idValor = 2;";
                 $select2 = mysqli_query($conex, $sql2);
         
                $amarzenarFirst = mysqli_fetch_assoc($select2);
            
                    $firstConta = $amarzenarFirst['primeiraHora'];
                  
       
  
        
        $sql3  = "select primeiraHora from tblvalor
                            where idValor = 1;";
        
                $select3 = mysqli_query($conex, $sql3);
         
                $armarzenarUltimo = mysqli_fetch_assoc($select3);
    
                $secondConta = $armarzenarUltimo['primeiraHora'];
           
        
        
            if($guarda == 0) {
                $resultado = $guarda + $secondConta;
            }
            else {
                $resultado = ($guarda - 1) * $firstConta + $secondConta;
            }
        
        
//
//                $resultado = $dadosContatos['valorPago'];

               
            $sql5 = "update tblentradaveiculo set valorPago = '".$resultado."'
                      where idEntradaVeiculo  = " . $idPagar;
        
        
            if (mysqli_query($conex, $sql5))
                return true;
            else
                return false;
    }

    function relatorio($idData) {
          require_once('../modulo/confing.php');

            //Import do arquivo de função para conectar no BD
            require_once('conexaoMysql.php');

            //Import do arquivo que realiza o upload de uma Fot
            //chama a função que vai estabelecer a conexão com o BD
            if(!$conex = conexaoMysql())
            {
                echo("<script> alert('".ERRO_CONEX_BD_MYSQL."'); </script>");
                //die; //Finaliza a interpretação da página
            }
        
            $year = date('Y');
            $monty = date('Y-m');
            $day = date('Y-m-d');
        
         
            $sql = "select sum(valorPago) as totalPago from tblentradaveiculo where dataEntrada like   '%".$year."%'";
            
            $select = mysqli_query($conex, $sql);
              
            $returnData = mysqli_fetch_assoc($select);
        
            $relatorioYear = $returnData['totalPago'];
        
            //PEGAR O RELATORIO DO MES
             
            $sql2 = "select sum(valorPago) as totalPago from tblentradaveiculo where dataEntrada like   '%".$monty."%'";
            
            $select2 = mysqli_query($conex, $sql2);
              
            $returnMes = mysqli_fetch_assoc($select2);
        
            $relatorioMes = $returnMes['totalPago'];
        
            
        

        
            $sql3 = "select sum(valorPago) as totalPago from tblentradaveiculo where dataEntrada like  '%".$day."%'";        
            $select3 = mysqli_query($conex, $sql3);
              
            $returnDay = mysqli_fetch_assoc($select3);
        
            $relatorioDay = $returnDay['totalPago'];
        
            
             $dados [] = array (      
                        "totalPago"  => $relatorioYear,
                       "totalPagoMes" => $relatorioMes,
                       "totalPagoDay" => $relatorioDay
            );
        
        if(isset($dados))
            $listContatosJSON = convertJSON($dados);
        else
            return false;
        
          if(isset($listContatosJSON))
            return $listContatosJSON;
        else
            return false;
     
        
    }

    function convertArray($objeto){
    
        $listArray = json_decode($objeto);
        
        return $listArray;
    }
    
   
?>