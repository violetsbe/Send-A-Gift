<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
 	
 	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	

	<style type="text/css">
	.divider-text {
	    position: relative;
	    text-align: center;
	    margin-top: 15px;
	    margin-bottom: 15px;
	}
	.divider-text span {
	    padding: 7px;
	    font-size: 12px;
	    position: relative;   
	    z-index: 2;
	}
	.divider-text:after {
	    content: "";
	    position: absolute;
	    width: 100%;
	    border-bottom: 1px solid #ddd;
	    top: 55%;
	    left: 0;
	    z-index: 1;
	}
	</style>

	<script type="text/javascript">
	
	
	</script>

</head>

<body onload="document.loginform.id.focus();">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">초콜릿톡 선물하기</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="/index">홈
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
          <li class="nav-item active">
          	<a class="nav-link" href="/register/registerForm">가입하기
          	<span class="sr-only">(current)</span>
          	</a>
          </li>
          <li class="nav-item">
          	<a class="nav-link" href="/login/loginForm">로그인</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>



    <div class="row">
    
    	<div class="col-lg-12">
    
	    	<div class="card bg-light">
				<article class="card-body mx-auto" style="max-width: 400px;">
					<br/>
					<h4 class="card-title mt-3 text-center">초콜릿톡 선물하기 로그인</h4>
					<br/>
					<form name="loginform" action="/login" method="post">
					<div class="form-group input-group">
						<div class="input-group-prepend">
						    <span class="input-group-text"> <i class="fas fa-id-card"></i> </span>
						 </div>
				        <input name="id" class="form-control" placeholder="아이디" type="text">
				    </div> <!-- form-group// -->
	
					
				    <div class="form-group input-group">
				    	<div class="input-group-prepend">
						    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
						</div>
				        <input name="pwd" id="pwd" class="form-control" placeholder="비밀번호" type="password">
				    </div> <!-- form-group// -->
				
				    <input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
					
					
					<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
					    <font color="red">
					        <p>로그인에 실패하였습니다. <br/>
					            ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
					        <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
					    </font>
					</c:if>


	                                       
				    <div class="form-group">
				        <button type="submit" class="btn btn-primary btn-block">로그인</button>
				    </div> <!-- form-group// -->
				    
					<div class="clearfix">
		            <a href="#" class="pull-right">비밀번호를 잊으셨나요?</a>
					</div>
		        
					<p class="divider-text">
			        	<span class="bg-light">OR</span>
					</p>
			        <div class="text-center social-btn">
						<a href="#"><img width="250px" src="/resources/img/naver_Green.PNG"></a>
			        </div>                                                                   
				</form>
				<br/>
					<p class="text-center text-muted small">아직 회원이 아니신가요? <a href="/register/registerForm">회원가입</a></p>
				</article>
				<br/>

			    
			    
			</div> <!-- card.// -->
				
			</div> 
			<!--container end.//-->
			
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
