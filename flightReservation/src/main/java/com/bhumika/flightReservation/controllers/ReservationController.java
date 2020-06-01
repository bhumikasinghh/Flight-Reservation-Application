package com.bhumika.flightReservation.controllers;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bhumika.flightReservation.dto.ReservationRequest;
import com.bhumika.flightReservation.entities.Flight;
import com.bhumika.flightReservation.entities.Reservation;
import com.bhumika.flightReservation.repos.FlightRepository;
import com.bhumika.flightReservation.service.ReservationService;


@Controller
public class ReservationController {

	@Autowired
	FlightRepository flightRepository;

	@Autowired
	ReservationService reservationService;


	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") Long flightId, ModelMap modelMap) {
		Flight flight = flightRepository.findAllById(flightId);
		modelMap.addAttribute("flight", flight);
		if (flight.isPresent()) {
			modelMap.addAttribute("flight", flight);
		} else {
		   System.out.print("not present");
		}
		return "completeReservation";

	}

	@RequestMapping(value = "/completeReservation", method = RequestMethod.POST)
	public String completeReservation(ReservationRequest request, ModelMap modelMap) throws MessagingException {
	//	LOGGER.info("completeReservation()  " + request);

		Reservation reservation = reservationService.Bookflight(request);
		modelMap.addAttribute("msg", "Reservation created successfully and the id is " + reservation.getId());
		return "reservationConfirmation";

	}

}