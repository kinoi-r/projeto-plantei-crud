
package model.dao;
import java.sql.*;
import javax.swing.JOptionPane;
import model.conexaobd.ConexaoBD;
import model.dto.Planta;

public class PlantaDAO {
    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet resultado;
    
    public void cadastrarPlanta(Planta objPlanta) {
        this.conexao = new ConexaoBD().getConexao();
        String sql = "insert into tb_planta(foto, nome, nome_botanico, descricao, repeticao_rega, horario_rega, repeticao_fertilizacao, horario_fertilizacao, cuidado_rega, cuidado_fertilizacao, intensidade_luz, poda, pulverizacao, rotacao)"
                + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try {
            this.ps = this.conexao.prepareStatement(sql);
            this.ps.setByte(1, objPlanta.getFoto());
            this.ps.setString(2, objPlanta.getNome());
            this.ps.setString(3, objPlanta.getNome_botanico());
            this.ps.setString(4, objPlanta.getDescricao());
            this.ps.setString(5, objPlanta.getRepeticao_rega());
            this.ps.setTime(6, objPlanta.getHorario_rega());
            this.ps.setString(7, objPlanta.getRepeticao_fertilizacao());
            this.ps.setTime(8, objPlanta.getHorario_fertilizacao());
            this.ps.setString(9, objPlanta.getCuidado_rega());
            this.ps.setString(10, objPlanta.getCuidado_fetilizacao());
            this.ps.setString(11, objPlanta.getIntensidade_luz());
            this.ps.setBoolean(12, objPlanta.getPoda());
            this.ps.setBoolean(13, objPlanta.getPulverizacao());
            this.ps.setBoolean(14, objPlanta.getRotacao());
            
            this.ps.execute();
            this.ps.close();
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Aviso! Problema na classe PlantaDAO e no método cadastrarPlanta()" + e);
        }
    }
}
