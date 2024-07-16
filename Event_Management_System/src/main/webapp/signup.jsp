<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Management System</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body, html {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
            height: 100%;
        }
        body {
           background-image: url('Img2/A1.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
        .maincontainer {
            position: relative;
            z-index:1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .formdiv {
            background: rgba(255, 255, 255, 0.8); 
            padding: 30px;
            width: 300px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        h1 {
            margin-bottom: 20px;
            color: #333;
        }
        .formdiv a {
            display: block;
            padding: 15px 20px;
            margin-bottom: 15px;
            text-align: center;
            text-decoration: none;
            color: white;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s;
        }
        .formdiv a:hover {
            transform: translateY(-2px);
        }
        .formdiv a:active {
            transform: translateY(2px);
        }
        .btn {
            background-color: #007BFF;
        }
        .btn1 {
            background-color: #337ab8;
        }
        .formdiv a:last-child {
            margin-bottom: 0;
            color: #007BFF;
            background-color: transparent;
            border: 1px solid #007BFF;
        }
        .formdiv a:last-child:hover {
            background-color: #007BFF;
            color: white;
        }
        
        .fa {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<div class="overlay"></div>
<div class="maincontainer">
    
    <div class="formdiv">
        <h1>Welcome to the Event Management System</h1>
        
        <a href="UserRegister1.jsp" id="signup" class="btn"><i class="fas fa-user-plus"></i> Not Registered? SignUp here!</a>
        <a href="UserLogin.jsp" class="btn1"><i class="fas fa-sign-in-alt"></i> Already Registered? Login here!</a>
    </div>
</div>
</body>
</html>


