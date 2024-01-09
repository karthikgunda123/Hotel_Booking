<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>Star Hotels - Contact page</title>
		<link
			rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
		/>

		<link
			href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap"
			rel="stylesheet"
		/>
		<style>
			form#contact #map iframe {
				border-top-left-radius: 23px;
				border-bottom-left-radius: 23px;
				margin-bottom: -7px;
				position: relative;
				z-index: 2;
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
		<link rel="stylesheet" href="./assets/css/global-header.css" />
		<link rel="stylesheet" href="./assets/css/global-footer.css" />
		<link rel="stylesheet" href="./assets/css/accesibility.css">
		<link rel="stylesheet" href="./assets/css/contact-page.css" />
		<link
			rel="shortcut icon"
			href="./assets/img/favicon.webp"
			type="image/x-icon"
		/>
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
			</div>
		</header>

		<main>
			<div class="container">
				<!-- Header part contain Title page and descriptoion -->
				<div class="header">
					<h2>Contact Us</h2>
					<hr/>
					<p>
						Intersted in striking a partnership or do you have any complaint or
						feedback? Fill the form below
					</p>
					<span class="blink">
				<h3 align=center style="color: black"><mark>${message}</mark></h3>
			</span>
				</div>

				<!-- End of header Part -->
			<!-- Main part contain form and informatoion contactus -->
				<div class="main">
					<div class="contact">
						<!-- Form start here -->
						<div class="contact-form">
							<form action="addcontact" method="post">
								<div class="contact-detail">
									<label class="hide" for="name">Enter your name</label>
									<input type="text" class="form-control" placeholder="Name" name="name" id="name" />
									<label class="hide" for="email">Enter your email address</label>
									<input
										type="email"
										class="form-control"
										placeholder="Email"
										id="email"
										name="email"
									/>
								</div>
								<label class="hide" for="message">message</label>
								<textarea
									class="form-control"
									rows="5"
									id="comment"
									placeholder="Message"
									style="resize: none; width: 100%;"
									name="message"
								></textarea>

								<button type="submit" class="btn">SEND MESSAGE</button>
							</form>
						</div>
						<!-- Form finish here -->

						<!-- Contact Us start here -->
						<div id="map">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d121454.16469708251!2d79.52178484007693!3d17.958131570445882!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a33450bd75e4be7%3A0x9306909c277bc137!2sWarangal%2C%20Telangana!5e0!3m2!1sen!2sin!4v1697207578559!5m2!1sen!2sin" width="300" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
						</div>
						<!-- Contact Us Finish here -->
					</div>
				</div>
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
		<script src="assets/js/toggleHamburger.js"></script>
	</body>
</html>
