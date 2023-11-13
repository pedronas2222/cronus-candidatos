document.addEventListener("DOMContentLoaded", function () {
    // Carregar os dados da tabela via PHP
    var code = document.getElementById("jobcode").value;
    loadTableData(code); // Carregar os dados em ordem crescente por padrão
});

function loadTableData(order) {
    // var tableBody = document.getElementById("table-body");
    // tableBody.innerHTML = ""; // Limpar a tabela antes de preencher

    // Enviar uma solicitação para o servidor PHP para buscar os dados da tabela
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "api/1.0/VagaDetalhes/index.php?jobId=" + order, true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var data = JSON.parse(xhr.responseText);

            // Preencher os campos da tela com os dados
            document.getElementById("Cargo").innerHTML = data[0].DescricaoCargo;
            document.getElementById("CargoDesc").innerHTML = data[0].DescricaoCargo;
            document.getElementById("NomeEmpresa").innerHTML = data[0].NomeEmpresa;
            document.getElementById("Cidade").innerHTML = data[0].Cidade;
            document.getElementById("CidadeOver").innerHTML = data[0].Cidade;
            document.getElementById("ValorPiso").innerHTML = "R$ " + data[0].ValorPiso;
            document.getElementById("ValorTeto").innerHTML = "R$ " + data[0].ValorTeto;
            document.getElementById("DataPostagem").innerHTML = data[0].DataPostagem;
            document.getElementById("QtdVagas").innerHTML = data[0].QtdVagas;
            document.getElementById("NaturezaTrabalho").innerHTML = data[0].NaturezaTrabalho;
            document.getElementById("ValorPisoOver").innerHTML = "R$ " + data[0].ValorPiso;
            document.getElementById("NomeEmpresaOver").innerHTML = data[0].NomeEmpresa;
            document.getElementById("NomeEmpresaOver2").innerHTML = data[0].NomeEmpresa;
            document.getElementById("Site").innerHTML = data[0].Site;
            document.getElementById("Email").innerHTML = data[0].Email;
            document.getElementById("DescricaoVaga").innerHTML = data[0].DescricaoVaga;
            document.getElementById("ConhecimentoHabili").innerHTML = data[0].ConhecimentoHabili;
            document.getElementById("EducacaoExperiencia").innerHTML = data[0].EducacaoExperiencia;
            document.getElementById("sobreempresa").innerHTML = data[0].InfoEmpresa;
            document.getElementById("beneficios").innerHTML = data[0].Beneficios;
            
        }
    };
    xhr.send();
}

function managePerson(codigo) {
    // Implementar a lógica para gerenciar a pessoa com o código especificado
    alert("Gerenciando pessoa com Código: " + codigo);
}