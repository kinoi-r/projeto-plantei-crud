<%-- 
    Será onde as plantas cadastradas pelo usuário poderão ser visualizadas. Ele poderá selecionar a planta cadastrada e ver todas as infomações desta planta, como horário de rega, repetição de rega e se foi ou não regada.
    O usuário também poderá ver os cuidados com a rega, como quantidade ideal de água e a idade da planta, seu nome e seu nome científico, além de ver detalhes sobre fertilização.
    O usuário também poderá ver dois botões ao lado que, quando selecionados, indicam que a rega do dia ou a fertilização do dia foram concluídas.
    No canto superior direito, ao clicar em menu, poderá selecionar editar ou excluir planta cadastrada.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minhas Plantas</title>
        <link rel="stylesheet" href="../css/minhasPlantas.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    </head>
    <body>
        <div id="header"></div>
        <main>
            <section id="minhas-plantas">
                <div id="conteudo-minhasPlantas">
                    <h2 id="titulo">Minhas Plantas</h2>
                    
                </div>
            </section>
        </main>

        <div id="footer"></div>
        <script src="../js/includes.js" defer></script>
    </body>
</html>
