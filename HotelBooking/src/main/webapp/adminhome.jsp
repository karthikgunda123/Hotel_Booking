<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
.customer-piechart {
    display: flex;
    flex-direction: column;
    align-items: center;
    height: 100vh; /* Adjust the height as needed, e.g., 100% or a specific value */
}

.centered-text {
    text-align: center;
}

  </style>
</head>

<body>
  <header>
    <nav class="navbar">
      <ul>
        <li><a href="adminHome">Dashboard</a></li>
        <li><a href="viewcustomers">View Customers</a></li>
        <li><a href="deleteCustomer">Delete Customers</a></li>
        <li><a href="addmanagers">Add Managers</a></li>
        <li><a href="viewmanagers">View Managers</a></li>
        <li><a href="/">Logout</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <div class="dashboard">
      <h2>Welcome to Admin Dashboard</h2>
      <div class="cards-container">
        <div class="card">
          <h3>View Customers</h3>
          <p>View and manage existing Customers.</p>
        </div>
        <div class="card">
          <h3>Delete Customers</h3>
          <p>Delete Customers from the system.</p>
        </div>
        <br>
        <div class="card">
          <h3>Customers Count</h3>
          <p><mark>${ccount}</mark></p>
        </div>
      </div>
    </div>
  </main>
<script>
  fetch('count-persons')
  .then(response => response.json())
  .then(data => {
      const Customers = data.customer;
      const Managers = data.manager;

      const ctx = document.getElementById('customerPieChart').getContext('2d');
      new Chart(ctx, {
          type: 'polarArea',
          data: {
              labels: ['Customers', 'Managers'],
              datasets: [{
                  label: 'No of Persons',
                  data: [Customers, Managers], // Use an array for data
                  backgroundColor: ['rgba(54, 162, 235, 0.5)', 'rgba(255, 99, 132, 0.5)'], // Adjust the colors here
                  borderColor: ['rgba(54, 162, 235, 1)', 'rgba(255, 99, 132, 1)'], // Adjust the colors here
                  borderWidth: 3
              }]
          },
          options: {
              responsive: false, // Disable responsiveness
              maintainAspectRatio: false, // Disable aspect ratio maintenance
              width: 353, // Set the width
              height: 353, // Set the height
          }
      });
  });
    </script>
<div class="customer-piechart">
    <h1 class="centered-text">Number of Persons</h1>
    <div class="count">
        <canvas id="customerPieChart" width="353" height="353"></canvas>
    </div>
</div>
</body>

</html>
