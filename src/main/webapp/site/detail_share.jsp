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

input[type="text"] {
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

input[type="text"]:focus:hover {
	border-bottom: 1px solid #BBB;
}

input[type="text"]:focus {
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
	padding-top: 1em;
}

.video-card {
	border-radius: 0.5rem;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	transition: box-shadow 0.3s ease-in-out;
	overflow: hidden;
	position: relative;
	padding: 0;
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

.video-card h4 {
	font-size: 1.2rem;
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
	font-size: 2rem;
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

.mainVid {
	height: 485px;
}

.mainDes p {
	color: white;
	font-size: 17px
}


.mainDes .likeshare button {
  height: 40px;
  width: 100px;
  background-color:rgb(70, 70, 70);
  font-size: 1.3rem;
  border: none;
  color: #fff;
  border-radius: 100px;
  transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
}

.mainDes .likeshare button:hover {
  transform: scale(1.1);
  background-color : rgb(90, 89, 89); 
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
}

.mainDes .likeshare button:active {
  transform: scale(0.9);
}
.modal-content-shareVid {
			background-color: #3c3b3b;
			color: white;
		}

		
		.modal-footer-shareVid button.close {
			height: 40px;
			width: 100px;
			background-color: rgb(70, 70, 70);
			border: none;
			color: #fff;
			border-radius: 100px;
			transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
		}
		.modal-footer-shareVid button.share {
			height: 40px;
			width: 100px;
			background-color: rgb(127, 127, 255);
			border: none;
			color: #fff;
			border-radius: 100px;
			transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
		}

		.modal-footer-shareVid button.close:hover {
			transform: scale(1.1);
			background-color: rgb(90, 89, 89);
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
		}
		.modal-footer-shareVid button.share:hover {
			transform: scale(1.1);
			background-color : rgb(66, 66, 201);
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
		}

		.modal-footer-shareVid button:active {
			transform: scale(0.9);
		}
		
		
</style>
<link rel="stylesheet" href="./fit_together_index/editprofilemodal.css">

</head>

<body>
	<jsp:include page="/fit_together_index/header${loginStatus}.jsp"></jsp:include>
<%@ include file="/fit_together_index/editprofilemodal.jsp"%>	



	<main>

		<div class="container">
			<div class="row">
				<div class="col-8">
					<!-- video -->
					<div class="mainVid">
						<iframe width="100%" height="100%"
							src="https://www.youtube.com/embed/${chooseVideo.videoId}"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
							allowfullscreen></iframe>
					</div>
					<div class="my-3 mainDes">
								<div class="d-flex justify-content-between">
							<h3 class="text-white">${chooseVideo.title}</h3>
							<div class="d-flex gap-3 likeshare ">
								<button>
									<i class="fas fa-thumbs-up"></i>
								</button>
								<button  data-bs-toggle="modal" data-bs-target="#btnModalShare">
									<i class="fas fa-share"></i>
								</button>
							</div>
						</div>
						<br>
						<p>${chooseVideo.decscription}</p>

					</div>

				</div>
				<div class="col-4 ps-3">

					<c:forEach var="item" items="${bean}">


						<div class="fullitem row mb-4">
							<div class="video-card col-5">
								<img width="100%" src="${item.poster}" alt="Video 1">
								<div class="overlay">
									<a href="<c:url value='/account/chooseVideo?&id=${item.videoId}'/>"> <i class="fas fa-play"></i></a>
								</div>
							</div>
							<div class="titledesc col-7">
								<h5 class="text-white">${fn:substring(item.title, 0, 22)}${fn:length(item.title) > 22 ? '...' : ''}</h5>
								<p class="text-white">${fn:substring(item.decscription, 0, 50)}${fn:length(item.decscription) > 50 ? '...' : ''}</p>
							</div>
						</div>


					</c:forEach>

				</div>


			</div>
		</div>




	</main>

<!-- Footer -->
	<%@ include file="/fit_together_index/footer.jsp"%>
	<!-- Footer -->



<!-- Modal -->
		<div class="modal fade" id="btnModalShare" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content modal-content-shareVid">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">SEND VIDEO TO YOUR FRIEND</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					
					<form action="/asmJava4/account/share" method="post">
					<div class="modal-body modal-body-shareVid">
						<div class="mb-3">
							<label for="mail" class="form-label">Your friend's email?</label>
							<input style="background-color: rgb(206, 200, 200); " type="email" class="form-control" id="mail" name="mailRecipient">
						</div>						<div class="text-center">
							<p>Share on a different platform</p>
							<button type="button" class="btn btn-floating mx-1">
								<i class="bi bi-facebook fs-2 text-white"></i>
							</button>

							<button type="button" class="btn btn-floating mx-1">
								<i class="bi bi-google fs-2 text-white"></i>
							</button>

							<button type="button" class="btn btn-floating mx-1">
								<i class="bi bi-twitter fs-2 text-white"></i>
							</button>

							<button type="button" class="btn btn-floating mx-1">
								<i class="bi bi-messenger fs-2 text-white"></i>
							</button>
						</div>


					</div>
					<div class="modal-footer modal-footer-shareVid">
						<button type="button" class="close" data-bs-dismiss="modal">Close</button>
						<button type="submit" class="share" >Share</button>
					</div>
					</form>
				</div>
			</div>
		</div>

</body>

<script>

</script>

</html>
