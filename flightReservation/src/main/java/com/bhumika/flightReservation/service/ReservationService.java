package com.bhumika.flightReservation.service;

import com.bhumika.flightReservation.dto.ReservationRequest;
import com.bhumika.flightReservation.entities.Reservation;

public interface ReservationService {
	
	public Reservation Bookflight(ReservationRequest request);

}
