package com.bhumika.flightReservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bhumika.flightReservation.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {
	 
	User findByEmail(String email);


}
