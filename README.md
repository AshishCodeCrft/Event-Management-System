# Event-Management-System
Overview

The Event Management System is a web-based application built using Spring Boot that allows users to manage events, register attendees, and submit feedback. The application provides an intuitive interface for users to view and register for events, as well as an administrative interface for managing attendees and collecting feedback.

#Features

#Event Management
List Events: Display a list of all events with details such as name, date, and location.
Register for Events: Allow users to register as attendees for specific events.
Delete Events: Admins can delete events.
#Attendee Management
Attendee Registration: Provide a form for users to register as attendees for events.
List Attendees: Display a list of registered attendees for each event.
Delete Attendees: Admins can delete attendee records.
#Feedback System
Submit Feedback: Allow users to submit feedback through a form.
Store Feedback: Save feedback details in the database.
Email Notifications: Send email notifications upon receiving feedback.

#Technologies Used

1.Spring Boot: Backend framework for developing the RESTful web services.
2.Spring Data JPA: Data access layer for interacting with the database.
3.Thymeleaf/JSP: View layer for rendering the user interface.
4.Spring Mail: Sending email notifications.
5.Maven: Dependency management and build tool.
6.H2 Database: In-memory database for development and testing.
7.JavaMailSender: For handling email sending functionality.

#Setup Instructions

Prerequisites
Java 8 or later
Maven
An SMTP server for sending emails (e.g., Gmail, SendGrid)

#Usage

#Registering Attendees
Navigate to /registerAttendee to register an attendee.
Fill out the registration form and submit.
#Viewing Attendees
Navigate to /attendeeList to view the list of attendees.
Admins can delete attendees using the delete button next to each attendee.
#Managing Events
Navigate to /events to view and manage events.
Admins can delete events using the delete button next to each event.
#Submitting Feedback
Navigate to /feedback to submit feedback.
Fill out the feedback form and submit.
