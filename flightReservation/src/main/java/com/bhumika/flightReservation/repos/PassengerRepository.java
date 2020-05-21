package com.bhumika.flightReservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bhumika.flightReservation.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
