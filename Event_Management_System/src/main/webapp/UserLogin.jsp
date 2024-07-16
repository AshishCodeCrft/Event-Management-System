<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<%@include file="Compo/allcss.jsp" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<style type="text/css">
.card-sh {
    box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3);
    background-color: rgba(255, 255, 255, 0.8); 
    border-radius: 15px; 
}

body {
    background-image: url('Img2/A2.jpg');
    background-size: cover; 
    background-attachment: fixed; 
    font-family: Arial, sans-serif; 
}

.container {
    background-color: rgba(255, 255, 255, 0.6); 
    border-radius: 15px; 
    padding: 30px; 
    margin-top: 100px;
}

.card-header {
    text-align: center; 
    font-size: 24px; 
    font-weight: bold; 
}

.form-control {
    border-radius: 10px; 
}

.btn {
    border-radius: 10px; 
}

.btn-success {
    background-color: #28a745; 
    border: none; 
}

.text-center a.btn {
    color: #007bff; 
    text-decoration: none; 
}

.text-center a.btn:hover {
    color: #0056b3; 
    text-decoration: underline; 
}
</style>
</head>
<body class="bg-light">

<%@include file="Compo/navindex.jsp" %>

<div class="container p-5">

    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card card-sh">
                <div class="card-header">
                    <p class="fs-3">Login</p>
                </div>
                <div class="card-body">
                    <form action="login" method="get">
                        <div class="mb-3">
                            <label for="email"><i class="fas fa-envelope"></i> Email</label>
                            <input type="email" id="email" name="email" class="form-control" placeholder="Enter the email" required>
                        </div>
                        <div class="mb-3">
                            <label for="password"><i class="fas fa-lock"></i> Password</label>
                            <input type="password" id="password" name="password" class="form-control" placeholder="Enter the password" required>
                        </div>
                        <button class="btn btn-success col-md-12" type="submit">Login</button>
                        <div class="text-center mt-2">
                            <a href="UserRegister1.jsp" class="btn"><i class="fas fa-user-plus"></i> Not Registered? SignUp here!</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

</body>
</html>

