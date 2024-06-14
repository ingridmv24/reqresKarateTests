package co.com.testing;
import com.intuit.karate.junit5.Karate;

public class ConsultUserRunner {
    @Karate.Test
    Karate consultUSer() {
        return Karate.run("src\\test\\resources\\co.com.testing\\features\\consult_user.feature");
    }
}
