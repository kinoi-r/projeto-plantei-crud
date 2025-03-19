<%@ page import="model.dao.UsuarioDAO" %>
<%@ page import="model.dto.Usuario" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");

    UsuarioDAO usuarioDAO = new UsuarioDAO();
    Usuario usuarioAutenticado = usuarioDAO.autenticarUsuario(email, senha);

    if (usuarioAutenticado != null) {
        // Se a autenticação for bem-sucedida, armazena o nome do usuário na sessão
        session.setAttribute("usuario", usuarioAutenticado);

        // Redireciona para a home.jsp
        response.sendRedirect("../../view/home.jsp");
    } else {
        // Se não for autenticado, exibe uma mensagem de erro
        response.sendRedirect("../../auth/login.jsp?message=Email ou senha incorretos");
    }
%>
