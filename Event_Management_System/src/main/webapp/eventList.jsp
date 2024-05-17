<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Event Listing</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }
        h1 {
            margin: 20px 0;
            color: #333;
        }
        table {
            width: 80%;
            max-width: 1000px;
            border-collapse: collapse;
            border: 1px solid #ddd;
            background-color: #fff;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        form {
            display: inline;
        }
        button, .delete-button {
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover, .delete-button:hover {
            background-color: #45a049;
        }
        .delete-button {
            background-color: #ff4d4d;
        }
        .delete-button:hover {
            background-color: #cc0000;
        }
        .register-button {
            margin: 20px auto;
            display: block;
            background-color: #007bff;
        }
        .register-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Event Listing</h1>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Date</th>
                <th>Location</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="event" items="${events}">
                <tr>
                    <td>${event.name}</td>
                    <td>${event.eventDate}</td>
                    <td>${event.location}</td>
                    <td>
                        <form action="/deleteEvent" method="post">
                            <input type="hidden" name="eventId" value="${event.id}">
                            <button type="submit" class="delete-button">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <button class="register-button" onclick="location.href='/registerAttendee'">Register as Attendee</button>
</body>
</html>

