<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
    <h1>Login</h1>
    <form id="loginForm">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>
    <div id="message"></div>
    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            event.preventDefault(); 
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            if (username === "user" && password === "password") {
                document.getElementById("message").innerText = "Login successful!";
            } else {
                document.getElementById("message").innerText = "Login failed. Please check your credentials.";
            }
        });
    </script>
</body>
</html>




java code :-> New  -> Others  -> Unit Tests -> Junit Test


package ty;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class LoginTest {
    @Test
    public void testLoginPage() {
        System.setProperty("webdriver.gecko.driver", "C:\\Users\\Karan\\Desktop\\Karan Save\\STQA packages\\geckodriver-v0.33.0-win32\\geckodriver.exe");
        WebDriver driver = new FirefoxDriver();

        try {
            driver.get("http://192.168.235.172:5500/hi.html");
            driver.findElement(By.id("username")).sendKeys("ANON");
            driver.findElement(By.id("password")).sendKeys("ANON123");
            driver.findElement(By.id("password")).submit();
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        } finally {
            driver.quit();
        }
    }
}





