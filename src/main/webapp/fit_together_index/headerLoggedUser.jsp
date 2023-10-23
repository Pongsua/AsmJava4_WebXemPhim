<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<header class="header sticky-top">
	<div class="container">
		<div class="d-flex align-items-center justify-content-between">
			<div>
				<a class="navbar-brand" href="/asmJava4/account/home">
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
								aria-current="page" href="/asmJava4/account/favorites"> My favorite </a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								id="navbarDropdownMenuLink" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> My account
							</a>
								<ul class="dropdown-menu"
									aria-labelledby="navbarDropdownMenuLink">
									<li class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editprofilemodal">Edit Profile</li>
									<li><a class="dropdown-item" href="/asmJava4/account/logout">Log out</a></li>
								</ul></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>
