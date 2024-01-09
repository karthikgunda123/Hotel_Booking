package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Manager;

@Repository
public interface ManagerRepository extends JpaRepository<Manager, Integer>
{
	@Query("select m from Manager m where m.email = ?1 and m.password = ?2")
	public Manager checkManagerLogin(String email, String passowrd);
}
