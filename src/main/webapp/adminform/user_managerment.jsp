<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
	 <title></title>
	 <meta charset="utf-8" />
	 <meta name="viewport" content="width=device-width, initial-scale=1" />
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
	 <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css"/>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  </head>
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
	background: #343535;
	font-size: 15px;
}


	*,
*::before,
*::after {
	box-sizing: border-box;
}

main {
	margin: 0;
	font-family: Roboto, -apple-system, 'Helvetica Neue', 'Segoe UI', Arial, sans-serif;
	background: #343535;
}

.forms-section-usermanager {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}



.forms-usermanager {
	display: flex;
	align-items: flex-start;
	margin-top: 30px;
}

.form-wrapper {
	animation: hideLayer .3s ease-out forwards;
 
}

.form-wrapper.is-active {
	animation: showLayer .3s ease-in forwards;
}

@keyframes showLayer {
	50% {
		z-index: 1;
	}
	100% {
		z-index: 1;
	}
}

@keyframes hideLayer {
	0% {
		z-index: 1;
	}
	49.999% {
		z-index: 1;
	}
}

.switcher {
	position: relative;
	cursor: pointer;
	display: block;
	margin-right: auto;
	margin-left: auto;
	padding: 0;
	text-transform: uppercase;
	font-family: inherit;
	font-size: 16px;
	letter-spacing: .5px;
	color: #999;
	background-color: transparent;
	border: none;
	outline: none;
	transform: translateX(0);
	transition: all .3s ease-out;
}

.form-wrapper.is-active .switcher-useredition {
	color: #fff;
	transform: translateX(90px);
}

.form-wrapper.is-active .switcher-userlist {
	color: #fff;
	transform: translateX(-90px);
}

.underline {
	position: absolute;
	bottom: -5px;
	left: 0;
	overflow: hidden;
	pointer-events: none;
	width: 100%;
	height: 2px;
}

.underline::before {
	content: '';
	position: absolute;
	top: 0;
	left: inherit;
	display: block;
	width: inherit;
	height: inherit;
	background-color: currentColor;
	transition: transform .2s ease-out;
}

.switcher-useredition .underline::before {
	transform: translateX(101%);
}

.switcher-userlist .underline::before {
	transform: translateX(-101%);
}

.form-wrapper.is-active .underline::before {
	transform: translateX(0);
}

.form-user {
	overflow: hidden;
	min-width: 500px;
	margin-top: 50px;
	padding: 30px 25px;
  border-radius: 5px;
	transform-origin: top;
}

.form-useredition {
	animation: hideEditon .3s ease-out forwards;
}

.form-wrapper.is-active .form-useredition {
	animation: showEdition .3s ease-in forwards;
  box-shadow: 8px 0 10px rgba(0, 0, 0, 0.3);
}

@keyframes showEdition {
	0% {
		background: #eaeff3;
		transform: translate(40%, 10px);
	}
	50% {
		transform: translate(0, 0);
	}
	100% {
		background-color: #d5d7da;
		transform: translate(35%, -20px);
	}
}

@keyframes hideEditon {
	0% {
		background-color: #fff;
		transform: translate(35%, -20px);
	}
	50% {
		transform: translate(0, 0);
	}
	100% {
		background: #c1ced6;
		transform: translate(40%, 10px);
	}
}

.form-userlist {
	animation: hideList .3s ease-out forwards;
}

.form-wrapper.is-active .form-userlist {
	animation: showList .3s ease-in forwards;
  box-shadow: -10px 10px 10px rgba(0, 0, 0, 0.3);

}

@keyframes showList {
	0% {
		background: #d7e7f1;
		transform: translate(-40%, 10px) scaleY(.8);
	}
	50% {
		transform: translate(0, 0) scaleY(.8);
	}
	100% {
    background-color: #7c7c7d;
		transform: translate(-35%, -20px) scaleY(1);
	}
}

@keyframes hideList {
	0% {
		background-color: #fff;
		transform: translate(-35%, -20px) scaleY(1);
	}
	50% {
		transform: translate(0, 0) scaleY(.8);
	}
	100% {
		background: #a2a6a8;
		transform: translate(-40%, 10px) scaleY(.8);
	}
}

.form-user fieldset {
	position: relative;
	opacity: 0;
	margin: 0;
	padding: 0;
	border: 0;
	transition: all .3s ease-out;
}

.form-useredition fieldset {
	transform: translateX(-50%);
}

.form-userlist fieldset {
	transform: translateX(50%);
}

.form-wrapper.is-active fieldset {
	opacity: 1;
	transform: translateX(0);
	transition: opacity .4s ease-in, transform .35s ease-in;
}



.input-block {
	margin-bottom: 10px;
}

.input-block label {
	font-size: 18px;
  color: black;
}

.input-block input {
	display: block;
	width: 100%;
	margin-top: 8px;
	padding-right: 15px;
	padding-left: 15px;
	font-size: 16px;
	line-height: 40px;
	color: #3b4465;
  background: #fff;
  border: 1px solid #cddbef;
  border-radius: 18px;
}

.form-wrapper.is-active .form-user [type='submit'] {
	opacity: 1;

	transition: all .3s ease-in;
}


.usermanageredition-btn
{
  opacity: 0;
  
	display: block;
	width: 120px;
	margin: 30px auto 10px;
	font-size: 18px;
	line-height: 40px;
	border-radius: 25px;
	border: none;
  color: black;
  background: #ffc107;
  transition: transform 0.3s, box-shadow 0.3s;
}

.usermanageredition-btn:hover {
  transform: scale(1.03);
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.usermanageredition-btn:active {
  transform: scale(0.95);
}

.usermanageredition-groupbtn {
  display: flex;
  justify-content: center;
  margin-top: 0;
  margin-bottom: 0;
}

.usermanageredition-groupbtn button {
  margin: 10px auto 0 auto;
}
.form-userlist .usermanageredition-groupbtn {
  width: 80%;
  margin: 0 auto;
}
.form-userlist .usermanageredition-groupbtn button {
  width: 70px;

  margin: 0 8px;
}

.table-usermanager {
      border: 1px solid white;
    }
    .table-usermanager th,
    .table-usermanager td,
    .table-usermanager a {
      color: rgb(255, 255, 255); /* Màu chữ */
   
      text-decoration: none;
    }
</style>

  <body>
  <%--<%@ include file="/fit_together_index/header.jsp"%> --%>	
  	
  	<main>
	<section class="forms-section-usermanager">
		
		<div class="forms-usermanager">
		  <div class="form-wrapper is-active">
			<button type="button" class="switcher switcher-useredition">
			  User edition
			  <span class="underline"></span>
			</button>
			<form class="form-user form-useredition">
			  <fieldset>
				<div class="input-block">
				  <label for="usermanageredition-username">User name</label>
				  <input id="usermanageredition-username" type="text" required>
				</div>
				<div class="input-block">
				  <label for="usermanageredition-password">Password</label>
				  <input id="usermanageredition-password" type="password" required>
				</div>
				<div class="input-block">
				  <label for="usermanageredition-fullname">Full name</label>
				  <input id="usermanageredition-fullname" type="text" required>
				</div>
				<div class="input-block">
				  <label for="usermanageredition-email">Email Adress</label>
				  <input id="usermanageredition-email" type="email" required>
				</div>
			  </fieldset>
			  <div class="usermanageredition-groupbtn">
          <button type="submit" class="usermanageredition-btn delete">Delete</button>
			  <button type="submit" class="usermanageredition-btn reset">Reset</button>
        </div>
			</form>
		  </div>
		  <div class="form-wrapper">
			<button type="button" class="switcher switcher-userlist">
			 User list
			  <span class="underline"></span>
			</button>
			<form class="form-user form-userlist">
			  <fieldset>
 
            <table class="table-usermanager table table-bordered">
              <thead>
                <tr>
                  <th scope="col">User name</th>
                  <th scope="col">Full name</th>
                  <th scope="col">Email</th>
                  <th scope="col">Role</th>
                  <th scope="col">Edit</th>
                </tr>
              </thead>
              						<tbody>
							<c:forEach var="item" items="${userList}">
								<tr>
									<td>${item.username}</td>
									<td >${item.fullname}</td>
									<td>${item.email}</td>
									<td>${item.admin ? "Admin" : "User"}</td>
									<td>
										<a class="" href=""><i class="bi bi-gear"></i> Edit &nbsp;</a>
									  </td>
								</tr>
									</c:forEach>


							</tbody>
            </table>
    
			  </fieldset>

			</form>
		  </div>
		</div>
	  </section>
	  </main>
	  	<%@ include file="/fit_together_index/footer.jsp"%>
  </body>
  
<script>
	const switchers = [...document.querySelectorAll('.switcher')]

switchers.forEach(item => {
	item.addEventListener('click', function() {
		switchers.forEach(item => item.parentElement.classList.remove('is-active'))
		this.parentElement.classList.add('is-active')
	})
})

</script>
</html>
