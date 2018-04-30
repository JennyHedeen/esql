package dao;

public enum DB {
    MYSQL("mysqldb");

    private String name;

    DB(String dbName) {
        name = dbName;
    }

    public String getName() {
        return name;
    }
}
