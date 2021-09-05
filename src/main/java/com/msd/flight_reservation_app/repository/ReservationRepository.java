package com.msd.flight_reservation_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.msd.flight_reservation_app.entity.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
