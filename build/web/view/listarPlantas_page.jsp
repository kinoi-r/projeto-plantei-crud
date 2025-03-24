<%-- 
    Será onde as plantas cadastradas pelo usuário poderão ser visualizadas. Ele poderá selecionar a planta cadastrada e ver todas as infomações desta planta, como horário de rega, repetição de rega e se foi ou não regada.
    O usuário também poderá ver os cuidados com a rega, como quantidade ideal de água e a idade da planta, seu nome e seu nome científico, além de ver detalhes sobre fertilização.
    O usuário também poderá ver dois botões ao lado que, quando selecionados, indicam que a rega do dia ou a fertilização do dia foram concluídas.
    No canto superior direito, ao clicar em menu, poderá selecionar editar ou excluir planta cadastrada.
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.dto.Planta"%>
<%@page import="model.dao.PlantaDAO"%>
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
                    <%

                    PlantaDAO objPlantaDAO = new PlantaDAO();

                    ArrayList<Planta> l = objPlantaDAO.listarPlantas();

                    for (int i = 0; i < l.size(); i++) {
                        out.print("<div>");
                        out.print("<p>ID: " + l.get(i).getId_planta() + "</p>");
                        out.print("<p>Foto " + l.get(i).getFoto()+ "</p>");
                        out.print("<p>Nome: " + l.get(i).getNome() + "</p>");
                        out.print("<p>Nome botânico: " + l.get(i).getNome_botanico() + "</p>");
                        out.print("<p>Descrição: " + l.get(i).getDescricao()+ "</p>");
                        out.print("<p>Cuidado rega: " + l.get(i).getCuidado_rega() + "</p>");
                        out.print("<p>Frequência rega: " + l.get(i).getRepeticao_rega() + "</p>");
                        out.print("<p>Intensidade da Luz " + l.get(i).getIntensidade_luz() + "</p>");   

                        out.print("<a href='alterarPlantas_page.jsp?"
                                + "id_planta=" + l.get(i).getId_planta() + ""
                                + "&foto=" + l.get(i).getFoto()+ ""
                                + "&nome=" + l.get(i).getNome()+ ""
                                + "&nome_botanico=" + l.get(i).getNome_botanico()+ ""
                                + "&descricao=" + l.get(i).getDescricao()+ ""
                                + "&cuidado_rega=" + l.get(i).getCuidado_rega()+ ""
                                + "&repeticao_rega=" + l.get(i).getRepeticao_rega()+ ""
                                + "&intensidade_luz=" + l.get(i).getIntensidade_luz()+ 
                                
                                "'><button>Alterar</button></a>");
                                
                        out.print("<a href='excluirPlanta_page.jsp"
                                 + "id_planta=" + l.get(i).getId_planta() + ""
                                + "&foto=" + l.get(i).getFoto()+ ""
                                + "&nome=" + l.get(i).getNome()+ ""
                                + "&nome_botanico=" + l.get(i).getNome_botanico()+ ""
                                + "&descricao=" + l.get(i).getDescricao()+ ""
                                + "&cuidado_rega=" + l.get(i).getCuidado_rega()+ ""
                                + "&repeticao_rega=" + l.get(i).getRepeticao_rega()+ ""
                                + "&intensidade_luz=" + l.get(i).getIntensidade_luz()+
                                
                                "'><button>Excluir</button></a>");

                        out.print("</div>");
                    }
                %>
                </div>
            </section>
        </main>

        <div id="footer"></div>
        <script src="../js/includes.js" defer></script>
    </body>
</html>
