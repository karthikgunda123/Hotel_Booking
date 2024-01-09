package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Hotel;

@Repository
public interface HotelRepository extends JpaRepository<Hotel, Integer>
{
	@Query("select h from Hotel h where h.location = ?1")
	public List<Hotel> viewHotelsByHotelName(String name);
}
