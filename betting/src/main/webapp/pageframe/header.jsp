<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	  <script src="resources/vendor/jquery/jquery.min.js"></script>
	  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	  <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	  <script src="resources/js/jqBootstrapValidation.js"></script>
	  <script src="resources/js/contact_me.js"></script>
	  <script src="resources/js/freelancer.min.js"></script>
</head>
  
<body>
  <!-- 공통 페이지(function) 포함 --> 
  <%@ include file="/pageframe/common.jsp"%>
  
  
  
  <!-- 본문 -->
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="/">BETTING</a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">미정1</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">미정2</a>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/login">로그인</a>
          </li>
        </ul>	
      </div>
    </div>
  </nav>
</body>

<script type="text/javascript">
	$(document).ready(function(){
	});
</script>



</html>
