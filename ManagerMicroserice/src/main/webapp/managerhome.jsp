<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Manager Dashboard</title>
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

.dashboard {
  text-align: center;
}

.dashboard h2 {
  font-size: 24px;
  margin-bottom: 30px;
}

.cards-container {
  display: flex;
  justify-content: center;
  gap: 20px;
}

.card {
  width: 300px;
  padding: 20px;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 5px;
  text-align: center;
}

.card h3 {
  font-size: 20px;
  margin-bottom: 15px;
}

.card p {
  font-size: 16px;
  color: #777;
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

  <main>
    <div class="dashboard">
      <h2>Welcome to Manager Dashboard</h2>
      <div class="cards-container">
        <div class="card">
          <h3>View Customers</h3>
          <p>View and manage existing Customers.</p>
        </div>
      </div>
    </div>
  </main>

  <footer>
    <!-- Your footer content goes here -->
  </footer>
</body>

</html>
