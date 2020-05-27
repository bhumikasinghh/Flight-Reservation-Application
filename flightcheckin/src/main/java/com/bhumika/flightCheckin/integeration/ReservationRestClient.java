package com.bhumika.flightCheckin.integeration;

import com.bhumika.flightCheckin.integeration.dto.Reservation;
import com.bhumika.flightCheckin.integeration.dto.ReservationUpdateRequest;

public interface ReservationRestClient 
{
	public Reservation findReservation(Long id);
	
	public Reservation updateReservation(ReservationUpdateRequest request);

}
