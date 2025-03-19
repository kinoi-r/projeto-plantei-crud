package model.dao;

import java.sql.*;
import javax.swing.JOptionPane;
import model.conexaobd.ConexaoBD;
import model.dto.Planta;
import model.dto.Usuario;

public class UsuarioDAO {

    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet resultado;

    public void cadastrarUsuario(Usuario objUsuario) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "insert into usuario(nome, email, senha)"
                + "values(?,?,?);";
        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setString(1, objUsuario.getNome());
            this.ps.setString(2, objUsuario.getEmail());
            this.ps.setString(3, objUsuario.getSenha());

            this.ps.execute();
            this.ps.close();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Aviso! Problema na classe UsuarioDAO e no método cadastrarUsuario()" + e);
        }
    }

    public Usuario autenticarUsuario(String email, String senha) {
        Usuario objUsuario = null;
        this.conexao = new ConexaoBD().getConexao();
        String sql = "Select * from usuario where email = ? and senha = ?";
        try {
            ps = conexao.prepareStatement(sql);
            ps.setString(1, email); 
            ps.setString(2, senha);
            resultado = ps.executeQuery();

            if (resultado.next()) {
                objUsuario = new Usuario();
                objUsuario.setNome(resultado.getString("nome"));
                objUsuario.setEmail(resultado.getString("email"));
                objUsuario.setSenha(resultado.getString("senha"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return objUsuario;
    }
}


