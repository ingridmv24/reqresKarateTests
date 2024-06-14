package co.com.testing;
import com.intuit.karate.junit5.Karate;

public class CreateUserRunner {
    @Karate.Test
    Karate createUser() {
        return Karate.run("src\\test\\resources\\co.com.testing\\features\\create_user.feature");
    }
}
