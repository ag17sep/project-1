<!DOCTYPE HTML>
<html>
<head>
<title>Sign In</title>
<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Instant Sign In Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- //Meta-Tags -->

<!-- Custom Theme files -->
<link href="signup/css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="signup/css/style.css" rel='stylesheet' type='text/css' />
<link href="signup/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- font-awesome-icons -->
<link href="signup/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome-icons -->

<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!--//fonts-->
</head>
<body>
<div class="agileinfo-dot">
<!--background-->
<!-- login -->
<h1>Sign In</h1>
<!-- 
			<script>			
			$("#spec".attr(action,"main.html"))
			form.click("function");
			</script> -->
	<div class="login-section">
	    <div class="login-w3l one">
		<!-- <i class="fa fa-medkit" aria-hidden="true"></i> -->
				<h2 class="sub-head-w3-agileits">Sign in</h2>

			<div class="login-form" >
				<form id="spec" action="signup.jsp" method="post">
					<div class="input">
						<i class="fa fa-user" aria-hidden="true"></i> <input type="text" class="user" name="n2" placeholder="Email" required />
					</div>
					<div class="input">
						<i class="fa fa-unlock-alt" aria-hidden="true"></i> <input type="password" class="lock" name="p3" placeholder="Password" required />
					</div>
					<input type="submit" value="Sign in">
				</form>
				<p>Don't have an account?<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog"> Sign up</a></p>
			</div>
			<!-- //login -->
			<div class="social_icons agileinfo">
				<ul class="top-links">
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
	</div>
			<p class="footer"></p>
			<!--//login-->
			<div class="pop-up">
	<div id="small-dialog" class="mfp-hide book-form">
		<h3 class="sub-head-w3-agileits">Sign Up</h3>
		<div class="login-form">
			<form action="login.jsp" method="post">
				<div class="input">
					<i class="fa fa-user" aria-hidden="true"></i> <input type="text" class="user" name="u2" placeholder="Username" required/>
				</div>
				<div class="input">
					<i class="fa fa-envelope" aria-hidden="true"></i> <input type="email" name="n2" class="email" placeholder="Email" required/>
				</div>
				<div class="input">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i> <input id="password" type="password" name="p3" class="password" placeholder="Password" required/>
				</div>
				<div class="input">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i> <input id="confirm_password" type="password" name="p31" class="password" placeholder="Confirm Password" required/>
				
				</div>
				
				<span id='message'></span>
				<input type="submit" value="Sign Up">
				<script>
					$('#password, #confirm_password').on('keyup', function () {
					  if ($('#password').val() == $('#confirm_password').val()) {
					    $('#message').html('').css('color', 'green');
					  } else 
					    $('#message').html('Not Matching').css('color', 'red');
					});
				</script>
			</form>
		</div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-4 agile_footer_grid">
			<h3>About Us</h3>
			<p>Donec purus neque, vulputate id est id, pretium semper enim. Morbi viverra
				congue nisi vel pulvinar posuere sapien eros, sed faucibus.</p>
		</div>
		<div class="col-md-4 agile_footer_grid">
			<h3>Latest News</h3>
			<ul class="agileits_w3layouts_footer_grid_list">
				<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
					<a href="#" data-toggle="modal" data-target="#myModal">Donec purus neque, vulputate
						id est id</a>
				</li>
				<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
					<a href="#" data-toggle="modal" data-target="#myModal">Nullam fringilla sed quam vitae</a>
				</li>
				<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
					<a href="#" data-toggle="modal" data-target="#myModal">Cras libero arcu, accumsan ac </a>
				</li>
				<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
					<a href="#" data-toggle="modal" data-target="#myModal">Aenean porttitor accumsan</a>
				</li>
				<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
					<a href="#" data-toggle="modal" data-target="#myModal">Nullam sed turpis gravida</a>
				</li>
			</ul>
		</div>
		<div class="col-md-4 agile_footer_grid">
			<h3>Contact Info</h3>
			<ul class="w3_address">
				<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span></li>
				<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
				<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>
			</ul>
		</div>
		<div class="clearfix"> </div>
		<div class="w3_agileits_footer_grids">
			<div class="col-md-4 wthree_footer_grid_left">
			</div>
			<div class="col-md-8 wthree_footer_grid_right">
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="agileinfo_copyright">

		</div>
	</div>
</div>
</div>

<!--js-->
<script type="text/javascript" src="signup/js/jquery-2.1.4.min.js"></script>
<!--//js-->
<!--popup-js-->
<script src="signup/js/jquery.magnific-popup.js" type="text/javascript"></script>
 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});

						});
</script>
<!--//popup-js-->

</body>
</html>
