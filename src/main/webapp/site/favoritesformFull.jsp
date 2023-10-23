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
	font-size: 15px;
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

.video-card .overlay .fa-play {
	color: #ffffff;
	font-size: 3rem;
	margin: 0 2.5rem;
}
.video-card .overlay .fa-share ,.video-card .overlay .fa-thumbs-up {
	color: #ffffff;
	font-size: 2rem;
	margin: 0 2.5rem;
}

.left {
	width: 60%;
	background:#343535;
}

.right {
	width: 40%;
	background:#343535;
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
		<%@ include file="/fit_together_index/header.jsp"%>
	


	<main>
	<div class="ps-5">
	<h2 class="text-white">My favorites video</h2>
	</div>
		<!-- Video Cards -->
		<div class="p-5">
			<div class="row">


				<c:forEach var="item" items="${bean}">
					<div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mb-4">
						<div class="fullitem">
							<div class="video-card">
								<img width="100%" src="${item.poster}" alt="Video 1">
								<div class="overlay">
									<a href="#"> <i class="fas fa-thumbs-up"></i></a>
									<a href="#"> <i class="fas fa-play"></i></a>
									<a href="#"> <i class="fas fa-share"></i></a>
								
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

		</div>
	</main>

<!-- Footer -->
	<%@ include file="/fit_together_index/footer.jsp"%>
	<!-- Footer -->

<script>
	$(document).ready(function() {
		$('.search-btn').click(function() {
			$('.search-input').toggleClass('active');
			$('.search-input').focus();
		});
	});
</script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    // Lấy danh sách tất cả các phần tử .video-card
    var videoCards = document.querySelectorAll(".video-card");

    // Lặp qua từng phần tử .video-card
    videoCards.forEach(function(card) {
      // Xử lý sự kiện click chuột phải
      card.addEventListener("contextmenu", function(event) {
        event.preventDefault(); // Ngăn chặn hành động mặc định của trình duyệt

        // Thêm hoặc xóa lớp CSS 'active' để hiển thị và ẩn các biểu tượng
        card.classList.toggle("active");
      });
    });
  });
</script>

</body>



</html>
