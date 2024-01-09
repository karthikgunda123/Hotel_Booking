<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
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
.table-bordered {
      border-collapse: collapse;
      width: 100%;
    }

    .table-bordered, .table-bordered th, .table-bordered td {
      border: 1px solid #000; /* You can adjust the color and width as needed */
    }
/* Button Styles */
  .button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff; /* Change this to the desired button color */
    color: #fff;
    border: none;
    border-radius: 5px;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  .button:hover {
    background-color: #0056b3; /* Change this to the desired hover color */
  }

  </style>
</head>

<body style="background-color:Tomato;">
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
 
<h3 align="center"><u>View All Hotels</u></h3> 
<table class="table table-bordered table-striped">  
<tr bgcolor="black" style="color: white"> 
<th>ID</th> 
<th>NAME</th> 
<th>LOCATION</th> 
<th>DESCRIPTION</th> 
<th>COST</th>  
<th>IMAGE</th> 
<th>ACTION</th>
</tr> 
 
<c:forEach items="${hoteldata}"  var="hotel"> 
<tr> 
<td><c:out value="${hotel.id}" /></td> 
<td><c:out value="${hotel.name}" /></td> 
<td><c:out value="${hotel.location}" /></td> 
<td><c:out value="${hotel.description}" /></td> 
<td>&#8377;<c:out value="${hotel.cost}" /></td> 
<td><img src="${hotel.url}" alt="${hotel.name} Image" width="100" height="100"/></td> 
<td>
<a href='<c:url value="viewhotel?id=${hotel.id}"></c:url>' class="btn btn-dark">View</a>
</td>
</tr> 
</c:forEach> 
 
</table> 
  
</body>

</html>
