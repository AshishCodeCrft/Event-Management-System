<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="Compo/allcss.jsp" %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url('Img2/A3.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
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
        background-color: rgba(86, 83, 83, 0.9);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
        width: 90%;
        max-width: 400px;
        text-align: center;
        color: white;
        margin-top: 100px; /* Adjusted to avoid overlap with navbar */
    }

    h2 {
        margin-bottom: 20px;
        color: #4CAF50;
        font-size: 24px;
    }

    p {
        margin-bottom: 20px;
        font-size: 16px;
    }

    a.btn {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px;
        color: #fff;
        background-color: #007bff;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    a.btn:hover {
        background-color: #0056b3;
    }

    .btn-secondary {
        background-color: #6c757d;
    }

    .btn-secondary:hover {
        background-color: #5a6268;
    }
</style>
</head>
<body>
<%@include file="Compo/navbar.jsp" %>
    <div class="container">
        <h2>Login Successful!</h2>
        <p>Welcome back! You have successfully logged in.</p>
        <a href="EventCreate.jsp" class="btn">Create New Event</a>
        <a href="/events" class="btn btn-secondary">View All Events</a>
        <a href="homeindex.jsp" class="btn btn-secondary">Go to Home</a>
    </div>
</body>
</html>


