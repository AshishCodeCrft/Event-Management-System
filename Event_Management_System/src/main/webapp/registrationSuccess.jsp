<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #4CAF50;
            font-size: 24px;
        }
        p {
            margin-bottom: 20px;
            color: #fff;
            font-size: 16px;
        }
        a {
            display: inline-block;
            padding: 10px 20px;
            color: #fff;
            background-color: #007bff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0056b3;
        }
        
        .icon {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        
        <h2><i class="fas fa-check-circle icon"></i>Registration Successful!</h2>
        <p>Your registration as an attendee was successful. Thank you!</p>
        <a href="/attendeeList"><i class="fas fa-users icon"></i>View Attendee List</a>
        <a href="index.jsp" class="home-button"><i class="fas fa-home icon"></i>Go to Home</a>
    </div>
</body>
</html>

