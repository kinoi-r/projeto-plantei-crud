<%-- 
    Document   : criar_planta
    Created on : Mar 18, 2025, 8:08:58 AM
    Author     : Neito
--%>

<%@page import="model.dao.PlantaDAO"%>
<%@page import="model.dto.Planta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro da Planta</title>
    </head>
    <body>
        <h1>Planta cadastrada com sucesso!</h1>
        <%
            Planta objPlanta = new Planta();

            

            PlantaDAO objPlantaDAO = new PlantaDAO();
            objPlantaDAO.cadastrarPlanta(objPlanta);
        %>
    </body>
</html>
