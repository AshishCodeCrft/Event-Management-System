<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="Compo/allcss.jsp" %>
    <meta charset="UTF-8">
    <title>Create Event</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-image: url('Img2/A5.jpg');
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
            width: 50%;
            margin: 50px auto;
            background-color: rgba(86, 83, 83, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            position: relative; 
        }

        h1 {
            text-align: center;
            color: white;
        }

        label {
            font-weight: bold;
            color: white;
        }

        input[type="text"],
        input[type="date"],
        input[type="time"],
        textarea {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        textarea {
            height: 100px;
        }

        input[type="submit"] {
            background-color: #45a049;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .fas {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <%@include file="Compo/navbar.jsp" %>
    </div>
    
    <div class="container">
        <h1><i class="fas fa-calendar-plus"></i> Create Event</h1>
        <form action="submitEvent" method="post">
            <label for="eventName"><i class="fas fa-heading"></i> Event Name</label><br>
            <input type="text" id="eventName" name="name" required><br>
            
            <label for="eventDate"><i class="fas fa-calendar-alt"></i> Event Date</label><br>
            <input type="date" id="eventDate" name="eventDate" required><br>
            
            <label for="eventTime"><i class="fas fa-clock"></i> Event Time</label><br>
            <input type="time" id="eventTime" name="eventTime" required><br>
            
            <label for="eventLocation"><i class="fas fa-map-marker-alt"></i> Event Location</label><br>
            <input type="text" id="eventLocation" name="location" required><br>
            
            <input type="submit" value="Create Event">
        </form>
    </div>
</body>
</html>


