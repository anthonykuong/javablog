<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>
<h1>ANTHONY KU ONG. herokuapp. com</h1>
<p> Here are the top syndicated news and content news from the Toronto Star, and the ones you've subscribed too!
    <a href="http://www.anthonykuong.com" ><i> - Anthony Ku Ong</i></a>
	 </p>
	 
	 <p>
	  ( Credit goes to Jiri Pinkas for the original site design )
	 
	 </p>
</p>


<table class="table table-bordered table-hover table-striped table-responsive">
	<thead>
		<tr>
			<th>date</th>
			<th>item</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${items}" var="item">
			<tr>
				<td>
					<c:out value="${item.publishedDate}" />
					<br />
					<c:out value="${item.blog.name}" />
				</td>
				<td>
					<strong>
						<a href="<c:out value="${item.link}" />" target="_blank">
							<c:out value="${item.title}" />
						</a>
					</strong>
					<br />
					${item.description}
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

