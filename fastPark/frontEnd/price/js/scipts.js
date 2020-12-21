

//METODO PSOT 
    const button = document.querySelector('#buttonprice');
    const buttonDemais = document.querySelector('#buttonprimeiro');
    const valorNovo = document.querySelector('#horarioValor');
    const demaisHoras= document.querySelector('#demaisHoras');
    

        function price( car ) {
        const url = `http://localhost/daniel/fastPark/backEnd/api/index.php/valor/1`;
        const options = {
          method: 'PUT',
            headers: {
                'Content-Type' : 'application/json',
            },
          body: JSON.stringify(car)
        };

        fetch(url, options )
}
    let car;
    let carDemais;

    const estacionamento = () => {
           car =  {
            "primeiraHora" : valorNovo.value
        }
        price(car);
    }
    button.addEventListener('click', estacionamento);

///////////
let id = 2;
function priceDemais( carDemais ) {
        const url = `http://localhost/daniel/fastPark/backEnd/api/index.php/valor/${id}`;
        const options = {
          method: 'PUT',
            headers: {
                'Content-Type' : 'application/json',
            },
          body: JSON.stringify(carDemais)
        };

        fetch(url, options )
}
const estacionamentoDemais = () => {
    carDemais = {
        "primeiraHora" : demaisHoras.value
    }
    priceDemais(carDemais);
}
buttonDemais.addEventListener('click', estacionamentoDemais);

        


