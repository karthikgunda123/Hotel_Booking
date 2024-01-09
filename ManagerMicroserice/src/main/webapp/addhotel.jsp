<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manager Dashboard - Add Hotel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
        }

        .navbar {
            display: flex;
            justify-content: flex-start;
        }

        .navbar ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex; /* Display the list items horizontally */
        }

        .navbar li {
            margin-right: 20px;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            font-size: 18px;
            padding: 5px 10px;
            border-radius: 5px;
        }

        .navbar a:hover {
            background-color: #555;
        }

        main {
            padding: 20px;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            position: absolute;
            bottom: 0;
            width: 100%;
        }

        .add-user-form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .add-user-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .add-user-form form {
            display: flex;
            flex-direction: column;
        }

        .add-user-form label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        .add-user-form input {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .add-user-form button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .add-user-form button:hover {
            background-color: #555;
        }
        @keyframes blink {
  0% { opacity: 1; }
  50% { opacity: 0; }
  100% { opacity: 1; }
}

.blink h3 {
  animation: blink 1s infinite;
}

    </style>
</head>

<body>
<header>
    <nav class="navbar">
        <ul>
        <li><a href="managerhome">Dashboard</a></li>
        <li><a href="viewcontacts">View Contacts</a></li>
        <li><a href="addHotel">Add Hotel</a></li>
        <li><a href="viewhotels">View Hotels</a></li>
        <li><a href=deletehotels>Delete Hotels</a></li>
        <li><a href="/manager/managerLogin">Logout</a></li>
      </ul>
    </nav>
</header>
<span class="blink">
<h3 align=center style="color:red">${message}</h3>
</span>
<main>
    <div class="add-user-form">
        <h2>Add Hotel</h2>
        <form method="post" action="inserthotel">
            <!-- Change the labels and input fields accordingly -->
            <label for="hotelName">Hotel Name:</label>
            <input type="text" id="hotelName" name="hotelName" required>

            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required>

            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>
            <br>
            <label for="cost">Cost:</label>
            <input type="text" id="cost" name="cost" required>
            
            <label for="cost">Image URL:</label>
            <input type="text" id="cost" name="url" required>

            <button type="submit">Add Hotel</button>
        </form>
    </div>
</main>

<footer>
    <!-- Your footer content goes here -->
</footer>
</body>

</html>