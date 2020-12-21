create database dbestacionamento;

use dbestacionamento;

show tables;

desc tblentradaveiculo;

create table tblentradaveiculo (
	idEntradaVeiculo int not null auto_increment primary key,
	idVeiculo int not null,
    idVaga int not null,
    idValor int not null,
    
    dataEntrada datetime,
    horarioEntrada datetime,
    dataSaida datetime,
    horarioSaida datetime,
    nomeCliente varchar (50),
    
	constraint FK_entrada_veiculo
    foreign key (idVeiculo)
    references tblveiculo (idVeiculo),
    
    constraint FK_entrada_vaga
    foreign key (idVaga)
    references tblvagas (idVaga),
    
     constraint FK_entrada_valor
    foreign key (idValor)
    references tblvalor (idValor)
    
);
create table tblveiculo (
	idVeiculo int not null auto_increment primary key,
    placa varchar(15),
    modelo varchar(30),
    cor varchar(20)
    
);
create table tblvagas (
	idVaga int not null auto_increment primary key,
    disponibilidade boolean
    
);
create table tblvalor (
	idValor int not null auto_increment primary key,
    primeiraHora numeric,
    demaisHoras numeric
);

select tblentradaveiculo.*
from tblentradaveiculo
where idEntradaVeiculo 
and tblentradaveiculo.idEntradaVeiculo;

select tblentradaveiculo.* from tblentradaveiculo where idEntradaVeiculo = 1;


insert into tblentradaveiculo (dataEntrada, horarioEntrada, dataSaida, horarioSaida, nomeCliente, idVaga, idValor, modelo, placa, cor)
values( CURRENT_DATE(), current_time(), null, null, 'ricardo', '1', '1', 'red', 'red', 'red');


 
drop table tblveiculo;

delete from tblentradaveiculo where
idEntradaVeiculo = '3';

update tblvalor set primeiraHora = 3 where idValor = 1;

select * from tblentradaveiculo;



insert into tblveiculo (placa, modelo, cor)
	values('FFF4444', 'fox', 'vermelho');


insert into tblvagas (disponibilidade)
values (1);

insert into tblvalor (primeiraHora, demaisHoras)
values ('2','1');



#SELECT RENDIMENTOS DE UM DIA ESPECIFICO ANO
select concat('R$ ', count(tblentradaveiculo.idValor) * tblvalor.primeiraHora) as RendimentoDiario
from tblentradaveiculo, tblvalor
where tblentradaveiculo.idValor = tblvalor.idValor
and tblentradaveiculo.dataEntrada like "%2020%";


#SELECT DE RENDIMENTOS PARA DIARIA
select concat('R$ ', count(tblentradaveiculo.idValor) * tblvalor.primeiraHora) as RendimentoDiario
from tblentradaveiculo, tblvalor
where tblentradaveiculo.idValor = tblvalor.idValor
and tblentradaveiculo.dataEntrada like "%2020-12-10%";

#SELECT DE RENDIMENTOS PARA O MES
	select concat('R$ ', count(tblentradaveiculo.idValor) * tblvalor.primeiraHora) as RendimentoDiario
	from tblentradaveiculo, tblvalor
	where tblentradaveiculo.idValor = tblvalor.idValor
	and tblentradaveiculo.dataEntrada like "%2020-12%";
    
    select * from tblvalor;
    
	

select timediff(horarioSaida, horarioEntrada) as diferença 
        from tblentradaveiculo where idEntradaVeiculo = 8;


	update tblentradaveiculo, tblvagas, tblvalor
	set tblentradaveiculo.horarioSaida = current_timestamp(), 
	tblvagas.disponibilidade = 0, tblentradaveiculo.idValor = 
	1 where tblentradaveiculo.idEntradaVeiculo = 8
	and tblentradaveiculo.idVaga = tblvagas.idVaga;

select * from tblentradaveiculo;






