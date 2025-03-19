<%@page import="model.dao.UsuarioDAO"%>
<%@page import="model.dto.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Usuário</title>
    </head>
    <body>
        <h1>Usuário cadastrado com sucesso!</h1>
        <%
                
                try {
                    Usuario objUsuario = new Usuario();
                    
                    objUsuario.setNome(request.getParameter("n_nome"));
                    objUsuario.setEmail(request.getParameter("n_email"));
                    objUsuario.setSenha(request.getParameter("n_senha"));
                    
                    UsuarioDAO objUsuarioDAO = new UsuarioDAO();
                    objUsuarioDAO.cadastrarUsuario(objUsuario);                    
                    
                    response.sendRedirect("../../auth/login.jsp?mensagem=sucesso");
                } catch (Exception e) {
                    response.sendRedirect("../../auth/cadastro.jsp?mensagem=erro");
                }
        %>
    </body>
</html>
