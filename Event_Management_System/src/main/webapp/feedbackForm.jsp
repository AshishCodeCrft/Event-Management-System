<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Feedback Form</title>
    <%@include file="Compo/allcss.jsp" %>
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
            margin-top: 50px; 
        }

        h2 {
            margin-bottom: 20px;
            color: white;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            color: white;
        }

        input, textarea {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            padding-left: 20px; 
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
        <h2><i class="fas fa-comments"></i> Feedback Form</h2>
        <form action="/submitFeedback" method="post">
            <label for="name"><i class="fas fa-user"></i> Name</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email"><i class="fas fa-envelope"></i> Email</label>
            <input type="email" id="email" name="email" required>
            
            <label for="message"><i class="fas fa-comment"></i> Feedback</label>
            <textarea id="message" name="message" rows="5" required></textarea>
            
            <input type="submit" value="Submit Feedback">
        </form>
    </div>
</body>
</html>
