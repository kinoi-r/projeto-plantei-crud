<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração das Plantas</title>
    </head>
    <body>
        <h2 id="titulo">Preencha os campos que deseja alterar:</h2>
        <form action="../controller/editarPlantaController.jsp">
            <h3 id="subtitulo-form">ID: <%=request.getParameter("id_planta") %></h3>
            <label>Foto: <input type="file" name="n_foto" value="<%=request.getParameter("foto") %>" </label>
            <label>Nome: <input type="text" name="n_nome" value="<%=request.getParameter("nome") %>" </label>
            <label>Nome botânico: <input type="text" name="n_nome_botanico" value="<%=request.getParameter("nome_botanico") %>" </label>
            <label>Descrição: <input type="text" name="n_descricao" value="<%=request.getParameter("descricao") %>" </label>
            <label>Cuidado rega: <input type="text" name="n_cuidado_rega" value="<%=request.getParameter("cuidado_rega") %>" </label>
            <label>Frequência rega: <input type="text" name="n_repeticao_rega" value="<%=request.getParameter("repeticao_rega") %>" </label>
            <label>Intensidade luz: <input type="text" name="n_intensidade_luz" value="<%=request.getParameter("intensidade_luz") %>" </label>
            
            <input type="submit" value="Alterar">
            <a href="listarPlantas_page.jsp">Cancelar</a>
        </form>
    </body>
</html>
