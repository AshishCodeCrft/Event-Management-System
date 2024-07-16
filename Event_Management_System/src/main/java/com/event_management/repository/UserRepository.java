package com.event_management.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.event_management.model.User;

public interface UserRepository extends JpaRepository <User, Integer>  {
	List<User> findByEmail(String email);

	
}
