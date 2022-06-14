package driver;

import org.openqa.selenium.WebDriver;

/**
 * Class is responsible for setting, getting and upload the driver instance from ThreadLocal
 */
public final class DriverManager {

    private DriverManager() {

    }

    private static final ThreadLocal<WebDriver> webDriverThreadLocal = new ThreadLocal<>();

    //Method responsible for getting the driver instance
    public static WebDriver getDriver() {
        return webDriverThreadLocal.get();
    }

    //Method responsible to remove the instance from ThreadLocal
    public static void unloadDriver() {
        webDriverThreadLocal.remove();
    }

    //Method responsible for setting up the driver instance
    public static void setDriver(WebDriver driver) {
        webDriverThreadLocal.set(driver);
    }
}
