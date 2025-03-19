import java.sql.Connection;
import javax.swing.JOptionPane;
import java.sql.DriverManager;

public class ConexaoDAO {
    public Connection conectaBD() {
        Connection conexao = null;
        
        try {
            String url = "jdbc:mysql://localhost:3306/bancoPlantei?user=root&password=";
            conexao = DriverManager
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, erro.getMessage());
        }
        return conexao;
    } 
}






















