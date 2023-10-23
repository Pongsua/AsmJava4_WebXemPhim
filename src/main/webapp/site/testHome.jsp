<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Video Cards -->
		<div class="p-5">
	
			<div class="row">
				<c:forEach var="item" items="${bean}">
					<jsp:include page="/fit_together_index/video_items.jsp">
						<jsp:param name="title" value="${item.title}" />
						<jsp:param name="poster" value="${item.poster}" />
						<jsp:param name="videoId" value="${item.videoId}" />
						<jsp:param name="decscription" value="${item.decscription}" />
					</jsp:include>
				</c:forEach>
			</div>

			<!-- Catalog Paging Buttons -->
			<%@ include file="/fit_together_index/pagination.jsp"%>

		</div>
	<%@ include file="/fit_together_index/editprofilemodal.jsp"%>		
		<%@ include file="/fit_together_index/shareModal.jsp"%>