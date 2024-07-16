<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <%@ include file="Compo/allcss.jsp" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Events List</title>
    <style>
       
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e9ecef;
            background-image: url('Img2/A7.jpg');
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        h1 {
            margin-top: 0;
            color: #333;
            font-size: 2.4em;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #343a40;
            color: #ffffff;
        }

        tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        tr:hover {
            background-color: #e2e6ea;
        }

        .delete-button, .register-button {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 8px 12px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: inline-block;
            text-decoration: none; 
        }

        .delete-button:hover, .register-button:hover {
            background-color: #c82333;
        }

        .delete-button:focus, .register-button:focus {
            outline: none;
        }

        .register-button {
            background-color: #007bff;
        }

        .register-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <%@ include file="Compo/navbar.jsp" %>

    <div class="container">
        <h1>Events List</h1>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Date</th>
                    <th>Time</th> 
                    <th>Location</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="event" items="${events}">
                    <tr>
                        <td>${event.name}</td>
                        <td>${event.eventDate}</td>
                        <td>${event.eventTime}</td> 
                        <td>${event.location}</td>
                        <td>
                            <form action="/deleteEvent" method="post" style="display: inline-block;">
                                <input type="hidden" name="eventId" value="${event.id}">
                                <button type="submit" class="delete-button">Delete</button>
                            </form>
                            <a href="/registerAttendee" class="register-button">Register Attendee</a>
                        </td>
                    </tr>
                </c:forEach>
                
                <c:if test="${empty events}">
                    <tr>
                        <td colspan="5">No events found.</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</body>
</html>


