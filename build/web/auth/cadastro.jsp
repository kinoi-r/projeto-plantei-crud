<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="pt-br">
    <head>
        <title>Cadastro - Plantei</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/cadastro.css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    </head>
    <body>
        <section id="area-cadastro">
            <div id="imagem-cadastro"></div>
            <div id="container-cadastro">
                <form method="post" action="#" id="formulario-cadastro">
                    <h1><i class="fas fa-seedling"></i> Criar Conta</h1>

                    <div class="grupo-input">
                        <label for="nome"><i class="fas fa-user"></i> Nome Completo:</label>
                        <input type="text" id="nome" name="n_nome" required placeholder="Digite seu nome completo">
                    </div>
                    <div class="grupo-input">
                        <label for="email"><i class="fas fa-envelope"></i> E-mail:</label>
                        <input type="email" id="email" name="n_email" required placeholder="Digite seu e-mail">
                    </div>
                    <div class="grupo-input">
                        <label for="senha"><i class="fas fa-lock"></i> Senha:</label>
                        <input type="password" id="senha" name="n_senha" required placeholder="Escolha uma senha">
                    </div>
                    <div class="grupo-botoes">
                        <button type="submit" class="botao-enviar" id="botao-enviar">Cadastrar</button>
                        <button type="button" class="botao-voltar" id="botao-voltar" onclick="window.location.href = 'index.html';">Voltar</button>
                    </div>
                    <div class="link-login">
                        <p>Já tem uma conta? <a href="login.jsp">Faça login aqui</a></p>
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>
