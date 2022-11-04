import org.flywaydb.core.Flyway;

public class AppMain {
    private static final String CONNECTION = "jdbc:postgresql://127.0.0.1;5432/";
    private static final String DB_NAME = "OnlineGame";
    private static final String USERNAME = "admin";
    private static final String PASSWORD = "admin";
    public static void main(String[] args) {
        final var flyway = Flyway
                .configure()
                .dataSource(CONNECTION + DB_NAME, USERNAME, PASSWORD)
                .locations("db")
                .load();
        flyway.migrate();


    }
}
