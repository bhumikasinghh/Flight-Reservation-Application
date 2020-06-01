package com.bhumika.flightReservation.service;

import javax.mail.MessagingException;

import com.bhumika.flightReservation.dto.ReservationRequest;
import com.bhumika.flightReservation.entities.Reservation;

public interface ReservationService {
	
	public Reservation Bookflight(ReservationRequest request) throws MessagingException;

}
