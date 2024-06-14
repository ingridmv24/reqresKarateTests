package co.com.testing;
import com.intuit.karate.junit5.Karate;

public class UpdateUserRunner {
    @Karate.Test
    Karate updateUser() {
        return Karate.run("src\\test\\resources\\co.com.testing\\features\\update_user.feature");
    }
}
