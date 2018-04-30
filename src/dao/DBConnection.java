package dao;

import java.sql.*;
import java.util.ResourceBundle;

public class DBConnection {

    private ResourceBundle rb;
    private Connection con;
    private Statement statement;
    private PreparedStatement preparedStatement;

    public DBConnection(DB bundleName) {
        rb = ResourceBundle.getBundle(bundleName.getName());
        try {
            con = DriverManager.getConnection(
                    rb.getString("database.url"),
                    rb.getString("database.username"),
                    rb.getString("database.password"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Statement getStatement() {
        try {
            if(statement!=null)
                statement = con.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return statement;
    }


    public PreparedStatement getPreparedStatement(String prepared) {
        try {
            preparedStatement = con.prepareStatement(prepared);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return preparedStatement;
    }
}
