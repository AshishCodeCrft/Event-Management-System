<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Feedback Submitted</title>
    <%@include file="Compo/allcss.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('Img2/A5.jpg');
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
            background-color: rgba(86, 83, 83, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #fff; 
        }

        p {
            color: #fff; 
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <%@include file="Compo/navbar.jsp" %>
    </div>
    <div class="container">
        <h2>Feedback Submitted!</h2>
        <p>Thank you, <strong>${name}</strong>, for your feedback.</p>
        <p>We appreciate your input and will get back to you at <strong>${email}</strong> if necessary.</p>
    </div>
</body>
</html>

