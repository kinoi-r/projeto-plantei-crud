<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Login - Plantei</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/login.css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    </head>
    <body>
        <section id="area-login">
            <div id="imagem-login"></div>
            <div id="container-login">
                <form action="#" method="post" id="form-login">
                    <h1><i class="fas fa-leaf"></i> Login</h1>
                    <div class="grupo-input">
                        <label for="email"><i class="fas fa-envelope"></i> E-mail:</label>
                        <input type="email" id="email" name="email" required placeholder="Digite seu e-mail">
                    </div>
                    <div class="grupo-input">
                        <label for="senha"><i class="fas fa-lock"></i> Senha:</label>
                        <input type="password" id="senha" name="senha" required placeholder="Digite sua senha">
                    </div>
                    <div class="grupo-botoes">
                        <button type="button" class="botao-enviar" onclick="window.location.href = '../view/home_page.jsp';">Entrar</button>
                        <button type="button" class="botao-voltar" onclick="window.location.href = '../index.html';">Voltar</button>
                    </div>
                    <div class="link-login">
                        <p>Não tem uma conta? <a href="cadastro.jsp">Cadastre-se aqui</a></p>
                    </div>                           
                </form>
            </div>
        </section>
    </body>
</html>
