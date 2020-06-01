package com.bhumika.flightCheckin;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan({"com.bhumika.flightCheckin","com.bhumika.flightReservation"})
@SpringBootTest
class FlightcheckinApplicationTests {

	@Test
	void contextLoads() {
	}

}
