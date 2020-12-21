
const getClientes = () =>{
  const url = `http://localhost/daniel/fastPark/backEnd/api/index.php/checkout`;  
  fetch(url).then(response => response.json())
            .then(data =>  repeticao(data));    
}
 
const insertToElement = (element) => {
        
  const tr = document.createElement('tr');
    
    
  tr.classList.add('trFuncional');
 
  tr.innerHTML = `
  
    <td class="mostrarCarro">${element.nomeCliente}</td>
    <td class="mostrarCarro">${element.placa}</td>
    <td class="mostrarCarro">${element.dataSaida} ${element.horarioSaida}</td>
    <td class="mostrarCarro">R$${element.valorPago}</td>      
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
//
