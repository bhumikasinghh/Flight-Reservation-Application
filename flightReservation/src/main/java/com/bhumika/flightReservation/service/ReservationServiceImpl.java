package com.bhumika.flightReservation.service;



import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bhumika.flightReservation.dto.ReservationRequest;
import com.bhumika.flightReservation.entities.Flight;
import com.bhumika.flightReservation.entities.Passenger;
import com.bhumika.flightReservation.entities.Reservation;
import com.bhumika.flightReservation.repos.FlightRepository;
import com.bhumika.flightReservation.repos.PassengerRepository;
import com.bhumika.flightReservation.repos.ReservationRepository;
import com.bhumika.flightReservation.util.EmailUtil;
import com.bhumika.flightReservation.util.PDFGenerator;
@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	FlightRepository flightRepository;
	
	@Autowired
	PassengerRepository passengerRepository;
	
	@Autowired
	ReservationRepository reservationRepository;
	
	@Autowired
	PDFGenerator pdfGenerator;

	@Autowired
	EmailUtil emailUtil;

	
	@Override
	@Transactional
	public Reservation Bookflight(ReservationRequest request) throws MessagingException {
		
	Long flightId=request.getFlightId();
	Flight flight=flightRepository.findAllById(flightId);
	
	Passenger passenger=new Passenger();
	passenger.setFirstName(request.getPassengerFirstName());
	passenger.setLastName(request.getPassengerLastName());
	passenger.setPhone(request.getPassengerPhone());
	passenger.setEmail(request.getPassengerEmail());
	Passenger savedPassenger=passengerRepository.save(passenger);
	
	Reservation reservation=new Reservation();
	reservation.setFlight(flight);
	reservation.setPassenger(savedPassenger);
	reservation.setCheckedIn(false);
	Reservation savedReservation=reservationRepository.save(reservation);
	
	
	String filePath = "C:/Users/bhumika.singh/ProjectFlightReservation/reservations"+savedReservation.getId()+".pdf()";
	pdfGenerator.generateItinerary(savedReservation, filePath);
	emailUtil.sendItinerary(passenger.getEmail(), filePath);
	return savedReservation;
		
		
	}

}