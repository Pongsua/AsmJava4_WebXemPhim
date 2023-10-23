<%@ include file="/fit_together_index/directive.jsp"%>

<div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 mb-4">
	<div class="fullitem">
		<div class="video-card">
			<img width="100%" src="${param.poster}" alt="Video 1">
			<div class="overlay">
				<%--<a href="#"> <i class="fas fa-thumbs-up"></i></a>  --%> 
				<a href="<c:url value='/account/chooseVideo?&id=${param.videoId}'/>">
					<i class="fas fa-play"></i>
				</a> 
			<%--	<i class="fas fa-share" data-bs-toggle="modal"
					data-bs-target="#btnModalShare"></i> --%> 
			</div>
		</div>
		<div class="titledesc">
			<h4 class="text-white">${fn:substring(param.title, 0, 28)}${fn:length(param.title) > 28 ? '...' : ''}</h4>
			<p class="text-white">${fn:substring(param.decscription, 0, 90)}${fn:length(param.decscription) > 90 ? '...' : ''}</p>
		</div>
	</div>
</div>