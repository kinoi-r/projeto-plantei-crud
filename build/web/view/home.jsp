<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/home.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    </head>
    <body>
        <div id="header"></div>
        <main>
            <section id="primeiro"
                <!--Principal. Altura 40%, largura 50% da tela -->
                <h2>Bem-vindo! Pronto para mais um dia cuidando de suas plantas?</h2>
            </section>

            <section id="segundo">
                <!--Será usado para criar um círculo. Altura 40%, largura 50% da tela -->
            </section>

            <section id="terceiro">
                <!-- Um link com bordas arredondadas. Altura 10%, largura 50% da tela -->
                <a href="contato.html"/>
            </section>

            <section id="quarto">
                <!-- Área de criar uma planta. Altura 70%, largura 50% da tela -->
                <figure>
                    <img src="../img/" alt="imagem da homepage"/>
                    <p>Comece criando uma nova planta:</p>
                    <a href="criarPlanta.jsp"</a>
                </figure>
            </section>
        </main>

        <div id="footer"></div>
        <script src="../js/includes.js" defer></script>
    </body>
</html>
