<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="pagination">
	<div>
		<ul class="nav tm-paging-links">
			<li class="nav-item PTitem"><a href=""
				class="nav-link PTlink tm-paging-link"><</a></li>

			<c:forEach var="i" begin="1" end="3">
				<li class="nav-item PTitem ${i eq activeTab ? ' active' : ''}"><a
					href="/asmJava4/tab?tab=${i}"
					class="nav-link PTlink tm-paging-link">${i}</a></li>
			</c:forEach>


			<li class="nav-item PTitem"><a href="#"
				class="nav-link PTlink tm-paging-link">></a></li>
		</ul>
	</div>
</div>