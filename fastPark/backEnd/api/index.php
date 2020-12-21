<?php
    require_once ("vendor/autoload.php");

$app = new \Slim\App();

$app->get('/', function($request, $response, $args){
    return $response->getBody()->write('API DA FAMILIA');
    });

//ENDPOINT PARA BUSCAR todos os dados
$app->get('/dados', function($request, $response, $args){
    
      require_once('../db/apiContatos.php');
//
    //Função para Listar todos os Contatos
     if(isset($request->getQueryParams()['nome']))
    {
         $nome = $request->getQueryParams()['nome'];
       
        $listContatos = buscarContatos($nome);
    
        
    }
    else {
        $listContatos = listarContatos(0);
    }
    //Import do arquivo que vai buscar no BD
    
//    echo($request-> getQueryParams()['nome']);
  
    
    //Função para Listar todos os Contatos
    $listContatos = listarContatos(0);
    
  
    
    //Valida se houve retorno de dados do banco
    if($listContatos)
        return $response    ->withStatus(200)
                            ->withHeader('Content-Type', 'application/json')
                            ->write($listContatos);
    else
        return $response    ->withStatus(204);
});

//RECEBER OS DADOS PELA ID
$app->get('/dados/{id}', function($request, $response, $args){
    
    $id = $args['id'];
    
    //Import do arquivo que vai buscar no BD
    require_once('../db/apiContatos.php');
    
    //Função para Listar todos os Contatos
    $listContatos = listarContatos($id);
    
    //Valida se houve retorno de dados do banco
    if($listContatos)
        return $response    ->withStatus(200)
                            ->withHeader('Content-Type', 'application/json')
                            ->write($listContatos);
    else
        return $response    ->withStatus(204);
    
    
    
});

//
$app->get('/checkout', function($request, $response, $args){
    
      require_once('../db/apiContatos.php');
//
    //Função para Listar todos os Contatos
     if(isset($request->getQueryParams()['nomeCheckout']))
    {
         $nome = $request->getQueryParams()['nomeCheckout'];
       
        $listContatos = buscarContatos($nome);
    
        
    }
    else {
        $listContatos = listarContatosCheckout(0);
    }
    //Import do arquivo que vai buscar no BD
    
//    echo($request-> getQueryParams()['nome']);
  
    
    //Função para Listar todos os Contatos
    $listContatos = listarContatosCheckout(0);
    
  
    
    //Valida se houve retorno de dados do banco
    if($listContatos)
        return $response    ->withStatus(200)
                            ->withHeader('Content-Type', 'application/json')
                            ->write($listContatos);
    else
        return $response    ->withStatus(204);
});
//RECEBER OS DADOS DO CHECKOU OUT PELA ID


$app->get('/checkout/{id}', function($request, $response, $args){
    
    $id = $args['id'];
    
    //Import do arquivo que vai buscar no BD
    require_once('../db/apiContatos.php');
    
    //Função para Listar todos os Contatos
    $listContatos = listarContatosCheckout($id);
    
    //Valida se houve retorno de dados do banco
    if($listContatos)
        return $response    ->withStatus(200)
                            ->withHeader('Content-Type', 'application/json')
                            ->write($listContatos);
    else
        return $response    ->withStatus(204);
    
    
    
});

//RECEBER O VALOR PAGO
$app->get('/pagar/{idPagar}', function($request, $response, $args){
    
    $idPagar = $args['idPagar'];
    
    //Import do arquivo que vai buscar no BD
    require_once('../db/apiContatos.php');
    
    //Função para Listar todos os Contatos
    $listarValor = valorPagar($idPagar);
    
    //Valida se houve retorno de dados do banco
    if($listarValor)
        return $response    ->withStatus(200)
                            ->withHeader('Content-Type', 'application/json')
                            ->write($listarValor);
    else
        return $response    ->withStatus(204);
    
    
    
});


//END POINT PARA O RELATORIO
$app->get('/relatorio', function($request, $response, $args){
    
      require_once('../db/apiContatos.php');
//
    //Função para Listar todos os Contatos
     if(isset($request->getQueryParams()['nome']))
    {
         $nome = $request->getQueryParams()['nome'];
       
        $listContatos = buscarContatos($nome);
    
        
    }
    else {
        $listContatos = relatorio(0);
    }
    //Import do arquivo que vai buscar no BD
    
//    echo($request-> getQueryParams()['nome']);
  
    
    //Função para Listar todos os Contatos
    $listContatos = relatorio(0);
    
  
    
    //Valida se houve retorno de dados do banco
    if($listContatos)
        return $response    ->withStatus(200)
                            ->withHeader('Content-Type', 'application/json')
                            ->write($listContatos);
    else
        return $response    ->withStatus(204);
});




//ATUALIZAR O VALOR PAGO NA TABELA
$app->put('/pagar/{idPagar}', function($request, $response, $args){
    
   $idPagar = $args['idPagar'];
     
   $contentType = $request->getHeaderLine('Content-type', 'application/json');
    

    if($contentType == 'application/json'){
        
        $dadosContato = $request->getParsedBody();

            if($dadosContato == "" || $dadosContato == null){
                
                return $response    ->withStatus(400)
                                    ->withHeader('Content-type', 'application/json')
                                    ->write('
                                    
                                        {
                                        
                                        "status":"Fail",
                                        "message":"Não é possível fazer a atualização com dados nulos!"
                                        
                                        }
                                            ');
            }

            
    }
    
    
    require_once('../db/apiContatos.php');
    
    $retornoFuncao = valorPagar($idPagar);
    
    if($retornoFuncao){
        
        return $response    ->withStatus(200)
                            ->withHeader('Content-type', 'application/json')
                            ->write('
                            
                                    {
                                    
                                    "status":"Sucess",
                                    "message":"boa clan"
                                    
                                    }
                            
                                    ');
    } 
                    
     
    else{
        
        return $response    ->withStatus(400)
                            ->withHeader('Content-type', 'application/json')
                            ->write('   
                            
                                    {
                                    
                                    "status":"Fail",
                                    "message":"Contato inexistente."
                                    
                                    }
                            
                                    ');
    }
    
   });

//DELETE
$app->delete('/dados/{id}', function($request, $response, $args){

    $id = $args['id'];

    require_once('../db/apiContatos.php');


    $deletarContato = excluirContato($id);

    
    if($deletarContato)
        return $response -> withStatus(200)
                     ->withHeader('Content-Type', 'application/json')
                     ->write('{"Registro excluido"}');
    else
        return $response -> withStatus(400)
                     -> withHeader('Content-Type', 'application/json')
                        -> write ('{"Erro"}');
});

//END POINT PARA COLOCAR DADOS
$app->post('/dados', function($request, $response, $args){
    //recebe o content type da requisição
    $contentType = $request-> getHeaderLine('Content-Type');

    if($contentType == 'application/json') {
        $dadosJson = $request-> getParsedBody();
        
        if($dadosJson == "" || $dadosJson == null ) {

                return $response -> withStatus (400)
                -> write(' {
                            "fail",
                            "message :" "Dados enviados não podem ser nulos"
                        }');
            
        }
      
        else {
            // import do arquivo que vai inserir no banco de dados
            require_once('../db/apiContatos.php');
            // valida se os dados foram inseridos corretamente
            if(inserirContato($dadosJson))
                return $response -> withStatus (201)
                                -> withHeader('Content-Type', 'application/json')
                                -> write(json_encode($dadosJson));
            


            else 
            return $response -> withStatus(400)
                                -> withHeader('Content-Type', 'application/json')
                                -> write('{
                                        "status" "Fail, 
                                        "message:" "Falha ao inserir os dados"
                                        }');
        }

    }
    else {
        //Retorna erro no Content-type 
        return $response -> withStatus (400)
                        -> withHeader('Content-Type', 'application/json')
                        -> write(' {
                                        "fail",
                                        "message :" "Erro no Content-Type da mensagem"
                                    }');
    }
});

//END POINT PARA ATUALIZAR A SAIDA DO CLIENTE
$app->put('/dados/{id}', function($request, $response, $args){
    
   $id = $args['id'];
     
   $contentType = $request->getHeaderLine('Content-type', 'application/json');
    

    if($contentType == 'application/json'){
        
        $dadosContato = $request->getParsedBody();

            if($dadosContato == "" || $dadosContato == null){
                
                return $response    ->withStatus(400)
                                    ->withHeader('Content-type', 'application/json')
                                    ->write('
                                    
                                        {
                                        
                                        "status":"Fail",
                                        "message":"Não é possível fazer a atualização com dados nulos!"
                                        
                                        }
                                            ');
            }

            
    }
    
    
    require_once('../db/apiContatos.php');
    
    $retornoFuncao = atualizarContato($id, $dadosContatos);
    
    if($retornoFuncao){
        
        return $response    ->withStatus(200)
                            ->withHeader('Content-type', 'application/json')
                            ->write('
                            
                                    {
                                    
                                    "status":"Sucess",
                                    "message":"boa clan"
                                    
                                    }
                            
                                    ');
    } 
                    
     
    else{
        
        return $response    ->withStatus(400)
                            ->withHeader('Content-type', 'application/json')
                            ->write('   
                            
                                    {
                                    
                                    "status":"Fail",
                                    "message":"Contato inexistente."
                                    
                                    }
                            
                                    ');
    }
    
   });

//END POINT PARA ATUALZIAR O PREÇO

$app->put('/valor/{id}', function($request, $response, $args){
    
  $id = $args['id'];
     
   $contentType = $request->getHeaderLine('Content-type', 'application/json');
    

    if($contentType == 'application/json'){
        
        $valorDado = $request->getParsedBody();

            if($valorDado == "" || $valorDado == null){
                
                return $response    ->withStatus(400)
                                    ->withHeader('Content-type', 'application/json')
                                    ->write('
                                    
                                        {
                                        
                                        "status":"Fail",
                                        "message":"Não é possível fazer a atualização com dados nulos!"
                                        
                                        }
                                            ');
            }

            
    }
    
    
    require_once('../db/apiContatos.php');
    
    $retornoFuncao = atualizarValor($id, $valorDado);

    
    if($retornoFuncao){
        
        return $response    ->withStatus(200)
                            ->withHeader('Content-type', 'application/json')
                            ->write('
                            
                                    {
                                    
                                    "status":"Sucess",
                                    "message":"boa clan"
                                    
                                    }
                            
                                    ');
    } 
                    
     
    else{
        
        return $response    ->withStatus(400)
                            ->withHeader('Content-type', 'application/json')
                            ->write('   
                            
                                    {
                                    
                                    "status":"Fail",
                                    "message":"Contato inexistente."
                                    
                                    }
                            
                                    ');
    }
    
   });
$app->run();

?>
