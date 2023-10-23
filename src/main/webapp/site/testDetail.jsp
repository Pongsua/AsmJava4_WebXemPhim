<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div>
<% String updateFailedMessage = (String) request.getAttribute("updateFailedMessage");
    if (updateFailedMessage != null && !updateFailedMessage.isEmpty()) { %>
        <script>
            alert("<%= updateFailedMessage %>");
        </script>
    <% } %>
    
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
							<form action="/asmJava4/account/like" method="post">
								<button  type="submit" <c:if test="${loginStatus eq 'NotLogged'}">style="display : none;"</c:if>>
									<c:if test="${!dathich}">
									<i class="fas fa-thumbs-up" ></i>
									</c:if>
										<c:if test="${dathich}">
									<i class="fas fa-thumbs-down" ></i>
									</c:if>
								</button>
								</form>
							
								
								
								<button  data-bs-toggle="modal" data-bs-target="#btnModalShare"  <c:if test="${loginStatus eq 'NotLogged'}">style="display : none;"</c:if>>
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
						</div>						
						<div class="text-center">
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

	</div>