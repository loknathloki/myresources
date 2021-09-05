package com.msd.flight_reservation_app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.msd.flight_reservation_app.dto.ReservationRequest;
import com.msd.flight_reservation_app.entity.Reservation;
import com.msd.flight_reservation_app.service.ReservationService;

@Controller
public class ReservationController {
 @Autowired
 private ReservationService reservationSevice;
 
    @RequestMapping("/reserve")
    public String reserve() {
    	return "traveldetails";
    }
    
	@RequestMapping("/confirmReservation")
	public String confirmRegistration(ReservationRequest request, ModelMap modelMap) {
		Reservation reservationId = reservationSevice.bookFlight(request);
		modelMap.addAttribute("reservationId",reservationId.getId());
		return "confirmReservation";
	}
}
