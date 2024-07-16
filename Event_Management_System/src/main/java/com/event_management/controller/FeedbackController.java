package com.event_management.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.event_management.model.Feedback;
import com.event_management.repository.FeedbackRepository;

@Controller
public class FeedbackController {

    @Autowired
    private FeedbackRepository feedbackRepository;

    @PostMapping("/submitFeedback")
    public String submitFeedback(@RequestParam String name, 
                                 @RequestParam String email, 
                                 @RequestParam String message, 
                                 Model model) {
 
        Feedback feedback = new Feedback();
        feedback.setName(name);
        feedback.setEmail(email);
        feedback.setMessage(message);
        
       
        feedbackRepository.save(feedback);

        model.addAttribute("name", name);
        model.addAttribute("email", email);
        model.addAttribute("message", message);
        
        return "feedbackSuccess.jsp"; 
    }
  
}
