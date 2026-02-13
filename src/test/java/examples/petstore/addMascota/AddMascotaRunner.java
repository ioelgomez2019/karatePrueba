package examples.petstore.addMascota;

import com.intuit.karate.junit5.Karate;

public class AddMascotaRunner {

    @Karate.Test
    Karate runAddMascota() {
        return Karate.run("addMascota").relativeTo(getClass());
    }

}
