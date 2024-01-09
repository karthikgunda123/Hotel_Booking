<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Star Hotels Helps you Discover The Perfect Balance
	Of Hospitality, Luxury And
	Comfort.">
    <title>Star Hotels</title>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/global-header.css">
    <link rel="stylesheet" href="./assets/css/global-footer.css">
    <link rel="stylesheet" href="./assets/css/accesibility.css">
    <link rel="stylesheet" href="./assets/css/index.css">
    <link rel="shortcut icon" href="./assets/img/favicon.webp" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body class="scroll-bar">
<div id="loader">
    <svg version="1.1" id="L9" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
         viewBox="0 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
			<path fill="#d4af37" d="M73,50c0-12.7-10.3-23-23-23S27,37.3,27,50 M30.9,50c0-10.5,8.5-19.1,19.1-19.1S69.1,39.5,69.1,50">
				<animateTransform
                        attributeName="transform"
                        attributeType="XML"
                        type="rotate"
                        dur="1s"
                        from="0 50 50"
                        to="360 50 50"
                        repeatCount="indefinite" />
		</path>
		</svg>
</div>
<header>
    <div class="header-container">
        <nav class="header-nav-bar">
            <div class="header-nav-logo">
                <a href="index.html">
                    <img src="https://res.cloudinary.com/joshuafolorunsho/image/upload/v1591615159/star_hotels_logo.png"
                         alt="star hotels logo">
                </a>
            </div>
            <ul class="header-nav-lists">
                <li class="header-nav-list"><a
                        class="header-nav-link header-active" href="custhome">Home</a></li>
                <li class="header-nav-list"><a
                        class="header-nav-link header-active" href="showhotels">Hotels</a></li>
                <li class="header-nav-list"><a
                        class="header-nav-link header-active" href="custfacilities">Facilities</a></li>
                <li class="header-nav-list"><a
                        class="header-nav-link header-active" href="custcontact">Contact
                    Us</a></li>
                <li class="header-nav-list"><a
                        class="header-nav-link header-active" href="bookings">View Bookings</a></li>
                <li class="header-nav-list"><a
                        class="header-nav-link header-active" href="changepassword">Change Password</a></li>
                <li class="header-nav-list"><a
                        class="header-btn header-btn-custom" href="custlogin">LogOut</a></li>
            </ul>

            <div class="header-hamburger-icon">
                <div class="header-hamburger-line-1"></div>
                <div class="header-hamburger-line-2"></div>
                <div class="header-hamburger-line-3"></div>
            </div>
        </nav>
    </div>
</header>
<table class="table table-striped">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Booking ID</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">HotelName</th>
        <th scope="col">Location</th>
        <th scope="col">Price</th>
        <th scope="col">Rooms</th>
        <th scope="col">Date</th>
        <th scope="col">Days</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    		<c:forEach items="${bookingList}" var="booking"> 
			<tr>
				<th><c:out value="${booking.bid}" /></th>
				<td><c:out value="${booking.name}" /></td>
				<td><c:out value="${booking.email}" /></td>
				<td><c:out value="${booking.hotelname}" /></td>
				<td><c:out value="${booking.location}" /></td>
				<td><c:out value="${booking.price}" /></td>
				<td><c:out value="${booking.rooms}" /></td>
				<td><c:out value="${booking.date}" /></td>
				<td><c:out value="${booking.days}" /></td>
				<td><a href='pay'><button class="btn btn-danger">Pay</button></a></td>
			</tr>
			</c:forEach> 
		</tbody>
</table>
<script defer async>
    (() => {
        const loader = document.getElementById('loader');
        const scrollBar = document.getElementsByClassName('scroll-bar')[0];
        window.addEventListener('load', () => {
            loader.classList.add('none');
            scrollBar.classList.remove('scroll-bar')
        });
    })();
</script>
<script  defer async src="assets/js/toggleHamburger.js"></script>
</body>
</html>