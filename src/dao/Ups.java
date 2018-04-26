package dao;

import java.sql.*;
import java.util.ResourceBundle;

public class Ups {

    private ResourceBundle rb;
    private Connection con;
    private Statement st;
    {
        rb = ResourceBundle.getBundle("mysqldb");
        try {
            con = DriverManager.getConnection(
                    rb.getString("database.url"),
                    rb.getString("database.username"),
                    rb.getString("database.password"));
            st = con.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void main() {

        getAllEmployees();
        getAllTasks();
        getAllEmployeeByDepartmentId(102);
    }

    private void getAllEmployeeByDepartmentId(int deptId) {
        try {
            ResultSet rs = st.executeQuery("SELECT * FROM employees WHERE dept_id=" + deptId);
            printRow(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println();
    }

    private void getAllTasks() {
        try {
            ResultSet rs = st.executeQuery("SELECT * FROM tasks");
            printRow(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println();
    }

    private void getAllEmployees() {
        try {
            ResultSet rs = st.executeQuery("SELECT * FROM employees");
            printRow(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println();
    }

    private void printRow(ResultSet rs) throws SQLException {
        StringBuilder sb;
        while(rs.next()) {
            sb = new StringBuilder();
            int i = 0;
            try {
                while(true) {
                    sb.append("'" + rs.getString(++i)).append("'\t");
                }
            } catch (SQLException e) {
                System.out.println(sb.toString());
            }
        }
    }
}
