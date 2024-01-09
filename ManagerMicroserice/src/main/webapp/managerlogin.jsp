<!DOCTYPE html>
<html>
<head>
    <title>Animated Login Form</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
</head>
<body >
<img class="wave" src="../assets/img/wave.png">
<div class="container">
    <div class="img">
        <div id="png"><a href="/" title="HOME"><img style="width:75px; height:75px ; " src="../assets/img/home-page.png"></a></div>
        <img src="../assets/img/bg.svg">
    </div>
    <div class="login-content">
        <form method = "post" action = "checkmanagerlogin">
            <img src="../assets/img/avatar.svg">
            <span class="blink">
				<h3 align=center style="color: red">${message}</h3>
			</span>
            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-user"></i>
                </div>
                <div class="div">
                    <h5>Manager Email</h5>
                    <input type="email" name="email" class="input" required>
                </div>
            </div>
            <div class="input-div pass">
                <div class="i">
                    <i class="fas fa-lock"></i>
                </div>
                <div class="div">
                    <h5>Manager Password</h5>
                    <input type="password"  name="password" class="input" required>
                </div>
            </div>
            <a href="#">Forgot Password?</a>
            <input type="submit" class="btn" value="Login">
           
        </form>

    </div>

</div>

<script type="text/javascript" src="../assets/js/login.js"></script>
</body>
</html>
