import java.sql.*;
import java.util.*;

public class TaskDAO {

    public static List<String[]> getTasks() throws Exception {
        Connection con = DBConnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM tasks");

        List<String[]> tasks = new ArrayList<>();
        while (rs.next()) {
            tasks.add(new String[]{
                rs.getString("task_name"),
                rs.getString("status"),
                rs.getString("duration")
            });
        }
        return tasks;
    }

    public static void addTask(String name, String status, int duration) throws Exception {
        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement("INSERT INTO tasks(task_name,status,duration) VALUES(?,?,?)");
        ps.setString(1, name);
        ps.setString(2, status);
        ps.setInt(3, duration);
        ps.executeUpdate();
    }
}
