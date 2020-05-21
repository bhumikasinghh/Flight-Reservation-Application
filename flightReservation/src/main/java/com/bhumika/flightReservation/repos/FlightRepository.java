package com.bhumika.flightReservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bhumika.flightReservation.entities.Flight;

public interface FlightRepository extends JpaRepository<Flight, Long> {

}
