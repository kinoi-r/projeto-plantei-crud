<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="model.dao.PlantaDAO"%>
<%@page import="model.dto.Planta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="0.001; ../view/listarPlantas_page.jsp">
        <title>Cadastro da Planta</title>
    </head>
    <body>
        <h1>Planta cadastrada com sucesso!</h1>
        <%
            Part filePart = request.getPart("n_foto");
            byte[] fotoBytes = null;

            if (filePart != null && filePart.getSize() > 0) {
                InputStream fileContent = filePart.getInputStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = fileContent.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }
                fotoBytes = outputStream.toByteArray();
            }

            Planta objPlanta = new Planta();

            objPlanta.setFoto(fotoBytes);
            objPlanta.setNome(request.getParameter("n_nome"));
            objPlanta.setNome_botanico(request.getParameter("n_nome_botanico"));
            objPlanta.setDescricao(request.getParameter("n_descricao"));
            objPlanta.setCuidado_rega(request.getParameter("n_cuidado_rega"));
            objPlanta.setRepeticao_rega(request.getParameter("n_repeticao_rega"));
            objPlanta.setIntensidade_luz(request.getParameter("n_intensidade_luz"));

            PlantaDAO objPlantaDAO = new PlantaDAO();
            objPlantaDAO.cadastrarPlanta(objPlanta);
            



        %>
    </body>
</html>
