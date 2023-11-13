document.addEventListener("DOMContentLoaded", function () {
    // Carregar os dados da tabela via PHP
    loadTableData("asc"); // Carregar os dados em ordem crescente por padrão
});

function loadTableData(order) {
    var divJobs = document.getElementById("div-jobs");
    divJobs.innerHTML = ""; // Limpar a DIV antes de inserir novos dados

    // Enviar uma solicitação para o servidor PHP para buscar os dados da tabela
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "api/1.0/VagasRecentes/index.php?order=" + order, true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var dados = JSON.parse(xhr.responseText);

            // Selecione o elemento onde você deseja adicionar as divs (por exemplo, o body)
            var container = document.getElementById("div-jobs");

            // Iterar sobre os dados e criar divs
            for (var i = 0; i < dados.length; i++) {
                var div = document.createElement("div");
                div.className = "single-job-items mb-30";

                div.innerHTML = `
                    <div class="job-items">
                        <div class="company-img">
                            <a href="job_detalhes.php?jobid=${dados[i].CodigoVaga}"><img src="assets/img/icon/job-list1.png" alt=""></a>
                        </div>
                        <div class="job-tittle">
                            <a href="job_detalhes.php?jobid=${dados[i].CodigoVaga}"><h4>${dados[i].DescricaoCargo}</h4></a>
                            <ul>
                                <li>${dados[i].NomeEmpresa}</li>
                                <li><i class="fas fa-map-marker-alt"></i>${dados[i].Cidade}</li>
                                <li><b>R$ ${dados[i].ValorPiso}</b> - <b>R$ ${dados[i].ValorTeto}</b></li>
                            </ul>
                        </div>
                    </div>
                    <div class="items-link f-right">
                        <a href="job_detalhes.php?jobid=${dados[i].CodigoVaga}" id="getCodVaga">${dados[i].NaturezaTrabalho}</a>
                        <span>${dados[i].DataPostagem}</span>
                    </div>
                `;

                // Adicione a div criada ao container
                container.appendChild(div);
            }
        }
    };
    xhr.send();
}

function managePerson(codigo) {
    // Implementar a lógica para gerenciar a pessoa com o código especificado
    alert("Gerenciando pessoa com Código: " + codigo);
}



