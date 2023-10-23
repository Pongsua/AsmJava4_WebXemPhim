<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

			<html lang="en">

			<head>
				<meta charset="UTF-8">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<title>OE Entertainment</title>
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
				<link rel="stylesheet"
					href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css" />
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
				<style>
					@import "compass/css3";

					* {
						box-sizing: border-box;
					}

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

					@import url(https://fonts.googleapis.com/css?family=Lato:100,300,400,700);

					@import url(https://raw.github.com/FortAwesome/Font-Awesome/master/docs/assets/css/font-awesome.min.css);



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
						color: #dfd8d8;
						;
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
						top: 12px;
						/* Thay đổi giá trị top tại đây */
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
						background-color: white;
					}

					::selection {
						background-color: black;
					}

					.tabbed {
						width: 90%;
						margin: 50px auto;
					}

					.tabbed>input {
						display: none;
					}

					.tabbed>label {
						display: block;
						float: left;
						padding: 12px 20px;
						margin-right: 5px;
						cursor: pointer;
						color: black;
						transition: background-color .3s;
					}

					.tabbed>label:hover,
					.tabbed>input:checked+label {
						background: black;
						color: white;
					}

					.tabs {
						clear: both;
						perspective: 600px;
					}

					.tabs>div {
						color: white;
						width: 100%;
						position: absolute;
						border: 2px solid black;
						padding: 10px 30px 40px;
						line-height: 1.4em;
						opacity: 0;
						transform: rotateX(-20deg);
						transform-origin: top center;
						transition: opacity .3s, transform 1s;
						z-index: 0;
					}

					#tab-nav-1:checked~.tabs>div:nth-of-type(1),
					#tab-nav-2:checked~.tabs>div:nth-of-type(2),
					#tab-nav-3:checked~.tabs>div:nth-of-type(3),
					#tab-nav-4:checked~.tabs>div:nth-of-type(4) {
						transform: rotateX(0);
						opacity: 1;
						z-index: 1;
					}

					@media screen and (max-width: 90%) {
						.tabbed {
							width: 400px
						}

						.tabbed>label {
							display: none
						}

						.tabs>div {
							width: 400px;
							border: none;
							padding: 0;
							opacity: 1;
							position: relative;
							transform: none;
							margin-bottom: 60px;
						}

						.tabs>div h2 {
							border-bottom: 2px solid black;
							padding-bottom: .5em;
						}

					}

					a {
						text-decoration: none;
						color: black;
					}

					.tablevideolist {
						border-color: black;
						color: black;
					}

					.table-bordered th,
					.table-bordered td {
						border-color: black;
					}

					.txtVideoedtting {
						width: 60%;
						height: 40px;
						/* background-color: red; */
						justify-content: center;
						display: flex;
						margin: 20px auto;
						padding: 10px;
						/* border: none; */
						outline: none;
						border-radius: 5px;

					}

					.four_btnVideoEdit button {
						width: 24%;
						height: 40px;
						margin: 10px auto;
						justify-content: center;
						display: block;
						color: white;
						background: #057d59;
						font-size: 1em;
						font-weight: bold;
						margin-top: 20px;
						outline: none;
						border: none;
						border-radius: 50px;
						transition: .2s ease-in;
						cursor: pointer;
					}

					.four_btnVideoEdit button:hover {
						background: #02976a;
					}

					.rdoVideoedit {
						width: 60%;
						margin: 0 auto;
					}


					.four_btnVideoEdit {
						width: 60%;
						display: flex;
						margin: 0 auto;
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
										<input id="search" name="search" type="text" placeholder="Search ...">
										<button class="btn" id="search_submit" type="submit">
											<i class="bi bi-search fs-4"></i>
											<!-- Thay thế biểu tượng ở đây -->
										</button>
									</form>
								</div>

								<nav class="navbar navbar-expand-lg navbar-light">
									<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
										data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
										aria-expanded="false" aria-label="Toggle navigation">
										<span class="navbar-toggler-icon"></span>
									</button>
									<div class="collapse navbar-collapse" id="navbarSupportedContent">
										<ul class="navbar-nav me-auto mb-2 mb-lg-0 d-flex gap-3 align-items-center">
											<li class="nav-item"><a class="nav-link " aria-current="page"
													href="#!/trangchu"> My favorite </a></li>
											<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"
													id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
													aria-expanded="false"> My account
												</a>
												<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
													<li><a class="dropdown-item" href="">Login</a></li>
													<li><a class="dropdown-item" href="">Forgot Password</a></li>
													<li><a class="dropdown-item" href="">Registration</a></li>
													<li><a class="dropdown-item" href="">Logoff</a></li>
													<li><a class="dropdown-item" href="">Change Password</a></li>
													<li><a class="dropdown-item" href="">Edit Profile</a></li>
												</ul>
											</li>
										</ul>
									</div>
								</nav>
							</div>
						</div>
					</div>
				</header>



				<main>
					<div class="tabbed">
						<input type="radio" name="tabs" id="tab-nav-1" checked>
						<label for="tab-nav-1">VIDEO LIST</label>
						<input type="radio" name="tabs" id="tab-nav-2">
						<label for="tab-nav-2">VIDEO EDITTING</label>

						<div class="tabs">
							<div class="videoList ">
								<div class="m-2">
									<table class="table table-bordered text-center tablevideolist ">
										<thead>
											<tr>
												<th scope="col">Youtube ID</th>
												<th scope="col">Video title</th>
												<th scope="col">Video count</th>
												<th scope="col">Status</th>
												<th scope="col">Edit</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach var="item" items="${videoList}">
												<tr>
													<td>${item.videoId}</td>
													<td class="text-start">${item.title}</td>
													<td>${item.views}</td>
													<td>${item.active ? "Active" : "Inactive"}</td>
													<td>
														<a class="" href=""><i class="bi bi-gear"></i> Edit &nbsp;</a>
													</td>
												</tr>
											</c:forEach>


										</tbody>
									</table>


								</div>
							</div>

							<div class="videoEditting">
								<form>
									<input class="txtVideoedtting" type="text" name="email" placeholder="Video ID"
										required=""> <input class="txtVideoedtting" type="text" name="pswd"
										placeholder="Video title" required=""> <input class="txtVideoedtting"
										type="number" name="pswd" placeholder="Views count" required="">
									<div class="rdoVideoedit">

										<div class="d-flex w-50 justify-content-between">
											<label class="form-check-label text-black" for="flexRadioDefault1">
												<input class="form-check-input " type="radio" name="flexRadioDefault"
													id="flexRadioDefault1" />&nbsp;&nbsp;
												Active
											</label> 
											<label class="form-check-label text-black" for="flexRadioDefault2">
												<input class="form-check-input" type="radio" name="flexRadioDefault"
													id="flexRadioDefault2" />&nbsp;&nbsp;
												Inactive
											</label>
										</div>
									</div>
									<div style="width: 60%; margin: 0 auto;">
										<textarea class="txtVideoedtting" placeholder="Description"
											style="width: 100%; height: 70px;" name="" id="" cols="30"
											rows="10"></textarea>
									</div>
									<div class="four_btnVideoEdit">
										<button>Creat</button>
										<button>Update</button>
										<button>Delete</button>
										<button>Reset</button>
									</div>
								</form>
							</div>


						</div>
					</div>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.6/prefixfree.min.js"></script>
				</main>



			</body>

			<script>
				$(document).ready(function () {
					$('.search-btn').click(function () {
						$('.search-input').toggleClass('active');
						$('.search-input').focus();
					});
				});
			</script>

			</html>