
package model.dao;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import model.conexaobd.ConexaoBD;
import model.dto.Planta;

public class PlantaDAO {
    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet resultado;
    
    public void cadastrarPlanta(Planta objPlanta) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "INSERT INTO planta (foto, nome, nome_botanico, descricao, repeticao_rega, cuidado_rega, intensidade_luz)"
                + " VALUES (?, ?, ?, ?, ?, ?, ?);";
        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setBytes(1, objPlanta.getFoto());
            this.ps.setString(2, objPlanta.getNome());
            this.ps.setString(3, objPlanta.getNome_botanico());
            this.ps.setString(4, objPlanta.getDescricao());
            this.ps.setString(5, objPlanta.getRepeticao_rega());
            this.ps.setString(9, objPlanta.getCuidado_rega());
            this.ps.setString(11, objPlanta.getIntensidade_luz());
            
            this.ps.execute();
            this.ps.close();
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Aviso! Problema na classe PlantaDAO e no método cadastrarPlanta()\n" + e);
        }
    }
    
    public ArrayList<Planta> listarPlantas(){
        this.conexao = new ConexaoBD().getConexao();
        ArrayList<Planta> listaDePlantas = new ArrayList<>();
        String sql = "SELECT * FROM planta;";
        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.resultado = this.ps.executeQuery(sql);
            
            while(this.resultado.next()) {
                Planta objPlanta = new Planta();
                
                objPlanta.setId_planta(this.resultado.getInt("id_planta"));
                objPlanta.setFoto(this.resultado.getBytes("foto"));
                objPlanta.setNome(this.resultado.getString("nome"));
                objPlanta.setNome_botanico(this.resultado.getString("nome_botanico"));
                objPlanta.setDescricao(this.resultado.getString("descricao"));
                objPlanta.setCuidado_rega(this.resultado.getString("cuidado_rega"));
                objPlanta.setRepeticao_rega(this.resultado.getString("repeticao_rega"));
                objPlanta.setIntensidade_luz(this.resultado.getString("intensidade_luz"));
            
                listaDePlantas.add(objPlanta);
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Problema na classe PlantaDAO e no metodo listarPlantas() " + e);
        }
        return listaDePlantas;
    }
}
