package com.bhumika.flightReservation.controllers;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bhumika.flightReservation.dto.ReservationUpdateRequest;
import com.bhumika.flightReservation.entities.Reservation;
import com.bhumika.flightReservation.repos.ReservationRepository;

@RestController
@CrossOrigin
public class ReservationRestController
{
	@Autowired
	ReservationRepository reservationRepository;
	
	@RequestMapping("/reservations/{id}")
	public Optional<Reservation> findReservation(@PathVariable ("id")Long id) {
	
		return reservationRepository.findById(id);
	
}
	@RequestMapping("/reservations")
	public Reservation updateReservation(@RequestBody ReservationUpdateRequest request) {
		Reservation reservation = reservationRepository.findAllById(request.getId());
		reservation.setNumberOfBags(request.getNumberOfBags());
		reservation.setCheckedIn(request.getCheckedIn());
		return reservationRepository.save(reservation);

	}

}