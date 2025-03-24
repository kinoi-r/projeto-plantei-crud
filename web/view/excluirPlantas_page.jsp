<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exclusão de Planta</title>
    </head>
    <body>
        <h2 id="titulo">Deseja excluir a planta abaixo?</h2>
        
        <form action="../controller/deletarPlantaController.jsp">
            <h3 id="subtitulo-form">ID: <%=request.getParameter("id_planta")%></h3>
            <label>Foto: <%=request.getParameter("foto") %></label>
            <label>Nome: <%=request.getParameter("nome") %></label>
            <label>Nome botânico: <%=request.getParameter("nome_botanico") %></label>
            <label>Descrição: <%=request.getParameter("descricao") %></label>
            <label>Cuidado rega: <%=request.getParameter("cuidado_rega") %></label>
            <label>Frequência rega: <%=request.getParameter("repeticao_rega") %></label>
            <label>Intensidade da luz: <%=request.getParameter("intensidade_luz") %></label>
        
            <input type="submit" value="Excluir">
            <a href="listarPlantas_page.jsp">Cancelar</a>
        </form>
    </body>
</html>
