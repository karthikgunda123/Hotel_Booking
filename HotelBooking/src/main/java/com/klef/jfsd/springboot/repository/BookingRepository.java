package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Booking;

public interface BookingRepository extends JpaRepository<Booking, Integer>
{
	@Query("select b from Booking b where b.id = ?1")
	public List<Booking> viewAllBookings(int id);
}