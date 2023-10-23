<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
				<%--<a href="#"> <i class="fas fa-thumbs-up"></i></a>  --%> 
				<a href="<c:url value='/account/chooseVideo?&id=${item.videoId}'/>">
					<i class="fas fa-play"></i>
				</a> 
			<%--	<i class="fas fa-share" data-bs-toggle="modal"
					data-bs-target="#btnModalShare"></i> --%> 
			</div>
		</div>
		<div class="titledesc">
			<h4 class="text-white">${fn:substring(item.title, 0, 28)}${fn:length(item.title) > 28 ? '...' : ''}</h4>
			<p class="text-white">${fn:substring(item.decscription, 0, 90)}${fn:length(item.decscription) > 90 ? '...' : ''}</p>
		</div>
	</div>
					</div>
				</c:forEach>



				<!-- Repeat the above code for more video cards -->
			</div>

		</div>