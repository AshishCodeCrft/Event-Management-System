<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <%@include file="Compo/allcss.jsp" %>
    <style>
     
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-image: url('Img2/A9.jpg');
            background-size: cover;
            background-position: center;
        }

        .navbar {
            width: 100%;
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        .container {
            width: 80%;
            max-width: 800px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            margin-top: 100px; 
            border-radius: 15px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3);
            box-sizing: border-box;
            margin-bottom: 40px; 
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .buttons-container,
        .social-links {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px; 
        }

        .button {
            display: inline-block;
            padding: 12px 24px; 
            margin: 5px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <%@include file="Compo/navbar.jsp" %>
    </div>
    <div class="container">
        <h2>Home</h2>
        <div class="buttons-container">
            <a href="UserRegister1.jsp" class="button">Click Here for New Registration</a>
            <a href="UserLogin.jsp" class="button">Login</a>
            <a href="EventCreate.jsp" class="button">Create New Event</a>
            <a href="/registerAttendee" class="button">Register Another Attendee</a>
            <a href="/events" class="button">View All Events</a>
            <a href="/attendeeList" class="button">View All Attendees</a>
            <a href="DashBoard.jsp" class="button">DashBoard</a>
            
            
        </div>
        <div class="social-links">
            <a href="https://facebook.com" target="_blank" class="button">Follow us on Facebook</a>
            <a href="https://twitter.com" target="_blank" class="button">Follow us on Twitter</a>
            <a href="/feedback" class="button">Give Feedback</a>
        </div>
    </div>
</body>
</html>

