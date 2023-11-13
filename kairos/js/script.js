document.addEventListener("DOMContentLoaded", function () {
    // Carregar os dados da tabela via PHP
    loadTableData("asc"); // Carregar os dados em ordem crescente por padrão
});

function loadTableData(order) {
    var tableBody = document.getElementById("table-body");
    tableBody.innerHTML = ""; // Limpar a tabela antes de preencher

    // Enviar uma solicitação para o servidor PHP para buscar os dados da tabela
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "api/1.0/get_data.php?order=" + order, true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var data = JSON.parse(xhr.responseText);

            // Preencher a tabela com os dados
            data.forEach(function (row) {
                var tr = document.createElement("tr");
                tr.innerHTML = `
                    <td>${row.CodigoPes}</td>
                    <td>${row.DataCadastro}</td>
                    <td>${row.NomeCompleto}</td>
                    <td>${row.Situacao}</td>
                    <td>${row.EmailSite}</td>
                    <td>${row.Telefone}</td>
                    <td>${row.Cpf}</td>
                    <td><button onclick="managePerson(${row.CodigoPes})">Gerenciar</button></td>
                `;
                tableBody.appendChild(tr);
            });
        }
    };
    xhr.send();
}

function managePerson(codigo) {
    // Implementar a lógica para gerenciar a pessoa com o código especificado
    alert("Gerenciando pessoa com Código: " + codigo);
}
