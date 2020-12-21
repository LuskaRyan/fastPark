
const preencherRelatorio = (data) => {
    document.getElementById('relatorioDiario').innerText = data[0].totalPagoDay;
    document.getElementById('relatorioMensal').innerText = data[0].totalPagoMes;
    document.getElementById('relatorioAnual').innerText = data[0].totalPago;
    
}
const relatorio = () =>{
    const url = `http://localhost/daniel/fastPark/backEnd/api/index.php/relatorio`;
    fetch(url).then(response => response.json())
              .then(data=>  preencherRelatorio(data));
}

relatorio();
