<%@ include file="/fit_together_index/directive.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="/asmJava4/">
<title>OE Entertainment</title>

<%@ include file="/fit_together_index/bootstrap.jsp"%>


<c:choose>
    <c:when test="${css eq 'index'}">
      <link rel="stylesheet" href="./css/index.css">
    </c:when>
    <c:when test="${css eq 'detail'}">
      <link rel="stylesheet" href="./css/testDetail.css">
    </c:when>
     <c:when test="${css eq 'favorites'}">
      <link rel="stylesheet" href="./css/favorites.css">
    </c:when>
     <c:when test="${css eq 'report'}">
      <link rel="stylesheet" href="./css/report.css">
    </c:when>
     <c:when test="${css eq 'videomanagerment'}">
      <link rel="stylesheet" href="./css/videomanagerment.css">
    </c:when>
     <c:when test="${css eq 'usermanagerment'}">
      <link rel="stylesheet" href="./css/videomanagerment.css">
    </c:when>
</c:choose>

<link rel="stylesheet" href="./fit_together_index/editprofilemodal.css">

</head>
<body>
	
	<jsp:include page="/fit_together_index/header${loginStatus}.jsp"></jsp:include>
	<c:if test="${view eq 'testHome.jsp'}">
	<%@ include file="/fit_together_index/banner.jsp"%>
	</c:if>
<%@ include file="/fit_together_index/editprofilemodal.jsp"%>	
	<main>
	 <%--
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
		<%@ include file="/fit_together_index/shareModal.jsp"%> --%>


	<jsp:include page="${view}"></jsp:include>
	
	
	</main>
	

<c:if test="${not (view eq '/adminform/view_report.jsp' || view eq '/adminform/view_videomanagerment.jsp' || view eq '/adminform/view_usermanagerment.jsp')}">
    <%@ include file="/fit_together_index/footer.jsp"%>
</c:if>


</body>

</html>
