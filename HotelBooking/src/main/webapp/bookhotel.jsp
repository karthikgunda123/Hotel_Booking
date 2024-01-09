<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
    <link rel="stylesheet" href="./assets/css/global-header.css" />
    <link rel="stylesheet" href="./assets/css/global-footer.css" />
    <link rel="stylesheet" href="./assets/css/accesibility.css">
    <link rel="stylesheet" href="./assets/css/contact-page.css" />
    <link
            rel="shortcut icon"
            href="./assets/img/favicon.webp"
            type="image/x-icon"
    />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 500px;
            background-color: #fff;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .form-title {
            text-align: center;
            color: #007bff;
        }

        .user-input-box {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .gender-details-box {
            text-align: center;
            margin-bottom: 15px;
        }

        .gender-title {
            font-weight: bold;
        }

        .form-submit-btn {
            text-align: center;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<header>
    <div class="header-container">
        <nav class="header-nav-bar">
            <div class="header-nav-logo">
                <a href="userhome.html">
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
<div class="container">
    <h1 class="form-title">Booking Details</h1>
    <form action="addbooking" method="post">
        <div class="main-user-info">
            <div class="user-input-box">
                <label for="fullName">Name</label>
                <input type="text"
                       id="fullName"
                       name="name"
                       value="${cname}"
                       readonly
                       placeholder="Enter Full Name"/>
            </div>
            <div class="user-input-box">
                <label for="email">Email</label>
                <input type="email"
                       id="username"
                       name="email"
                       value="${cemail}"
                       readonly
                       placeholder="Enter Email"/>
            </div>
            <div class="user-input-box">
                <label for="email">Hotel Name</label>
                <input type="text"
                       id="hotelname"
                       name="hotelname"
                       value="${hoteldata.name}"
                       readonly
                       placeholder="Enter Hotel Name"/>
            </div>

            <div class="user-input-box">
                <label for="phoneNumber">Hotel Location</label>
                <input type="text"
                       id="phoneNumber"
                       name="location"
                       value="${hoteldata.location}"
                       readonly
                       placeholder="Enter Hotel Location"/>
            </div>
            <div class="user-input-box">
                <label for="password">Price</label>
                <input type="text"
                       id="password"
                       name="price"
                       value="${hoteldata.cost}"
                       readonly
                       placeholder="Enter Price "/>
            </div>
            <div class="user-input-box">
                <label for="confirmPassword">Number of Rooms</label>
                <input type="text"
                       id="confirmPassword"
                       name="rooms"
                       placeholder="Rooms to be Booked"/>
            </div>
            <div class="gender-details-box">
            <span class="gender-title">Date</span>
            <div class="user-input-box">
                <label for="confirmPassword"></label>
                <input type="date"
                       id="date"
                       name="date"
                       placeholder="Confirm Password"/>
            </div>
            <div class="user-input-box">
                <label for="confirmPassword">Days to be in Service</label>
                <input type="text"
                       id="confirmPassword"
                       name="days"
                       placeholder="Days to be in Service"/>
            </div>
        </div>
        </div>
        <div class="form-submit-btn">
            <input type="submit" value="Book">
        </div>
    </form>
</div>
<script src="assets/js/toggleHamburger.js"></script>
</body>
</html>
