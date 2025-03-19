
import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexao {
    
    public static void main(String [] args) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost/bancoPlantei", "usuario", "senha");
        } catch (ClassNotFoundException ex) {
            System.out.println("Driver do banco de dados não localizado!");
        } catch (SQLException ex) {
            System.out.println("Ocorreu um erro com o banco de dados" + ex.getMessage());
        }
    }
}
