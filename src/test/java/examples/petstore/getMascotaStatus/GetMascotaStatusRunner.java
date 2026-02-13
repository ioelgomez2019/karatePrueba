package examples.petstore.getMascotaStatus;

import com.intuit.karate.junit5.Karate;

public class GetMascotaStatusRunner {

    @Karate.Test
    Karate runGetMascotaStatus() {
        return Karate.run("getMascotaStatus").relativeTo(getClass());
    }

}
