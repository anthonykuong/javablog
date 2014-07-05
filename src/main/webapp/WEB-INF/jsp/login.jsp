<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>

<style>
.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;

}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin .checkbox {
	font-weight: normal;
}

.form-signin .form-control {
	position: relative;
	height: auto;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px;
	font-size: 16px;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>



			<form class="form-signin" role="form"
				action="<spring:url value="/j_spring_security_check" />"
				method="POST">
					<h2 class="form-signin-heading">Please sign in</h2>
					<input type="text"  name="j_username" class="form-control"
						placeholder="Enter Name" required autofocus> 
					<input
						type="password" name="j_password" class="form-control"
						placeholder="Enter Password" required>
				
				
				<div class="pull-right">
				<label class="checkbox">
						
					<input type="checkbox"> Remember Me </input>	
				</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Log
					In</button>
				<a  class="btn btn-lg btn-info btn-primary btn-block"  href="#register" role="button"
				data-toggle="modal"
				>Register
				</a>
				
				
				
			<!-- Error Modal -->
		<div id="errorModalExample" class="modal fade">
		  <div class="modal-dialog modal-error modal-sm">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h4 class="modal-title"><i class="glyphicon glyphicon-warning-sign"></i> Error</h4>
		      </div>
		      <div class="modal-body">
		        <p></p>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- End Error Modal -->
		
		
	
			</form>

<!-- Registration Form-->
	
		
			<!-- Register Modal -->
		<div id="register" class="modal fade">
		  <div class="modal-dialog modal-error modal-sm">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h4 class="modal-title"><i class="glyphicon glyphicon-warning-sign"></i> Register</h4>
		      </div>
		      <div class="modal-body">
		       <p>Please Register if you do not have a login</p>
		      </div>
		      <div class="modal-footer">
		      	<button class="btn btn-danger" data-dismiss="modal" aria-hidden=true">Cancel</button>
		      	<a class="btn btn-success"  aria-hidden="true" href="<spring:url value="/register.html" />" >Register</a>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- End Error Modal -->
		


		




	
	
		
		