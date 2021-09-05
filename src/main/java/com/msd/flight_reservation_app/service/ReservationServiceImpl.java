package com.msd.flight_reservation_app.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msd.flight_reservation_app.dto.ReservationRequest;
import com.msd.flight_reservation_app.entity.Flight;
import com.msd.flight_reservation_app.entity.Passenger;
import com.msd.flight_reservation_app.entity.Reservation;
import com.msd.flight_reservation_app.repository.FlightRepository;
import com.msd.flight_reservation_app.repository.PassengerRepository;
import com.msd.flight_reservation_app.repository.ReservationRepository;
import com.msd.flight_reservation_app.utilities.EmailUtil;
import com.msd.flight_reservation_app.utilities.PdfGenerator;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private FlightRepository flightRepo;
	
	@Autowired
	private PassengerRepository passengerRepo;
	
	@Autowired
	private ReservationRepository reservationRepo;
	
	@Autowired
	private PdfGenerator pdfGenerator;
	
	@Autowired
	private EmailUtil emailUtil;
	
	@Override
	public Reservation bookFlight(ReservationRequest request) {
		
		Passenger passenger= new Passenger();
        passenger.setFirstName(request.getFirstName());   
        passenger.setLastName(request.getLastName());
        passenger.setMiddleName(request.getMiddleName());
        passenger.setEmail(request.getEmail());
        passenger.setPhone(request.getPhone());
        passengerRepo.save(passenger);
        
        long flightId =request.getFlightId();
        Optional<Flight> findById = flightRepo.findById(flightId);
        Flight flight = findById.get();
        
        Reservation reservation = new Reservation();
        reservation.setFlight(flight);
        reservation.setPassenger(passenger);
        reservation.setCheckedIn(false);
        reservation.setNumberOfBags(0);
        String filePath ="C:\\Users\\Sugan\\Documents\\workspace-spring-tool-suite-4-4.10.0.RELEASE\\flight_reservation_app\\tickets\\reservation"+reservation.getId()+"pdf";
        reservationRepo.save(reservation);
        
        pdfGenerator.generateItinerary(reservation,filePath);
        emailUtil.sendItinerary(passenger.getEmail(), filePath);
        return reservation;

	}

}
