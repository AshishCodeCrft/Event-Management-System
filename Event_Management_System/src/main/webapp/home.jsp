<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('https://source.unsplash.com/random');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 800px;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #4CAF50;
            font-size: 28px;
        }
        p {
            margin-bottom: 20px;
            color: #333;
            font-size: 18px;
        }
        a, .button {
            display: inline-block;
            padding: 12px 24px;
            color: #fff;
            background-color: #007bff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin: 10px 20px;
            font-size: 16px;
        }
        a:hover, .button:hover {
            background-color: #0056b3;
        }
        .button {
            margin-top: 20px;
        }
        .buttons-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }
        .social-links {
            margin-top: 30px;
        }
        .social-links a {
            margin: 0 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registration Successful!</h2>
        <p>Your registration as an attendee was successful. Thank you!</p>
        <div class="buttons-container">
        
            <a href="/registerAttendee" class="button">Register Another Attendee</a>
            <a href="/home" class="button">Go to Home Page</a>
            <a href="/events" class="button">View All Events</a>
            <a href="/feedback" class="button">Give Feedback</a>
        </div>
        <div class="social-links">
            <a href="https://facebook.com" target="_blank" class="button">Follow us on Facebook</a>
            <a href="https://twitter.com" target="_blank" class="button">Follow us on Twitter</a>
        </div>
    </div>
</body>
</html>

