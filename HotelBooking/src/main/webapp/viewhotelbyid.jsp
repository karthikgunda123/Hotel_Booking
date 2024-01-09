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

<body>
  <header>
    <nav class="navbar">
      <ul>
        <li><a href="managerhome">Dashboard</a></li>
        <li><a href="viewcontacts">View Contacts</a></li>
        <li><a href="addHotel">Add Hotel</a></li>
        <li><a href="viewhotels">View Hotels</a></li>
        <li><a href=deletehotels>Delete Hotels</a></li>
        <li><a href="/">Logout</a></li>
      </ul>
    </nav>
  </header>
  <br> 
 
<h3 align="center"><u>View Hotel Profile</u></h3>   
<br><br>

<div class="profile">
        <h1>Hotel ID: ${hoteldata.id}</h1>
        <table>
			<tr>
			<td>Image:</td>
				<td><img src="${hoteldata.url}"
					alt="${hoteldata.name} Image" width="200" height="150" /></td>
			</tr>
			<tr>
                <td>Name:</td>
                <td>${hoteldata.name}</td>
            </tr>
            <tr>
                <td>Location:</td>
                <td>${hoteldata.location }</td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>${hoteldata.description }</td>
            </tr>
            <tr>
                <td>Cost:</td>
                <td>${hoteldata.cost}</td>
            </tr>
        </table>
    </div>
</body>

</html>
