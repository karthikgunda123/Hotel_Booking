<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - Add User</title>
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

<body style="background-color:Tomato;">
  <header>
    <nav class="navbar">
      <ul>
        <li><a href="adminHome">Dashboard</a></li>
        <li><a href="viewcustomers">View Customers</a></li>
        <li><a href="deleteCustomer">Delete Customers</a></li>
        <li><a href="addmanagers">Add Managers</a></li>
        <li><a href="viewmanagers">View Managers</a></li>
        <li><a href="adminlogin">Logout</a></li>
      </ul>
    </nav>
  </header>
	<span class="blink">
				<h3 align=center style="color: black"><mark>${message}</mark></h3>
			</span> <br>
  <main>
    <div class="add-user-form">
      <h2>Add Manager</h2>
      <form method = "post" action = "insertmanagers">
        <label for="username">Username:</label>
        <input type="text" id="username" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="pwd" required>

        <button type="submit">Add User</button>
      </form>
    </div>
  </main>

  <footer>
    <!-- Your footer content goes here -->
  </footer>
</body>

</html>
