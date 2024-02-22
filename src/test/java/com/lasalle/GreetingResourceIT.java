package com.lasalle;

import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.is;

@QuarkusTest
class GreetingResourceIT {
    @Test
    void testHelloEndpoint() {
        given()
          .when().get("http://aeaf7296a50444e25b82e4145761ef25-13049291.eu-west-1.elb.amazonaws.com//hello")
          .then()
             .statusCode(200)
             .body(is("Hello World V2"));
    }

}