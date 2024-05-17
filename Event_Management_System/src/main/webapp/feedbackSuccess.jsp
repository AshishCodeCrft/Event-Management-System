<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Submitted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #4CAF50;
        }
        p {
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Feedback Submitted!</h2>
        <p>Thank you, <strong>${name}</strong>, for your feedback.</p>
        <p>We appreciate your input and will get back to you at <strong>${email}</strong> if necessary.</p>
    </div>
</body>
</html>
