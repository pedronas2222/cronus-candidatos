tab_pessoas (nome da tabela)
	CodigoPes
	DataCadastro
	DataAlterac
	NomeCompleto
	Situacao
	EmailSite
	Telefone
	SenhaSite
	Cpf
	Rua
	Bairro
	Numero
	Cep
	Uf
	Status

	----------------------------------->


CREATE TABLE tab_pessoas (
    CodigoPes INT PRIMARY KEY,
    DataCadastro DATE,
    DataAlterac DATE,
    NomeCompleto VARCHAR(255),
    Situacao VARCHAR(50),
    EmailSite VARCHAR(255),
    Telefone VARCHAR(20),
    SenhaSite VARCHAR(255),
    Cpf VARCHAR(15),
    Rua VARCHAR(255),
    Bairro VARCHAR(100),
    Numero INT,
    Cep VARCHAR(10),
    Uf VARCHAR(2),
    Status VARCHAR(50)
);


	<-------------------------------------

tab_empresas (nome da tabela)
	CodigoEmp
	DataCadastro
	Situacao
	DataAlterac
	RazaoSocial
	NomeFantasia
	Cnpj
	Rua
	Bairro
	Numero
	Cep
	Uf
	Status
----------------------------------------------->
CREATE TABLE tab_empresas (
    CodigoEmp INT PRIMARY KEY,
    DataCadastro DATE,
    Situacao VARCHAR(50),
    DataAlterac DATE,
    RazaoSocial VARCHAR(255),
    NomeFantasia VARCHAR(255),
    Cnpj VARCHAR(18),
    Rua VARCHAR(255),
    Bairro VARCHAR(100),
    Numero INT,
    Cep VARCHAR(10),
    Uf VARCHAR(2),
    Status VARCHAR(50)
);

<-----------------------------------------------



tab_curriculos (nome da tabela)
	CodigoCv
	DataCadastro
	Situacao
	DataAlterac
	CodigoPessoa
	EtiquetaCv
	Local
	Status


----------------------------------------------->
CREATE TABLE tab_curriculos (
    CodigoCv INT PRIMARY KEY,
    DataCadastro DATE,
    Situacao VARCHAR(50),
    DataAlterac DATE,
    CodigoPessoa INT,
    EtiquetaCv VARCHAR(255),
    Local VARCHAR(255),
    Status VARCHAR(50)
);

<-----------------------------------------------





tab_planosEmpresas (nome da tabela)
	CodigoPlan
	DataCadastro
	Situacao
	DataAlterac
	Valor
	Descricao
	Vantagem1
	Vantagem2
	Vantagem3
	Status
----------------------------------------------->
<-----------------------------------------------



tab_contratos
	CodigoCont
	CodigoEmp
	CodigoPlan
	DataContrato
	DataAtivo
	DataFinal
	Tipo (mensal / trimestral / semestral)
----------------------------------------------->

<-----------------------------------------------


tab_vagas (nome da tabela)
	CodigoVaga
	CodigoEmp
	DescricaoCargo
	ValorPiso
	ValorTeto
	Cidade
	Uf
	DataPostagem
	Localizacao
	NaturezaTrabalho
	Salario
	SalarioTipo
	QtdVagas
	DescricaoVaga
	ConhecimentoHabili
	EducacaoExperiencia
	InfoEmpresa
	NomeEmpresa
	Site
	Email

----------------------------------------------->
CREATE TABLE tab_vagas (
    CodigoVaga INT PRIMARY KEY,
    CodigoEmp INT,
    DescricaoCargo VARCHAR(255),
    ValorPiso DECIMAL(10, 2),
    ValorTeto DECIMAL(10, 2),
    Cidade VARCHAR(100),
    Uf VARCHAR(2),
    DataPostagem DATE,
    Localizacao VARCHAR(255),
    NaturezaTrabalho VARCHAR(50),
    Salario DECIMAL(10, 2),
    SalarioTipo VARCHAR(50),
    QtdVagas INT,
    DescricaoVaga TEXT,
    ConhecimentoHabili TEXT,
    EducacaoExperiencia VARCHAR(255),
    InfoEmpresa TEXT,
    NomeEmpresa VARCHAR(255),
    Site VARCHAR(255),
    Email VARCHAR(255)
);

<-----------------------------------------------


INSERT INTO tab_vagas (CodigoVaga, CodigoEmp, DescricaoCargo, ValorPiso, ValorTeto, Cidade, Uf, DataPostagem, Localizacao, NaturezaTrabalho, Salario, SalarioTipo, QtdVagas, DescricaoVaga, ConhecimentoHabili, EducacaoExperiencia, InfoEmpresa, NomeEmpresa, Site, Email) 
VALUES
('2', '101', 'Desenvolvedor Web', '3000', '4500', 'São Paulo', 'SP', '2023-10-01', 'Presencial', 'Tempo Integral', '4000.00', 'Mensal', '3', 'Procuramos um desenvolvedor web experiente para se juntar à nossa equipe. Conhecimento em HTML, CSS e JavaScript é essencial.', 'Experiência em desenvolvimento web', 'BPTech Solutions é uma empresa de tecnologia líder.', 'BPTech Solutions', 'https://www.bptechsolutions.com', 'contato@bptechsolutions.com'),

('3', '102', 'Analista de Marketing', '3500', '5000', 'Rio de Janeiro', 'RJ', '2023-10-02', 'Remoto', 'Meio Período', '4000.00', 'Mensal', '2', 'Procuramos um analista de marketing para gerenciar campanhas de marketing digital.', 'Conhecimento em SEO e mídias sociais', 'Digital Marketing Inc. é uma agência de marketing inovadora.', 'Digital Marketing Inc.', 'https://www.digitalmarketinginc.com', 'contato@digitalmarketinginc.com'),

('4', '103', 'Engenheiro de Software', '4500', '6000', 'Belo Horizonte', 'MG', '2023-10-03', 'Híbrido', 'Tempo Integral', '5500.00', 'Mensal', '5', 'Estamos à procura de um engenheiro de software talentoso para liderar nosso departamento de desenvolvimento.', 'Experiência em C++ e Python', 'TechGenius Ltd. é uma empresa de tecnologia inovadora.', 'TechGenius Ltd.', 'https://www.techgeniusltd.com', 'contato@techgeniusltd.com');


INSERT INTO `tab_vagas` (`CodigoVaga`, `CodigoEmp`, `DescricaoCargo`, `ValorPiso`, `ValorTeto`, `Cidade`, `Uf`, `DataPostagem`, `Localizacao`, `NaturezaTrabalho`, `Salario`, `SalarioTipo`, `QtdVagas`, `DescricaoVaga`, `ConhecimentoHabili`, `EducacaoExperiencia`, `InfoEmpresa`, `NomeEmpresa`, `Site`, `Email`) VALUES ('3', '104', 'Assistente Administrativo', '2500', '3600', 'Tucumã', 'PA', '2023-10-15', 'Presencial', 'Integral', '3000', 'Mensal', '03', 'Vaga para Tucumã e Ourilândia do Norte', 'Procuramos uma pessoa experiente com capacidade analitica e boa de papo. \r\nConhecimento em HTML, CSS e JavaScript é essencial.', 'Experiência em Administração de empresas', 'Pedro Solutions é uma empresa de tecnologia líder.', 'BPTech Solutions', 'https://www.bptechsolutions.com', 'contato@pedrosolutions.com');

