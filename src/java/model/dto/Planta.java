package model.dto;

import java.sql.*;

public class Planta {

    private Byte foto;
    private String nome;
    private String nome_botanico;
    private String descricao;
    private String repeticao_rega;
    private Time horario_rega;
    private String repeticao_fertilizacao;
    private Time horario_fertilizacao;
    private String cuidado_rega;
    private String cuidado_fetilizacao;
    private String intensidade_luz;
    private Boolean poda;
    private Boolean pulverizacao;
    private Boolean rotacao;

    public Byte getFoto() {
        return foto;
    }

    public void setFoto(Byte foto) {
        this.foto = foto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNome_botanico() {
        return nome_botanico;
    }

    public void setNome_botanico(String nome_botanico) {
        this.nome_botanico = nome_botanico;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getRepeticao_rega() {
        return repeticao_rega;
    }

    public void setRepeticao_rega(String repeticao_rega) {
        this.repeticao_rega = repeticao_rega;
    }

    public Time getHorario_rega() {
        return horario_rega;
    }

    public void setHorario_rega(Time horario_rega) {
        this.horario_rega = horario_rega;
    }

    public String getRepeticao_fertilizacao() {
        return repeticao_fertilizacao;
    }

    public void setRepeticao_fertilizacao(String repeticao_fertilizacao) {
        this.repeticao_fertilizacao = repeticao_fertilizacao;
    }

    public Time getHorario_fertilizacao() {
        return horario_fertilizacao;
    }

    public void setHorario_fertilizacao(Time horario_fertilizacao) {
        this.horario_fertilizacao = horario_fertilizacao;
    }

    public String getCuidado_rega() {
        return cuidado_rega;
    }

    public void setCuidado_rega(String cuidado_rega) {
        this.cuidado_rega = cuidado_rega;
    }

    public String getCuidado_fetilizacao() {
        return cuidado_fetilizacao;
    }

    public void setCuidado_fetilizacao(String cuidado_fetilizacao) {
        this.cuidado_fetilizacao = cuidado_fetilizacao;
    }

    public String getIntensidade_luz() {
        return intensidade_luz;
    }

    public void setIntensidade_luz(String intensidade_luz) {
        this.intensidade_luz = intensidade_luz;
    }

    public Boolean getPoda() {
        return poda;
    }

    public void setPoda(Boolean poda) {
        this.poda = poda;
    }

    public Boolean getPulverizacao() {
        return pulverizacao;
    }

    public void setPulverizacao(Boolean pulverizacao) {
        this.pulverizacao = pulverizacao;
    }

    public Boolean getRotacao() {
        return rotacao;
    }

    public void setRotacao(Boolean rotacao) {
        this.rotacao = rotacao;
    }

    @Override
    public String toString() {
        return String.format(
                "Planta{"
                + "foto=%s, nome='%s', nome_botanico='%s', descricao='%s', repeticao_rega='%s', horario_rega=%s, "
                + "repeticao_fertilizacao='%s', horario_fertilizacao=%s, cuidado_rega='%s', cuidado_fetilizacao='%s', "
                + "intensidade_luz='%s', poda=%s, pulverizacao=%s, rotacao=%s}",
                foto, nome, nome_botanico, descricao, repeticao_rega, horario_rega,
                repeticao_fertilizacao, horario_fertilizacao, cuidado_rega, cuidado_fetilizacao,
                intensidade_luz, poda, pulverizacao, rotacao
        );
    }

}
