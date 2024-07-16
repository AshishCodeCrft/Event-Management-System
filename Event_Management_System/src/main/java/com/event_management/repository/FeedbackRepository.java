package com.event_management.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.event_management.model.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Long> {
   
}
/*
 * 
 *
 * Encapsulation:- is seen in the Feedback class, which bundles data fields and methods that manipulate these fields.
 * 
 * Abstraction:- is used in the FeedbackRepository interface, which abstracts the complexity of database operations. 
 * 
 * Inheritance:- is evident as FeedbackRepository extends JpaRepository, inheriting its methods. 
 * 
 * Polymorphism:- is utilized through the repository interface, enabling flexible interaction with Feedback entities 
 * via inherited methods from JpaRepository.
 * 
 */