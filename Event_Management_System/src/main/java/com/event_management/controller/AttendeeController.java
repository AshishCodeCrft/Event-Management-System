package com.event_management.controller;


import com.event_management.model.Attendee;
import com.event_management.model.Event;
import com.event_management.repository.AttendeeRepository;
import com.event_management.repository.EventRepository;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AttendeeController {

    @Autowired
    private AttendeeRepository attendeeRepository;

    @Autowired
    private EventRepository eventRepository;

    @GetMapping("/registerAttendee")
    public String showAttendeeRegistrationForm(Model model) {
        List<Event> events = eventRepository.findAll();
        model.addAttribute("events", events);
        return "attendeeRegistrationForm.jsp";
    }

    @PostMapping("/registerAttendee")
    @Transactional
    public String registerAttendee(@ModelAttribute Attendee attendee) {
        attendeeRepository.save(attendee);
        return "registrationSuccess.jsp";
    }
    
}
