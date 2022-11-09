import org.flywaydb.core.Flyway;

public class AppMain {
    private static final String CONNECTION = "jdbc:postgresql://127.0.0.1:5432/OnlineGame";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "admin";
    public static void main(String[] args) {
        final var flyway = Flyway
                .configure()
                .dataSource(CONNECTION, USERNAME, PASSWORD)
                .locations("db")
                .load();
        flyway.migrate();
    }
}
