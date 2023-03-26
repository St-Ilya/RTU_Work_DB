package Graphic_Form;

public class Config {
    public static String url;
    public static String user;
    public static String password;

    static void initUUP() throws ConfigException {
        Config.url = System.getenv("url");
        Config.user = System.getenv("user");
        Config.password = System.getenv("password");
        Config.validate();
    }

    static void validate() throws ConfigException {
        if (Config.url == null || Config.url.isEmpty()) {
            throw new ConfigException("url is null");
        } else if (Config.user == null || Config.user.isEmpty()) {
            throw new ConfigException("user is null");
        } else if (Config.password == null || Config.password.isEmpty()) {
            throw new ConfigException("password is null");
        }
    }
}

class ConfigException extends Exception {
    public ConfigException(String url_is_null) {
        super(url_is_null);
    }
}
