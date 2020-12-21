
// COMEÇO DO GET DOS DADOS///////////////////////////////
const getClientes = () =>{
  const url = `http://localhost/daniel/fastPark/backEnd/api/index.php/dados`;
  fetch(url).then(response => response.json())
            .then(data =>  repeticao(data));    
}
 
const insertToElement = (element) => {
        
  const tr = document.createElement('tr');
    
    
  tr.classList.add('trFuncional');
 
  tr.innerHTML = `
  
    <td class="mostrarCarro">${element.nomeCliente}</td>
    <td class="mostrarCarro">${element.placa}</td>
    <td class="mostrarCarro">${element.modelo}</td>
    <td id="moreInfoMostrar" class="mostrarCarro pointerTd" data-toggle="modal" data-target="#siteModal">
            <button id ="idComprovante" class="glyphicon glyphicon-ok img-circle text-primary btn-icon btn btn-info btn-custom" onclick ="getModal('${element.idEntradaVeiculo}')">Imprimir</button>
    </td>
    <td class="mostrarCarro"> 
                <button  id="retirarId" class="glyphicon glyphicon-ok img-circle text-primary btn-icon btn btn-danger btn-custom" onclick="updateCarro('${element.idEntradaVeiculo}'), updatePreco('${element.idEntradaVeiculo}')">Retirar</button>
                    
    </td>
      
    `;
    
  return tr;   
}


const repeticao = (data) => {
  const container = document.getElementById('table');
  data.forEach(element => {
    container.appendChild(insertToElement(element));
 
  });
 
}
 
getClientes();
//////////////////////////////////////



//GET DA MODAL -- INICIO //////////////////////////////////////


const getModal = (idEntradaVeiculo) =>{
  const url = `http://localhost/daniel/fastPark/backEnd/api/index.php/dados/${idEntradaVeiculo}`; 
  fetch(url).then(response => response.json())
            .then(data =>  repeticaoModal(data));    
}
 
const insertToElementModal = (data) => {
 
      const tr = document.createElement('tr');
 
  tr.classList.add('trModalCheck');
 
  tr.innerHTML = `
    
    --------------------------------<br>
    <tr class="dataModalCheck">CLIENTE : ${data.nomeCliente}</tr><br>
    --------------------------------<br>
    <tr class="dataModalCheck">PLACA : ${data.placa}</tr><br>
    --------------------------------<br>
    <tr class="dataModalCheck">MODELO : ${data.modelo}</tr><br>
    --------------------------------<br>
    <tr class="dataModalCheck">HORARIO : ${data.horarioEntrada}</tr><br>
    --------------------------------<br>
    <tr class="dataModalCheck">DATA : ${data.dataEntrada}</tr><br>
    --------------------------------<br>
    <tr class="dataModalCheck">COR : ${data.cor}</tr><br>
    --------------------------------<br>
    `;
  return tr;
    
}


const repeticaoModal = (data) => {
 
  const containerModal = document.getElementById('modalTableCheck');
  data.forEach(data => {
    containerModal.appendChild(insertToElementModal(data));
 
  });
 
}

// FIM DO GET DA MODAL ////////////////////////////////////
    
    

//METODO PSOT para adicionar Carro///////////////////////////////
    const nome = document.getElementById('nomeCliente');
    const button = document.querySelector('#editMainButton');
    const modelo = document.getElementById('modelo');
    const placa = document.getElementById('placa');
    const cor = document.getElementById('cor');


function parking( car ) {
        const url = `http://localhost/daniel/fastPark/backEnd/api/index.php/dados`;
        const options = {
          method: 'POST',
            headers: {
                'Content-Type' : 'application/json',
            },
          body: JSON.stringify(car)
        };

        fetch(url, options )
}

let car;
const estacionamento = () => {
       car =  {
        "modelo": modelo.value,
        "placa": placa.value,
        "cor": cor.value,
        "idVaga": "1",
        "idValor": "1",
        "nomeCliente": nome.value
    }
    parking(car);
}


button.addEventListener('click', estacionamento);

//fim do metdo posto //////////////////////////////////


//ATUALIZAR SAIDA DO CARRO//////////////////////////////////////
function reloadPage (){
  window.location.reload();  
}



function updateCarro(idEntradaVeiculo) {
    alert('Carro Retirado com sucesso');
  window.location.reload();
    const url = `http://localhost/daniel/fastPark/backEnd/api/index.php/dados/${idEntradaVeiculo}`;
    const options = {
      method: 'PUT',
    }
  
    fetch(url, options )
  }



//FINALIZAR SAIDA DO CARRO////////////////////////////////////////

//FAZER O UPDATE DE QUANTO A PESSOA VAI PAGAR 

function updatePreco(idEntradaVeiculo) {
    const url = `http://localhost/daniel/fastPark/backEnd/api/index.php/pagar/${idEntradaVeiculo}`;
    const options = {
        method: 'PUT',
    }
    fetch(url,options)
}
//



//IMPRIMIR

 function printContent(el){
        var restorepage = document.body.innerHTML;
     var printcontent = document.getElementById(el).innerHTML;
	 document.body.innerHTML = printcontent;
	 window.print();
	 document.body.innerHTML = restorepage;
}
