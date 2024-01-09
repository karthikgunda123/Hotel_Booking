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
    <style>
        .room-card {
            background-color: #fff;
            border: 1px solid #e0e0e0;
            border-radius: 5px;
            padding: 20px;
            margin: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: 0.3s;
        }

        .room-card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .rooms-img {
            max-width: 100%;
        }

        .room-title {
            font-size: 18px;
            font-weight: bold;
            margin: 10px 0;
        }

        .room-text {
            font-size: 14px;
            margin: 10px 0;
        }
.room-description {
    max-height: 300px; /* Adjust the max height as needed */
    max-width: 400px;
    overflow: hidden;
    white-space: pre-line;
}

        .details-container {
            display: flex;
            align-items: center;
            margin: 5px 0;
        }

        .list-icon {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }

        .list-text {
            font-size: 14px;
        }

        .amount-text {
            font-size: 18px;
            font-weight: bold;
            margin: 10px 0;
        }

        .buttons-container {
            margin-top: 10px;
        }

        .btn {
            text-decoration: none;
            display: inline-block;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn-ghost {
            color: #007BFF;
            background-color: #fff;
            border: 1px solid #007BFF;
            margin-right: 10px;
        }

        .btn-fill {
            color: #fff;
            background-color: #007BFF;
        }
        .centered-form {
            display: flex;
            justify-content: center;
            align-items: center;

        }

    </style>
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
                        class="header-nav-link header-active" href="bookings">View Bookings
                    </a></li>
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
<h2 align="center">Standard, Executive and King Suite Rooms</h2>
<div class="centered-form">
    <form class="form-inline my-2 my-lg-0" method="get" action="search">
        <input class="form-control mr-sm-2" type="search" name="name" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
</div>
<br>
<section class="rooms-section">
    <div class="row center-lg">
        <c:forEach items="${hoteldata}" var="hotel">
            <div class="col col-2">
                <div class="room-card">
                    <img src="${hotel.url}" alt="${hotel.name} Image" class="rooms-img" height="200" width="400">
                    <h3 class="room-title">${hotel.name}(${hotel.location})</h3>
                    <p class="room-description">${hotel.description}</p>
                    <p class="amount-text">&#8377;${hotel.cost} Per Stay</p>
                    <div class="buttons-container">
                        <a href="<c:url value="book?id=${hotel.id}"></c:url>" class="btn btn-fill">Book Now</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>

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