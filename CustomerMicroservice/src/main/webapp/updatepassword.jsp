<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Star Hotels Helps you Discover The Perfect Balance
	Of Hospitality, Luxury And
	Comfort.">
    <style>
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
    <title>Star Hotels</title>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/css/global-header.css">
    <link rel="stylesheet" href="./assets/css/global-footer.css">
    <link rel="stylesheet" href="./assets/css/accesibility.css">
    <link rel="stylesheet" href="./assets/css/index.css">
    <link rel="shortcut icon" href="./assets/img/favicon.webp" type="image/x-icon">
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
<span class="blink">
<h3 align=center style="color:black">${message}</h3>
</span>
    <div class="add-user-form">
        <h2>Update Password</h2>
        <form method = "post" action = "update">
            <label for="username">Username:</label>
            <input type="text" id="username" name="name" value="${custdata.name}" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${custdata.email}" readonly required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="pwd" value="${custdata.password}" required>

            <button type="submit">Update Password</button>
        </form>
    </div>
</main>
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