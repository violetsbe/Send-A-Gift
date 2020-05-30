<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%
request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>
<html lang="ko">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/shop-homepage.css" rel="stylesheet">

   <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">초콜릿톡 선물하기</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/index">홈
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/common/best">베스트</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/common/brand">브랜드</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/common/giftbox">선물함</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">/
            </a>
          </li>
          <li class="nav-item">
          	<a class="nav-link" href="/register/registerForm">가입하기</a>
          </li>
          <li class="nav-item">
          
			<sec:authorize access="isAnonymous()">
				<a class="nav-link" href='<c:url value="/login/loginForm"/>'>로그인</a>
			</sec:authorize>

          	<!-- <a class="nav-link" href="/login/loginForm">로그인</a>  -->
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-12">
		
		
		<h6>권한이 없어 접근이 불가합니다.<br>홈페이지 관리자에게 문의하세요.</h6>

		
	  </div>
      <!-- /.col-lg-12 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; ChocolateTalk Gift 2020</p>
    </div>
    <!-- /.container -->
  </footer>



</body>

</html>
