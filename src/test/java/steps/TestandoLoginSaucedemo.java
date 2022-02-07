package steps;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Entao;
import io.cucumber.java.pt.Quando;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.Objects;

public class TestandoLoginSaucedemo {

    WebDriver driver;

    @Before
    public void inicio() {

        System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
        driver = new ChromeDriver();
    }

    @After
    public void FecharNavegador() {

        driver.quit();

    }

    @Dado("que o usuario esta na tela de login")
    public void que_o_usuario_esta_na_tela_de_login() {
        driver.get("https://www.saucedemo.com/");
    }

    @Quando("preencher o username com {string} e password com {string} e clicar no botao de login")
    public void preencher_o_username_com_e_password_com_e_clicar_no_botao_de_login(String usuario, String senha) {
        driver.findElement(By.name("user-name")).sendKeys(usuario);
        driver.findElement(By.name("password")).sendKeys(senha);
        driver.findElement(By.name("login-button")).sendKeys(Keys.ENTER);
    }

    @Entao("quando o {string} ocorrer devera receber a {string}")
    public void quando_o_ocorrer_devera_receber_a(String casodeteste, String resposta) {
        if (Objects.equals(casodeteste, "válido")) {
            Assert.assertEquals(resposta, driver.getCurrentUrl());
        } else {
            Assert.assertTrue(driver.getPageSource().contains(resposta));
        }
    }
}