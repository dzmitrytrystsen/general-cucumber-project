package driver;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.chrome.ChromeDriver;
import java.time.Duration;
import java.util.Objects;

/**
 * This class is responsible for initializing WebDriver. Currently, supporting only Chrome and Remote.
 * Also assigning the same object to ThreadLocal so that parallel execution gets possible
 */
public final class Driver {

    private static final long DEFAULT_IMPLICIT_WAIT_SECONDS = 10;

    private Driver() {

    }

    public static void initDriver() {
        if (Objects.isNull(DriverManager.getDriver())) {
            WebDriverManager.chromedriver().setup();
            DriverManager.setDriver(new ChromeDriver());
            initialDriverSetting();
        }
    }

    private static void initialDriverSetting() {
        DriverManager.getDriver().manage().timeouts().implicitlyWait(Duration.ofSeconds(DEFAULT_IMPLICIT_WAIT_SECONDS));
        DriverManager.getDriver().manage().timeouts().pageLoadTimeout(Duration.ofSeconds(20));
        DriverManager.getDriver().manage().timeouts().scriptTimeout(Duration.ofSeconds(20));
        DriverManager.getDriver().manage().window().maximize();
    }

    public static void quitDriver() {
        if (Objects.nonNull(DriverManager.getDriver())) {
            DriverManager.getDriver().quit();
            DriverManager.unloadDriver();
        }
    }
}
