<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<script type="text/javascript" 
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>



<spring:url value="/js/appScript.js" var="js_url"/>
<script src="${js_url}" type="text/javascript"><jsp:text/></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
</head>
<body>

<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>

<tilesx:useAttribute name="current"/>

<div class="container">

  <!-- Static navbar -->
      <div class="navbar navbar-default" role="navigation">
            <a class="navbar-brand" href="<spring:url value="/" />">AnthonyKuOng</a>
          
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"
          >
          	<span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          
          </a>
          
          
          
          <!-- makes menu responsive -->
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li  class="dropdown">
              	 <a href='#' class="dropdown-toggle" data-toggle="dropdown">Contact Me
             	 	<b class="caret"></b>
             	 </a>
             	 <ul class="dropdown-menu">
             	 	<li><a class="contactClass" href="http://www.anthonykuong.com">Anthony Ku Ong</a></li>
             	 	<li><a class="contactClass" href="https://www.linkedin.com/in/anthonykuong">Linked In</a></li>
             	 	<li><a class="contactClass" href="https://www.facebook.com/anthonykuong">Facebook</a></li>
             	 	<li><a class="contactClass" href="https://twitter.com/anthonykuong">Twitter</a></li>
             	 	<li><a  class="contactClass" href="https://plus.google.com/+AnthonyKuOng">Google+</a></li>
             	 	<li class="divider"/>
             	 </ul>
              </li>
              <!--  add dividers -->
              <li class="divider-vertical"/>
              <li class="${current == 'index' ? 'active' : ''}"><a href='<spring:url value="/" />'>Home</a></li>
              <security:authorize access="hasRole('ROLE_ADMIN')">
              	<li class="${current == 'users' ? 'active' : ''}"><a href="<spring:url value="/users.html" />">Users</a></li>
              </security:authorize>
               <li class="divider-vertical"/>
             
              <li class="${current == 'register' ? 'active' : ''}"><a href="<spring:url value="/register.html" />">Register</a></li>
              <security:authorize access="! isAuthenticated()">
	              <li class="${current == 'login' ? 'active' : ''}"><a href="<spring:url value="/login.html" />">Login</a></li>
              </security:authorize>
              <security:authorize access="isAuthenticated()">
              	<li class="${current == 'account' ? 'active' : ''}"><a href="<spring:url value="/account.html" />">My account</a></li>
              	<li><a href="<spring:url value="/logout" />">Logout</a></li>
              </security:authorize>
            </ul>
          </div><!--/.nav-collapse -->
          
       </div>

<div id="somediv" title="Anthony Ku Ong" style="display:none;">
    <iframe id="thedialog" width="350" height="350"></iframe>
</div>


	<tiles:insertAttribute name="body" />

	<br>
	<br>
	<center>
		<tiles:insertAttribute name="footer" />
	</center>

</div>












</body>
</html>