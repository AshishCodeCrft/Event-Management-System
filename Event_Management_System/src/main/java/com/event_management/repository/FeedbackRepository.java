package com.event_management.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.event_management.model.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Long> {
   
}
