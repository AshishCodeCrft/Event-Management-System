<!DOCTYPE html>
<html lang="en">
<head><%@include file="Compo/allcss.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <style>

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .carousel-item img {
            height: 655px;
        }

        .container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }

        .container h1 {
            color: #fff;
            font-size: 36px;
            margin-bottom: 20px;
        }

        .container p {
            color: #fff;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .container .btn-primary {
            color: #fff;
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .container .btn-primary:hover {
            background-color: #0056b3;
        }

        .additional-content {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
            padding: 50px 20px;
            text-align: center;
            position: relative;
            top: 0px; 
        }

        .additional-content h2 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .additional-content p {
            font-size: 18px;
            margin-bottom: 40px;
        }

        .feature-icons {
            display: flex;
            justify-content: space-around;
            margin-top: 30px;
            flex-wrap: wrap;
        }

        .feature-icons div {
            flex: 1;
            padding: 20px;
            max-width: 250px;
            margin: 10px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .feature-icons i {
            font-size: 40px;
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .feature-icons h3 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .feature-icons p {
            font-size: 16px;
        }
    </style>
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <%@include file="Compo/navindex.jsp" %>

    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/event3.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/event4.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/event5.jpg" class="d-block w-100" alt="...">
            </div>
             <div class="carousel-item">
                <img src="img/event11.jpg" class="d-block w-100" alt="...">
            </div>
             <div class="carousel-item">
                <img src="img/event12.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1>Welcome to the Event Management System</h1>
                <p class="lead">Where every event becomes an unforgettable experience.</p>
                <p class="instructions">Explore our platform to discover and manage your events with ease.</p>
                <a href="signup.jsp" class="btn btn-primary">Sign Up Now</a>
            </div>
        </div>
    </div>

   
    <div class="additional-content">
        <h2>Discover Our Features</h2>
        <p>Our Event Management System offers a comprehensive suite of tools to help you plan, manage, and execute your events flawlessly.</p>
        <div class="feature-icons">
            <div>
                <i class="fas fa-calendar-check"></i>
                <h3>Easy Scheduling</h3>
                <p>Schedule your events with ease using our intuitive calendar features.</p>
            </div>
            <div>
                <i class="fas fa-users"></i>
                <h3>Attendee Management</h3>
                <p>Manage your attendees effortlessly with our user-friendly interface.</p>
            </div>
            <div>
                <i class="fas fa-chart-line"></i>
                <h3>Performance Tracking</h3>
                <p>Track the performance of your events with detailed analytics.</p>
            </div>
        </div>
    </div>
</body>
</html>

