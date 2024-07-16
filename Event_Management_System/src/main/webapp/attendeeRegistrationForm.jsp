<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <%@ include file="Compo/allcss.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendee Registration</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            min-height: 100vh;
            background-image: url('Img2/A6.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            margin-top: 200px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        select:focus {
            border-color: #4CAF50;
            outline: none;
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
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

        
        .fas {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <%@ include file="Compo/navbar.jsp" %>
    </div>
    <div class="container">
        <form action="registerAttendee" method="post">
            <h2><i class="fas fa-user-plus"></i> Attendee Registration Form</h2>
            <label for="name"><i class="fas fa-user"></i> Name</label>
            <input type="text" id="name" name="name" required>
            <label for="email"><i class="fas fa-envelope"></i> Email</label>
            <input type="email" id="email" name="email" required>
            <label for="event"><i class="fas fa-calendar"></i> Event List</label>
            <select id="event" name="event" required>
                <c:forEach items="${events}" var="event">
                    <option value="${event.id}">${event.name}</option>
                </c:forEach>
            </select>
            <button type="submit"><i class="fas fa-check"></i> Register</button>
        </form>
    </div>
</body>
</html>
