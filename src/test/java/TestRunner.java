import driver.Driver;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = {"step_definitions"})

public class TestRunner {
    @BeforeClass
    public static void initDriver() {
        Driver.initDriver();
    }
}

