package steps;

import io.cucumber.java.Before;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Então;
import io.cucumber.java.pt.Quando;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class TestandoLoginSaucedemo {

    WebDriver driver;

    @Before
    public void inicio() {

        System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        //driver.quit();
        //driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }

    @Dado("que o usuario esta na tela de login")
        public void que_o_usuario_esta_na_tela_de_login() {

        driver.get("https://www.google.com.br");

    }

    @Quando("preencher o username com “standard_user” e password com “secret_sauce” e clicar no botao de login")
        public void preencher_o_username_com_standard_user_e_password_com_secret_sauce_e_clicar_no_botao_de_login() {

        driver.findElement(By.id("user-name")).sendKeys("standard_user");
        driver.findElement(By.id("password")).sendKeys("secret_sauce");
        driver.findElement(By.id("login-button")).sendKeys(Keys.ENTER);
    }
│
        │
    @Entao("deverá acessar")
    public void deverá_acessar() {
        //Assert.assertEquals();

    }

    @Quando("preencher o username com {string} e password com {string} e clicar no botao de login")
    public void preencher_o_username_com_e_password_com_e_clicar_no_botao_de_login(String string, String string2) {

    }

    @Entao("deverá receber a {string}")
    public void deverá_receber_a(String string) {

    }

}