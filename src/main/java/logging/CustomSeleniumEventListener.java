package logging;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Sequence;
import org.openqa.selenium.support.events.WebDriverListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.time.Duration;
import java.util.Collection;
import java.util.List;
import java.util.Set;

/**
 * Custom Event Listeners for Selenium events. Currently, using it for logging purpose.
 * These events will only be called when WebDriver gets decorated with EventFiringDecorator(refer to Driver.java for actual implementation).
 */
public class CustomSeleniumEventListener implements WebDriverListener {
}
