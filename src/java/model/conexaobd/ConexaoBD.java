
package model.conexaobd;
import java.sql.*;
import javax.swing.JOptionPane;

public class ConexaoBD {
    private Connection conexao;
    public Connection getConexao(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/plantei_bd?user=root&password=";
            this.conexao = DriverManager.getConnection(url);
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, "Aviso: Problema na casse ConexaoBD e no método getConexao()" + e);
        }
        return conexao;
    }
}
