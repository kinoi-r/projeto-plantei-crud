<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Home - Meu Jardim</title>
        <link rel="stylesheet" href="../css/home.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    </head>
    <body>
        <div id="header"></div>

        <main id="principal-home">
            <figure id="fundo-homepage">
                <img src="../img/home-editado.png" alt="Imagem de fundo da home">
            </figure>

            <section id="primeiro-home">
                <h2>Bem-vindo ao Plantei!</h2>
                <p>Gerencie suas plantas de forma fácil</p>
                <p>e acompanhe os cuidados necessários para que elas fiquem <span>sempre</span> saudáveis.</p>
            </section>

            <section id="segundo-home">
                <a href="contato_page.html" class="botao-link">Entre em contato</a>
            </section>

            <section id="terceiro-home">
                
            </section>

            <section id="quarto-home">
                <p>Comece <span>criando</span> uma nova planta:</p>
                <a href="criarPlanta_page.jsp" class="botao-planta">
                    <i class="fa-solid fa-plus"></i> Adicionar Planta
                </a>
            </section>
        </main>

        <div id="footer"></div>

        <script src="../js/includes.js" defer></script>
    </body>
</html>
