package com.lasalle;

import org.junit.jupiter.api.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

class GreetingResourceTest {
    @Test
    void testHelloEndpoint() {
        GreetingResource resource = new GreetingResource();
        String result = resource.hello();
        assertThat(result, is("Hello"));
    }

}