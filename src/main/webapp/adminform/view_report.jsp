<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<div class="tabbed">
			<input type="radio" name="tabs" id="tab-nav-1" checked>
			<label for="tab-nav-1">FAVORITES</label>
			<input type="radio" name="tabs" id="tab-nav-2">
			<label for="tab-nav-2">FAVORITES USER</label>
			<input type="radio" name="tabs" id="tab-nav-3">
			<label for="tab-nav-3">SHARED FRIENDS</label>
			
			<div class="tabs">
			  <div class="favorites">
				<div class="m-2">
					<form action="">

					  <table class="table table-bordered text-center tablevideolist ">
						<thead>
						  <tr>
							<th scope="col">Video title</th>
							<th scope="col">Favorites count</th>
							<th scope="col">Lasted date</th>
							<th scope="col">Oldest date</th>
						  </tr>
						</thead>
		
						<tbody>

			<c:forEach var="item" items="${reportlisttab1}">
				<tr>
					<td class="text-start">${item.groupTitle}</td>
					<td>${item.likes}</td>
					<td>${item.newest}</td>
					<td>${item.oldest}</td>
				</tr>
			</c:forEach>
							</tbody>
					  </table>
					</form>

				  </div>
			</div>

			  <div class="favorites-user">
				<div class="m-2">
					<form action="/asmJava4/account/findFavoritesUserByTitle" method="post" >

						<div class="my-3">
							<div class="form-group row w-50">
								<label for="" class="col-sm-2 col-form-label">Video title</label>
								<div class="col-sm-10">
							<select name="cboTab2"  onchange="this.form.submit()"
					class="form-control" >
					<c:forEach var="item" items="${comboboxTab2}">
						<option value="${item.groupTitle}" <c:if test="${item.groupTitle eq findTitle}">selected</c:if>>${item.groupTitle}</option>
					</c:forEach> 
				</select>
								</div>
							  </div>
						</div>
					  <table class="table table-bordered text-center tablevideolist ">
						<thead>
						  <tr>
							<th scope="col">User name</th>
							<th scope="col">Full name</th>
							<th scope="col">Email</th>
							<th scope="col">Favorites date</th>
						  </tr>
						</thead>
		
						<tbody>
							<c:forEach var="item" items="${listTab2}">
								<tr>
									<td>${item.getUser().getUsername()}</td>
									<td >${item.getUser().getFullname()}</td>
									<td>${item.getUser().getEmail()}</td>
									<td>${item.getLikedDate()}</td>
								</tr>
									</c:forEach>

 
							</tbody>
					  </table>
					</form>

				  </div>
			</div>

			<div class="shared-friend">
				<div class="m-2">
					<form action="/asmJava4/account/findShared" method="post">

						<div class="my-3">
							<div class="form-group row w-50">
								<label for="" class="col-sm-2 col-form-label">Video title</label>
								<div class="col-sm-10">
										<select onchange="this.form.submit()"
					class="form-control" name="cboTab3">
					<c:forEach var="item" items="${comboboxTab3}">
						<option value="${item}" <c:if test="${item eq findTitleShared}">selected</c:if>>${item}</option>
					</c:forEach>
				</select>
			
								</div>
							  </div>
						</div>
					  <table class="table table-bordered text-center tablevideolist ">
						<thead>
						  <tr>
							<th scope="col">Sender name</th>
							<th scope="col">Sender email</th>
							<th scope="col">Receiver email</th>
							<th scope="col">Sent date</th>
						  </tr>
						</thead>
		
						<tbody>
						<c:forEach var="item" items="${listTab3}">
								<tr>
									<td>${item.getUser().getUsername()}</td>
									<td >${item.getUser().getEmail()}</td>
									<td>${item.getEmails()}</td>
									<td>${item.getSharedDate()}</td>
								</tr>
									</c:forEach>


							</tbody>
					  </table>
					</form>

				  </div>
			</div>
			</div>
		  </div>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.6/prefixfree.min.js"></script>