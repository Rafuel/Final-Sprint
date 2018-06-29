

create table Funcionario(
cpf varchar(15) not null,
rg varchar(10) not null,
nome varchar(50) not null,
idade int not null,
email varchar(30) not null,
telefone varchar(15) null,
primary key (cpf)
);

create table Cliente(
cpf varchar(15) not null,
cpffunc varchar(15) not null,
rg varchar(10) not null,
nome varchar(50) not null,
idade int not null,
email varchar(30) not null,
telefone varchar(15) null,
primary key (cpf),
foreign key (cpffunc) references Funcionario(cpf)
);

create table Barco(
numero int not null,
cpf varchar(15) not null,
cpffunc varchar(15) not null,
nome varchar(30) not null,
totalpessoas int not null,
primary key (numero),
foreign key (cpf) references cliente(cpf),
foreign key (cpffunc) references funcionario(cpf)
);

create table Passagem(
numero int not null,
numerobarco int not null,
clientecpf varchar(15) not null,
preco int not null,
destino varchar(30) not null,
origem varchar(30) not null,
hora varchar(6) not null,
dia varchar(8) not null,
primary key (numero),
foreign key (numerobarco) references Barco(numero),
foreign key (clientecpf) references Cliente(cpf)
);



create table ResponsavelBarco(
cpf varchar(15) not null,
rg varchar(10) not null,
nome varchar(50) not null,
idade int not null,
email varchar(30) not null,
telefone varchar(15) null,
primary key (cpf)
);

create table RespBarco(
numero int not null,
cpf varchar(15) not null,
primary key (numero,cpf),
foreign key (numero) references Barco(numero),
foreign key (cpf) references ResponsavelBarco(cpf)
);
