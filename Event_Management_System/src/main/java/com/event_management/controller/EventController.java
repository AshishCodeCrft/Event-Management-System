package com.event_management.controller;





import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.event_management.model.Event;
import com.event_management.repository.EventRepository;

@Controller
public class EventController {
	@Autowired
	EventRepository evnrepo;
	@PostMapping("/submitEvent")
	public String processEventCreationForm(@ModelAttribute Event event, Model model) {
		evnrepo.save(event);
		
	   

	    return "redirect:/events"; 
	}
	@GetMapping("/events")
    public String showEventList(Model model) {
      
		List<Event> events = evnrepo.findAll();
        
        // Add events to the model
        model.addAttribute("events", events);
        
        return "eventList.jsp";
    }
	 @RequestMapping("/deleteEvent")
	    public String deleteEvent(@RequestParam Long eventId) {
	        
	        Event eventDelete= evnrepo.findById(eventId).orElse(null);
	        if (eventDelete != null) {
	          
	            evnrepo.delete(eventDelete);
	        }
	        return "redirect:/events";
	    }
}
