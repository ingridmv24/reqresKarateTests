package co.com.testing;
import com.intuit.karate.junit5.Karate;

public class RegisterUserRunner {
    @Karate.Test
    Karate registerUser() {
        return Karate.run("src\\test\\resources\\co.com.testing\\features\\register_user.feature");
    }
}
