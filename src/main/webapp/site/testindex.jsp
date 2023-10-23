<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OE Entertainment</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
.header {
	background-color: #26282a;
	color: #fff;
	padding: 20px;
}

.header h2 {
	font-size: 2.5rem;
	font-weight: bold;
	margin: 0;
}

.navbar-toggler {
	color: #fff;
	border-color: #fff;
}

.navbar-nav .nav-link {
	color: #fff;
	font-size: 1.2rem;
}

.navbar-nav .nav-link:hover {
	color: #ffc107;
	transform: scale(1.05);
}

.dropdown-menu {
	background-color: #26282a;
}

.dropdown-item {
	color: #fff;
	font-size: 1.1rem;
}

.dropdown-item:hover {
	background-color: #ffc107;
	color: #26282a;
	transform: scale(1.05);
}

@import
	url(https://fonts.googleapis.com/css?family=Lato:100,300,400,700);

@import
	url(https://raw.github.com/FortAwesome/Font-Awesome/master/docs/assets/css/font-awesome.min.css)
	;

body {
	background: #DDD;
	font-size: 15px;
}

#wrap {
	margin: 0 50px;
	display: inline-block;
	position: relative;
	height: 30px;
	float: right;
	padding: 0;
	position: relative;
}

#search {
	height: 50px;
	font-size: 18px;
	display: inline-block;
	font-family: "Lato";
	font-weight: 100;
	border: none;
	outline: none;
	color: #dfd8d8;;
	padding: 3px;
	padding-right: 60px;
	width: 0px;
	position: absolute;
	top: 0;
	right: 0;
	background: none;
	z-index: 3;
	transition: width .4s cubic-bezier(0.000, 0.795, 0.000, 1.000);
	cursor: pointer;
}

#search:focus:hover {
	border-bottom: 1px solid #BBB;
}

#search:focus {
	width: 300px;
	z-index: 1;
	border-bottom: 1px solid #BBB;
	cursor: text;
}

#search_submit {
  height: 37px;
  width: 37px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  color: white;
  background-color: transparent;
  border: none;
  outline: none;
  position: absolute;
  top: 12px; /* Thay đổi giá trị top tại đây */
  right: 0;
  z-index: 2;
  cursor: pointer;
  opacity: 0.4;
  cursor: pointer;
  transition: opacity .4s ease;
}

#search_submit:hover {
	opacity: 0.8;
}

body {
	font-family: 'Source Sans Pro', sans-serif;
	background-color: #343535;
}

main {
	padding-top: 2em;
}

.video-card {
	border-radius: 0.5rem;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	transition: box-shadow 0.3s ease-in-out;
	overflow: hidden;
	position: relative;
}

.video-card:hover {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transform: scale(1.05);
	cursor: pointer;
}

.video-card img {
	width: 100%;
	height: auto;
	object-fit: cover;
	vertical-align: middle;
}

.titledesc {
	padding-top: 1rem;
}

.video-card h3 {
	font-size: 1.25rem;
	font-weight: 500;
	margin-bottom: 1rem;
}

.video-card p {
	font-size: 1rem;
	font-weight: 400;
	margin-bottom: 1.5rem;
}

.video-card .overlay {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	opacity: 0;
	background-color: rgba(0, 0, 0, 0.5);
	transition: opacity 0.3s ease-in-out;
}

.video-card:hover .overlay {
	opacity: 1;
}

.video-card .overlay i {
	color: #ffffff;
	font-size: 3rem;
}

.left {
	width: 60%;
	background: #26282a;
}

.right {
	width: 40%;
	background: #26282a;
	position: relative;
	overflow: hidden;
}

.top-half {
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	clip-path: polygon(100% 0, 100% 68%, 0 28%, 0 0);
	padding: 0 6px 3px 6px;
}

.bottom-half {
	width: 100%;
	height: 100%;
	position: absolute;
	bottom: 0;
	left: 0;
	clip-path: polygon(0 100%, 0% 31%, 100% 71%, 100% 100%);
	padding: 50px 6px 0 6px;
}

.pagination {
	justify-content: center;
	margin-top: 2rem;
}

.nav.tm-paging-links {
	list-style: none;
	display: flex;
	justify-content: center;
	align-items: center;
}

.PTitem {
	margin: 0 0.5rem;
}

.PTlink {
	color: #fff;
	font-size: 1.2rem;
	padding: 0.5rem 1rem;
	border-radius: 0.25rem;
	background-color: #26282a;
	transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}

.PTlink:hover {
	background-color: #ffc107;
	transform: scale(1.05);
	color: black;
}

.PTitem.active .PTlink {
	background-color: #ffc107;
	font-weight: bold;
	color: black;
}

.PTlink.tm-paging-link {
	color: #fff;
}

.PTlink.tm-paging-link:hover {
	background-color: #ffc107;
	transform: scale(1.05);
	color: black;
}

.PTitem:first-child .PTlink, .PTitem:last-child .PTlink {
	padding: 0.5rem;
}
</style>
</head>

<body>
	
<header class="header sticky-top">
	<div class="container">
		<div class="d-flex align-items-center justify-content-between">
			<div>
				<a class="navbar-brand" href="#">
					<h2>OE Entertainment</h2>
				</a>
			</div>
			<div class="d-flex">
				<div id="wrap">
					<form action="" autocomplete="on">
						<input id="search" name="search" type="text"
							placeholder="Search ...">
						<button class="btn" id="search_submit" type="submit">
							<i class="bi bi-search fs-4"></i>
							<!-- Thay thế biểu tượng ở đây -->
						</button>
					</form>
				</div>

				<nav class="navbar navbar-expand-lg navbar-light">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul
							class="navbar-nav me-auto mb-2 mb-lg-0 d-flex gap-3 align-items-center">
							<li class="nav-item"><a class="nav-link "
								aria-current="page" href="#!/trangchu"> My favorite </a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								id="navbarDropdownMenuLink" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> My account
							</a>
								<ul class="dropdown-menu"
									aria-labelledby="navbarDropdownMenuLink">
									<li><a class="dropdown-item" href="">Login</a></li>
									<li><a class="dropdown-item" href="">Forgot Password</a></li>
									<li><a class="dropdown-item" href="">Registration</a></li>
									<li><a class="dropdown-item" href="">Logoff</a></li>
									<li><a class="dropdown-item" href="">Change Password</a></li>
									<li><a class="dropdown-item" href="">Edit Profile</a></li>
								</ul></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>

	<div class="banner bg-light d-flex">
		<div class="left">
			<div>
				<div id="carouselExampleIndicators" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="3" aria-label="Slide 4"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="4" aria-label="Slide 5"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="./img/banner1.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="./img/banner2.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="./img/banner3.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="./img/banner4.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="./img/banner5.jpg" class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>

		</div>
		<div class="right">
			<div class="top-half">
				<img width="100%" alt=""
					src="https://i.pinimg.com/564x/04/12/c1/0412c19262d6e52a3ad021c2a842aacb.jpg">

			</div>
			<div class="bottom-half">

				<img width="100%" alt="" src="./img/bannerrightbot.jpg">
			</div>
		</div>
	</div>



	<main>
		<!-- Video Cards -->
		<div class="p-5">
			<div class="row">


				<c:forEach var="item" items="${bean}">
					<div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mb-4">
						<div class="fullitem">
							<div class="video-card">
								<img width="100%" src="${item.poster}" alt="Video 1">
								<div class="overlay">
									<a href="#"> <i class="fas fa-play"></i></a>
								</div>
							</div>
							<div class="titledesc">
								<h4 class="text-white">${item.title}</h4>
								<p class="text-white">${fn:substring(item.decscription, 0, 90)}${fn:length(item.decscription) > 90 ? '...' : ''}</p>
							</div>
						</div>
					</div>
				</c:forEach>



				<!-- Repeat the above code for more video cards -->
			</div>

			<!-- Catalog Paging Buttons -->
			<div class="pagination">
				<div>
					<ul class="nav tm-paging-links">
						<li class="nav-item PTitem"><a href="#"
							class="nav-link PTlink tm-paging-link"><</a></li>

						<li class="nav-item PTitem active"><a href="#"
							class="nav-link PTlink tm-paging-link">1</a></li>

						<li class="nav-item PTitem"><a href="#"
							class="nav-link PTlink tm-paging-link">2</a></li>

						<li class="nav-item PTitem"><a href="#"
							class="nav-link PTlink tm-paging-link">3</a></li>


						<li class="nav-item PTitem"><a href="#"
							class="nav-link PTlink tm-paging-link">></a></li>
					</ul>
				</div>
			</div>
		</div>
	</main>

	<footer class="text-center text-lg-start text-white bg-dark mt-5">
		<!-- Section: Social media -->
		<section
			class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
			<!-- Left -->
			<div class="me-5 d-none d-lg-block">
				<span>Get connected with us on social networks:</span>
			</div>
			<!-- Left -->

			<!-- Right -->
			<div>
				<a href="" class="me-4 text-reset"> <i class="fab fa-facebook-f"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-twitter"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-google"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-instagram"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-linkedin"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-github"></i>
				</a>
			</div>
			<!-- Right -->
		</section>
		<!-- Section: Social media -->

		<!-- Section: Links  -->
		<section class="">
			<div class="container text-center text-md-start mt-5">
				<!-- Grid row -->
				<div class="row mt-3">
					<!-- Grid column -->
					<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
						<!-- Content -->
						<h6 class="text-uppercase fw-bold mb-4">
							<i class="fas fa-gem me-3"></i>BAOKHASHOP
						</h6>
						<p>Here you can use rows and columns to organize your footer
							content. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit.</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">SẢN PHẨM</h6>
						<p>
							<a href="#!" class="text-reset">T-SHIRT</a>
						</p>
						<p>
							<a href="#!" class="text-reset">SHIRT</a>
						</p>
						<p>
							<a href="#!" class="text-reset">SWEATER</a>
						</p>

					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">THÔNG TIN KHÁC</h6>
						<p>
							<a href="#!" class="text-reset">Giá cả</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Cài đặt</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Đơn đặt hàng</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Hỗ trợ</a>
						</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
						<!-- Links -->
						<h6 class="text-uppercase fw-bold mb-4">LIÊN HỆ</h6>

						<p>
							<i class="bi bi-envelope"></i> Mail: mailmailmail@gmail.com
						</p>
						<p>
							<i class="bi bi-telephone-fill"></i> Phone: 09877654321
						</p>
						<p>
							<i class="bi bi-geo-alt"></i> Địa chỉ : FPT Polytechnic
						</p>
						<p>
							<i class="bi bi-bank"></i> Mã số thuế : 0615281972
						</p>
						<p>
							<i class="bi bi-key-fill"></i> Giấy phép kinh doanh : 08365670909
						</p>
					</div>
					<!-- Grid column -->
				</div>
				<!-- Grid row -->
			</div>
		</section>
		<!-- Section: Links  -->

		<!-- Copyright -->
		<div class="text-center p-4"
			style="background-color: rgba(0, 0, 0, 0.05);">
			© 2023 Copyright: <a class="text-reset fw-bold" href="">BaoKhaShop.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- Footer -->

</body>

<script>
	$(document).ready(function() {
		$('.search-btn').click(function() {
			$('.search-input').toggleClass('active');
			$('.search-input').focus();
		});
	});
</script>

</html>
