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
        <link rel="stylesheet" href="../css/criarPlanta.css">
    </head>
    <body>
        <div id="header"></div>
        <main>
            <form action="../controller/planta/criarPlantaController.jsp" method="post" id="f-criarPlanta">
                <div id="header-criarPlanta">
                    <h2 id="titulo">Criar Nova Planta</h2>
                </div>

                <div id="f-foto">
                    <label>Foto: 
                        <input type="file" name="n_foto" accept="image/*">
                    </label>
                </div>

                <div id="f-dadosDaPlana">

                    <div id="f-identificacao">
                        <label>Nome da Planta: 
                            <input type="text" name="n_nome" required>
                        </label>

                        <label>Nome Botânico: 
                            <input type="text" name="n_nome_botanico">
                        </label>

                        <label>Descrição: 
                            <textarea name="n_descricao" rows="3"></textarea>
                        </label>
                    </div>

                    <div id="f-rega">
                        <label>Repetição da Rega:
                            <select name="n_repeticao_rega" required>
                                <option value="Diaria">Diária</option>
                                <option value="Semanal">Semanal</option>
                                <option value="Mensal">Mensal</option>
                            </select>
                        </label>

                        <label>Horário da Rega: 
                            <input type="time" name="n_horario_rega" required>
                        </label>
                    </div>

                    <div id="f-fertilizacao">
                        <label>Repetição da Fertilização:
                            <select name="n_repeticao_fertilizacao" required>
                                <option value="Diaria">Diária</option>
                                <option value="Semanal">Semanal</option>
                                <option value="Mensal">Mensal</option>
                            </select>
                        </label>

                        <label>Horário da Fertilização: 
                            <input type="time" name="n_horario_fertilizacao" required>
                        </label>
                    </div>

                    <div id="f-cuidado">
                        <label>Cuidado da Rega:
                            <select name="n_cuidado_rega" required>
                                <option value="Pequena">Pequena</option>
                                <option value="Moderada">Moderada</option>
                                <option value="Grande">Grande</option>
                            </select>
                        </label>

                        <label>Cuidado da Fertilização:
                            <select name="n_cuidado_fertilizacao" required>
                                <option value="Pequena">Pequena</option>
                                <option value="Moderada">Moderada</option>
                                <option value="Grande">Grande</option>
                            </select>
                        </label>

                        <label>Intensidade da Luz:
                            <select name="n_intensidade_luz" required>
                                <option value="Pequena">Pequena</option>
                                <option value="Moderada">Moderada</option>
                                <option value="Grande">Grande</option>
                            </select>
                        </label>
                    </div>

                    <div id="f-adicional">
                        <label>
                            <input type="checkbox" name="n_poda" value="true"> Poda
                        </label>
                        <label>
                            <input type="checkbox" name="n_pulverizacao" value="true"> Pulverização
                        </label>
                        <label>
                            <input type="checkbox" name="n_rotacao" value="true"> Rotação
                        </label>
                    </div>
                </div>

                <div id="f-botoes">
                    <button type="submit">Cadastrar Planta</button>
                    <button type="button" class="botao-cancelar" id="botao-cancelar" onclick="window.location.href = 'home.html';">Cancelar</button>
                </div>
            </form>
        </main>
        <div id="footer"></div>
        <script src="../js/includes.js" defer></script>
    </body>
</html>
