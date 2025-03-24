<%-- 
    O usuário terá acesso a um formulário, onde poderá adicionar uma nova planta as minhasPlantas.jsp, onde poderá adicionar:
    Foto da planta;
    Nome da PLanta;
    Nome botânico;
    Nota/descrição (opcional)
    Na seção tarefas, poderá adicionar:
    Rega (repetição da rega e horário da rega);
    Fertilização (repetição da fertilização e horário da fertilização).
    Na seção cuidados, poderá adicionar:
    Cuidado com a rega (Rega pequena, moderada ou grande);
    Cuidado com a fertilização (Fertilização pequena, moderada ou grande);
    Intensidade da luz solar (Intensidade da luz solar pequena, moderada ou grande).
    Pode marcar também na seção cuidados:
    Poda;
    Pulverização;
    Rotação.
    Plantas criadas em criarPlanta.jsp podem ser visualizadas, editadas ou excluídas em minhasPlantas.jsp)
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Criar Planta</title>
        <link href="../css/criarPlanta.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>
    <body>
        <div id="header"></div>
        <div id="centralizar-form">
            <div id="principal-criarPlanta">
                <figure id="fundo-criarPlanta">
                    <img src="../img/91352.jpg" alt="Imagem de fundo da home">
                </figure>
                <form action="../controller/criarPlantaController.jsp" method="POST" enctype="multipart/form-data"  id="criarPlantaForm">
                    <div id="titulo-form">
                        <h2 id="titulo-form">Cadastro de Planta</h2>
                    </div>
                    <fieldset id="form-superior">
                        <div class="dados-da-planta">
                            <div class="subtitulo-container">
                                <h3 id="subtitulo-form">Dados da Planta:</h3>
                            </div>
                            <div class="file-input-container">
                                <label for="foto"><i class="fa-solid fa-camera"></i> Foto:</label>
                                <label for="foto" class="custom-file-label">Selecionar Arquivo</label>
                                <input type="file" name="n_foto" id="foto" accept="image/*" onchange="updateFileName(this)">
                                <p id="file-name">Nenhum arquivo selecionado</p>
                            </div>
                            <label for="nome"><i class="fa-solid fa-leaf"></i> Nome: <input type="text" name="n_nome" id="nome" required></label>
                            <label for="nome_botanico"><i class="fa-solid fa-seedling"></i> Nome Botânico: <input type="text" name="n_nome_botanico" id="nome_botanico"></label>
                            <label for="descricao"><i class="fa-solid fa-file-lines"></i> Descrição:</label>
                            <textarea name="n_descricao" id="descricao"></textarea>
                        </div>
                    </fieldset>

                    <fieldset id="form-inferior">
                        <div class="cuidado-rega">
                            <div class="subtitulo-container">
                                <h3 id="subtitulo-form">Cuidados com a rega:</h3>
                            </div>
                            <label for="cuidado_rega"><i class="fa-solid fa-water"></i> Cuidado com a Rega:</label>
                            <select name="n_cuidado_rega" id="cuidado_rega" required>
                                <option value="Pequena">Pequena</option>
                                <option value="Moderada">Moderada</option>
                                <option value="Grande">Grande</option>
                            </select>

                            <div class="detalhes-rega">
                                <div class="subtitulo-container">
                                    <h3 id="subtitulo-form">Detalhes da Rega:</h3>
                                </div>
                                <label for="repeticao_rega"><i class="fa-solid fa-droplet"></i> Frequência da Rega:</label>
                                <select name="n_repeticao_rega" id="repeticao_rega" required>
                                    <option value="Diária">Diária</option>
                                    <option value="Semanal">Semanal</option>
                                    <option value="Quinzenal">Quinzenal</option>
                                    <option value="Mensal">Mensal</option>
                                </select>
                            </div>
                        </div>

                        <div class="outros-cuidados">
                            <div class="subtitulo-container">
                                <h3 id="subtitulo-form">Outros cuidados:</h3>
                            </div>
                            <label for="intensidade_luz"><i class="fa-solid fa-sun"></i> Intensidade da Luz:</label>
                            <select name="n_intensidade_luz" id="intensidade_luz" required>
                                <option value="Pequena">Pequena</option>
                                <option value="Moderada">Moderada</option>
                                <option value="Grande">Grande</option>
                            </select>
                        </div>
                        <div id="centralizar-botoes">
                            <button class="botoes-container" type="submit">Cadastrar</button>
                            <button class="botoes-container" type="button" class="botao-voltar" onclick="window.location.href = 'home_page.jsp';">Voltar</button>
                        </div>
                    </fieldset>

                </form>
            </div>
        </div>

        <div id="footer"></div>
        <script src="../js/includes.js" defer></script>
        <script src="../js/script.js" defer></script>
    </body>
</html>
