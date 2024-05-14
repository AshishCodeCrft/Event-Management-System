package com.event_management.repository;



import com.event_management.model.Attendee;
import org.springframework.data.repository.CrudRepository;

public interface AttendeeRepository extends CrudRepository<Attendee, Long> {
    // Add custom query methods if needed
}
