package Graphic_Form;

public class Config {
    public static String url;
    public static String user;
    public static String password;

    static void initUUP() {
        Config.url = System.getenv("url");
        Config.user = System.getenv("user");
        Config.password = System.getenv("password");
    }
}
