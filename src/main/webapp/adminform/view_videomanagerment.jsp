<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<form action="/asmJava4/account/videomanagerment" method="post">
    			<div class="ms-5 ps-3 mt-3">
						<h4>${msg}</h4>
						</div>
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
														<a class="" href="/asmJava4/account/xemVideo?id=${item.videoId}"><i class="bi bi-gear"></i> Edit &nbsp;</a>
													</td>
												</tr>
											</c:forEach>


										</tbody>
									</table>


								</div>
							</div>

							<div class="videoEditting">
								
									<input class="txtVideoedtting" type="text" name="videoId" placeholder="Video ID" value="${editVideo.videoId}" <c:if test="${readonly}"> readonly </c:if>> 
									<input class="txtVideoedtting" type="text" name="title" placeholder="Video title" value="${editVideo.title}"> 
									<input class="txtVideoedtting" type="text" name="views" placeholder="Views count" value="${editVideo.views}" readonly>
									<div class="rdoVideoedit">
										<div class="d-flex w-50 justify-content-between">
											<label class="form-check-label text-black" for="flexRadioDefault1">
												<input class="form-check-input " checked type="radio" name="active"
												value= "true"	id="flexRadioDefault1"  <c:if test="${editVideo.active}"> checked </c:if>/>&nbsp;&nbsp;
												Active
											</label> 
											<label class="form-check-label text-black" for="flexRadioDefault2">
												<input class="form-check-input" type="radio" name="active"
												value= "false"	id="flexRadioDefault2" <c:if test="${!editVideo.active}"> checked </c:if> />&nbsp;&nbsp;
												Inactive
											</label>
										</div>
									</div>
									<div style="width: 60%; margin: 0 auto;">
										<textarea class="txtVideoedtting" placeholder="Description"
											style="width: 100%; height: 70px;" name="decscription" id="" cols="30"
											rows="10" >${editVideo.decscription}</textarea>
									</div>
									<div class="four_btnVideoEdit">
					<button type="submit" formaction="/asmJava4/account/createVideo">Create</button>
					<button type="submit" formaction="/asmJava4/account/updateVideo">Update</button>
					<button type="submit" formaction="/asmJava4/account/deleteVideo">Delete</button>
					<button type="submit" formaction="/asmJava4/account/resetformVideo">Reset</button>

				</div>
								
							</div>


						</div>
					</div>
			</form>		
					<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.6/prefixfree.min.js"></script>