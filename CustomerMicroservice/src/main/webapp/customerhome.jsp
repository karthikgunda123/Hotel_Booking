<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/global-header.css">
    <link rel="stylesheet" href="./assets/css/global-footer.css">
    <link rel="stylesheet" href="./assets/css/rooms-and-suites.css">
    <style>
    @keyframes blink {
  0% { opacity: 1; }
  50% { opacity: 0; }
  100% { opacity: 1; }
}

.blink h3 {
  animation: blink 1s infinite;
}
    </style>
    <link rel="shortcut icon" href="./assets/img/favicon.webp" type="image/x-icon">
</head>
<body>
<header>
    <div class="header-container">
        <nav class="header-nav-bar">
            <div class="header-nav-logo">
                <a href="custhome">
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

</header>
<main>
    <div class="container">
			<span class="blink">
				<h3 align=center style="color: black"><mark>Hi ${cname}, Welcome to </mark></h3>
			</span> <br>
			<!-- Top Text -->
        <div class="page-header-container">
            <h2 class="page-header">Star Hotel Rooms</h2>
            <hr />
            <p class="page-sub-header">
                Get the most of our hotel specials. Enjoy the modern <br>
                comfort and panoramic view
            </p>
        </div>

        <!-- Special offers section -->
        <section class="special-offers">
            <div class="row center-lg">
                <div class="col image-col right-marg">
                    <img src="assets/img/hotel-1.webp" alt="room-image" class="small-image">
                    <img src="assets/img/hotel-2.webp" alt="room-image" class="small-image">
                    <img src="assets/img/hotel-3.webp" alt="room-image" class="small-image">
                    <div class="side-by-side-container">
                        <div class="large-image-container">
                            <img src="assets/img/hotel-4-large.webp" alt="room-image-large" class="large-image">
                        </div>
                        <section class="stacked-image-container">
                            <div><img src="assets/img/hotel-5.webp" alt="room-image" class="small-image"></div>
                            <div><img src="assets/img/hotel-6.webp" alt="room-image" class="small-image"></div>
                        </section>
                    </div>
                </div>
                <div class="col">
                    <h3 class="offers-title">Special Offers</h3>
                    <p class="offers-sub-title">
                        Get 10% discount off this city view- standard room. <br> Offers valid till june 31st 2020
                    </p>
                    <ul class="offers-list">
                        <li>
                            <div>
                                <img src="assets/img/check-square.svg" alt="tick" class="list-icon">
                                <p class="list-text">Free Wi-Fi Service</p>
                            </div>
                        </li>
                        <li>
                            <div>
                                <img src="assets/img/check-square.svg" alt="tick" class="list-icon">
                                <p class="list-text">Best Rate Guarantee</p>
                            </div>
                        </li>
                        <li>
                            <div>
                                <img src="assets/img/check-square.svg" alt="tick" class="list-icon">
                                <p class="list-text">Free DSTV Access</p>
                            </div>
                        </li>
                    </ul>
                    <a href="#" class="btn btn-fill btn-large">View More</a>
                </div>
            </div>
        </section>

        <!-- Rooms -->
        

    </div>
</main>

<footer class="footer">
    <div class="footer-container">
        <nav class="footer-nav">
            <div class="footer-description">
                <h3 class="footer-description-title">Star Hotels</h3>
                <p>Hospitality and Comfort are our watchwords</p>
            </div>
            <div class="footer-contact-us">
                <h3 class="footer-description-title">Contact Us</h3>
                <p class="footer-description-detail">
                    <img src="./assets/img/map-pin.svg" class="footer-description-icon" alt="star hotel location">

                    <span>Warangal, Telangana, India</span></p>
                <p class="footer-description-detail">
                    <img src="./assets/img/phone.svg" class="footer-description-icon" alt="star hotels phone number">
                    <span>
					 7989038614</span></p>
                <p class="footer-description-detail">
                    <img src="./assets/img/mail.svg" class="footer-description-icon" alt="star hotels email">
                    <span>gundakarthik644@gmail.com</span> </p>
            </div>
            <div class="footer-follow-us">
                <h3 class="footer-description-title">Follow Us</h3>
                <ul class="footer-follow-us-lists">
                    <li class="follow-us-list">
                        <a href="">
                            <img src="./assets/img/facebook.svg" alt="star hotels facebook page">
                        </a>
                    </li>
                    <li class="follow-us-list">
                        <a href="">
                            <img src="./assets/img/twitter.svg" alt="star hotels twitter page">
                        </a>
                    </li>
                    <li class="follow-us-list">
                        <a href="">
                            <img src="./assets/img/instagram.svg" alt="star hotels instagram page">
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</footer>
<script src="assets/js/switchRooms.js"></script>
<script src="assets/js/toggleHamburger.js"></script>
</body>

</html>