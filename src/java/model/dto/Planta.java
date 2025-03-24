package model.dto;

import java.sql.*;

public class Planta {

    private int id_planta;
    private byte[] foto;
    private String nome;
    private String nome_botanico;
    private String descricao;
    private String repeticao_rega;
    private String cuidado_rega;
    private String intensidade_luz;

    public int getId_planta() {
        return id_planta;
    }

    public void setId_planta(int id_planta) {
        this.id_planta = id_planta;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
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

    public String getCuidado_rega() {
        return cuidado_rega;
    }

    public void setCuidado_rega(String cuidado_rega) {
        this.cuidado_rega = cuidado_rega;
    }

    public String getIntensidade_luz() {
        return intensidade_luz;
    }

    public void setIntensidade_luz(String intensidade_luz) {
        this.intensidade_luz = intensidade_luz;
    }
}
