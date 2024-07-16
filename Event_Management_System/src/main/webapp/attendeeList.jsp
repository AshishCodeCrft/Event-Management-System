<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <%@include file="Compo/allcss.jsp" %>
    <title>Attendee List</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa; 
            background-image: url('Img2/A10.jpg');
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
            margin: 0 0 20px;
            color: #343a40; 
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
            border-bottom: 1px solid #dee2e6;
        }
        th {
            background-color: #343a40;
            color: #ffffff;
            font-weight: 600; 
        }
        tr:nth-child(even) {
            background-color: #f8f9fa;
        }
        tr:hover {
            background-color: #e2e6ea;
        }
        .delete-button {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 8px 12px; 
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .delete-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <%@include file="Compo/navbar.jsp" %>

    <div class="container">
        <h1>List of Attendees</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Event</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="attendee" items="${attendees}">
                    <tr>
                        <td>${attendee.id}</td>
                        <td>${attendee.name}</td>
                        <td>${attendee.email}</td>
                        <td>${attendee.event.name}</td>
                        <td>
                            <form action="/deleteAttendee" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${attendee.id}">
                                <button type="submit" class="delete-button">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
