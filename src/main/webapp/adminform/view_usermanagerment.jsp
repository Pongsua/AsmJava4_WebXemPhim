<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <form action="/asmJava4/account/usermanagerment" method="post">
    	<div class="ms-5 ps-3 mt-3">
						<h4>${msg}</h4>
						</div>
	<div class="tabbed">
	
						<input type="radio" name="tabs" id="tab-nav-1" checked>
						<label for="tab-nav-1">USER LIST</label>
						<input type="radio" name="tabs" id="tab-nav-2">
						<label for="tab-nav-2">USER EDITTING</label>

						<div class="tabs">
							<div class="videoList ">
								<div class="m-2">
									<table class="table table-bordered text-center tablevideolist ">
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
													<td>${item.fullname}</td>
													<td>${item.email}</td>
													<td>${item.admin ? "Admin" : "User"}</td>
													<td>
														<a class="" href="/asmJava4/account/xemUser?id=${item.username}"><i class="bi bi-gear"></i> Edit &nbsp;</a>
													</td>
												</tr>
											</c:forEach>


										</tbody>
									</table>


								</div>
							</div>

							<div class="videoEditting">
								<form>
									<input class="txtVideoedtting" type="text" name="username" placeholder="Username" value="${editUser.username}" <c:if test="${readonly}"> readonly </c:if>
										 >
									<input class="txtVideoedtting" type="text" name="passwords" placeholder="Password" value="${editUser.passwords}"
										 >
									<input class="txtVideoedtting" type="text" name="fullname" placeholder="Fullname"  value="${editUser.fullname}"
										 >
									<input class="txtVideoedtting" type="text" name="email" placeholder="Email Adress" value="${editUser.email}"
										 >
									<div class="rdoVideoedit">

										<div class="d-flex w-50 justify-content-between">
											<label class="form-check-label text-black" for="flexRadioDefault1">
												<input class="form-check-input " checked type="radio" name="admin" value="true"
													id="flexRadioDefault1" <c:if test="${editUser.admin}"> checked </c:if>/>&nbsp;&nbsp;
												Admin
											</label>
											<label class="form-check-label text-black" for="flexRadioDefault2">
												<input class="form-check-input" type="radio" name="admin" value="false"
													id="flexRadioDefault2"  <c:if test="${!editUser.admin}"> checked </c:if>/>&nbsp;&nbsp;
												User
											</label>
										</div>
									</div>

				<div class="four_btnVideoEdit">
					<button type="submit" formaction="/asmJava4/account/createUser">Create</button>
					<button type="submit" formaction="/asmJava4/account/updateUser">Update</button>
					<button type="submit" formaction="/asmJava4/account/deleteUser">Delete</button>
					<button type="submit" formaction="/asmJava4/account/resetformUser">Reset</button>
				</div>
			</form>
							</div>


						</div>
					</div>
					</form>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.6/prefixfree.min.js"></script>