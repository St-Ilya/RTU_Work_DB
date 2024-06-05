package ClientServerSocket;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.management.relation.Role;

public class SqlInjTest {
    public static List<Employee> func(String name) {
        String sql = "select * from employee where name ='" + name + "'";
        Statement dataSource;
        try (Connection c = dataSource.getConnection();
                ResultSet rs = c.createStatement().executeQuery(sql)) {
            List<Employee> employees = new ArrayList<>();
            while (rs.next()) {
                employees.add(new Employee(
                        rs.getLong("id"),
                        rs.getString("name"),
                        rs.getString("password"),
                        Role.valueOf(rs.getString("role"))));
            }
            return employees;
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
}