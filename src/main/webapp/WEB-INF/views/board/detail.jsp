<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">

		<button class="btn btn-secondary" onclick="history.back()">���ư���</button>
		<c:if test="${board.user.id == principal.user.id }">
			<a href="/board/${board.id}/updateForm" class="btn btn-warning">����</a>
			<button id="btn-delete" class="btn btn-danger">����</button>
		</c:if>
		<br/><br/>
		<div>
			�� ��ȣ : <span id="id"><i>${board.id } </i></span>
			�ۼ��� : <span><i>${board.user.username } </i></span>
		</div>
		<br />
		<div>
			<h3>${board.title}</h3>
		</div>
		<hr/>
		<div>
		  <div>${board.content}</div>
		</div>
		<hr />
		
		<div class="card">
		<form>
			<input type="hidden" id="userId" value="${principal.user.id }"/>
			<input type="hidden" id="boardId" value="${board.id }"/>
			<div class="card-body">
				<textarea id="reply-content" class="form-control" rows="1"></textarea>
			</div>
			<div class="card-footer">
				<button type="button" id="btn-reply-save" class="btn btn-primary">���</button>
			</div>
		</form>
		</div>
		<br />
		<div class="card">
			<div class="card-header">��� ����Ʈ</div>
			<ul id="reply-box" class="list-group">
				<c:forEach var="reply" items="${board.replys}">
					 <li id="reply-${reply.id}" class="list-group-item d-flex justify-content-between">
					  	<div>${reply.content}</div>
					  	<div class="d-flex">
					  		<div class="font-italic">�ۼ��� : ${reply.user.username} &nbsp;</div>
					  		<button onClick="index.replyDelete(${board.id}, ${reply.id })" class="badge">����</button>
					  	</div>
					  </li>
				</c:forEach>
			 
			</ul>
		</div>
</div>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>
