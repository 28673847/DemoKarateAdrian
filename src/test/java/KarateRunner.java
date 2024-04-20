import com.intuit.karate.junit5.Karate;

public class KarateRunner {
    /*@Karate.Test
    Karate testGet() {
        return Karate.run("classpath:KarateGet.feature").tags("@smoke");
    }
    @Karate.Test
    Karate testPost() {
        return Karate.run("classpath:KaratePost.feature").tags("@smoke");
    }
    @Karate.Test
    Karate testDelete() {
        return Karate.run("classpath:KarateDelete.feature").tags("@smoke");
    }*/
    //return Karate.run().relativeTo(getClass()); para correr todas las features
    @Karate.Test
    Karate testFeature() {
        return Karate.run("classpath:ApiRest/KarateTest_CSV.feature");
    }
}
