package com.lasalle;

import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.CoreMatchers.is;

class GreetingResourceIT {
    @Test
    void testHelloEndpoint() {
        given()
          .when().get("http://afc5726a5a1ba4f01985bcecf1c8cb3e-1798522209.eu-west-1.elb.amazonaws.com/hello")
          .then()
             .statusCode(200)
             .body(is("Hello Lord"));
    }

}