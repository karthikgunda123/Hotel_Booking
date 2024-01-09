<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
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
            justify-content: center; /* Center the list items horizontally */
            align-items: center;
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
            font-size: 25px;
            padding: 5px 10px;
            border-radius: 5px;
        }

.navbar a:hover {
  background-color: #555;
}
body {
            font-family: Arial, sans-serif;
        }

        .profile {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }

        .profile h1 {
            text-align: center;
        }

        .profile table {
            width: 100%;
            border-collapse: collapse;
        }

        .profile th,
        .profile td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .profile td {
            font-weight: bold;
        }
  </style>
</head>

<body style="background-color:Tomato;">
  <header>
    <nav class="navbar">
      <ul>
        <li><a href="adminHome">Dashboard</a></li>
        <li><a href="viewcustomers">View Customers</a></li>
        <li><a href="deleteCustomer">Delete Customers</a></li>
        <li><a href="/">Logout</a></li>
      </ul>
    </nav>
  </header>
  <br> 
 
<h3 align="center"><u>View Customer Profile</u></h3>   
<br><br>

<div class="profile">
        <h1>Profile ID: ${custdata.id}</h1>
        <table>
            <tr>
                <td>Name:</td>
                <td>${custdata.name}</td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>${custdata.email }</td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>*******</td>
            </tr>
        </table>
    </div>
</body>

</html>
