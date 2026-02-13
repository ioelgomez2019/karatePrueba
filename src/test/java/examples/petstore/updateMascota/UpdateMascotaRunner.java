package examples.petstore.updateMascota;

import com.intuit.karate.junit5.Karate;

public class UpdateMascotaRunner {

    @Karate.Test
    Karate runUpdateMascota() {
        return Karate.run("updateMascota").relativeTo(getClass());
    }

}
