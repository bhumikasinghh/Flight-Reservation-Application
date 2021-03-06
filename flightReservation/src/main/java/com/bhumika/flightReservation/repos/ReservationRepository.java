package com.bhumika.flightReservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bhumika.flightReservation.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

	Reservation findAllById(Long id);
	

}
