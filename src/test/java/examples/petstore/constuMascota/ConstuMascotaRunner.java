package examples.petstore.constuMascota;

import com.intuit.karate.junit5.Karate;

public class ConstuMascotaRunner {

    @Karate.Test
    Karate runConstuMascota() {
        return Karate.run("constuMascota").relativeTo(getClass());
    }

}
