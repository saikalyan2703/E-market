package User;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class CommonUtils {
    
    
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
     
     
        //STEP 2: Register JDBC driver
        Class.forName("com.mysql.jdbc.Driver");
        String dbName = "shopping";
        String userName = "saikalyan2703";
        String password = "saikalyan2703";
        String hostname = "finalproject.ckpnpghqjofi.us-west-2.rds.amazonaws.com";
        String port = "3306";
        String jdbcUrl = "jdbc:mysql://" + hostname + ":" + port + "/" + dbName +
        "?user=" + userName + "&password=" + password;
        return DriverManager.getConnection(jdbcUrl);
    }
}
