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
  
  <!-- 회원가입 폼 아이콘 -->
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

// 숫자가 아닌 정규식
var replaceNotInt = /[^0-9]/gi;

$(document).ready(function(){
	// 전화번호 입력 폼에 숫자만 입력 가능하도록
    $("#phone2").on("focusout", function() {
        var x = $(this).val();
        if (x.length > 0) {
            if (x.match(replaceNotInt)) {
               x = x.replace(replaceNotInt, "");
            }
            $(this).val(x);
        }
    }).on("keyup", function() {
        $(this).val($(this).val().replace(replaceNotInt, ""));
    });

});

// 생년월일
function appendYear(){

	var date = new Date();

	var year = date.getFullYear();

	var selectValue = document.getElementById("year");

	var optionIndex = 0;


	for(var i=year-100;i<=year;i++){

			selectValue.add(new Option(i+"년",i),optionIndex++);                        

	}
}



function appendMonth(){

	var selectValue = document.getElementById("month"); 

	var optionIndex = 0;

	for(var i=1;i<=12;i++){

			selectValue.add(new Option(i+"월",i),optionIndex++);

	}
}


function appendDay(){

	var selectValue = document.getElementById("day");

	var optionIndex = 0;

	for(var i=1;i<=31;i++){

			selectValue.add(new Option(i+"일",i),optionIndex++);

	}
} 
</script>

</head>

<body onLoad="appendYear(); appendMonth(); appendDay();">

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
    
		<!-- 회원가입 양식 출처 : https://bootsnipp.com/snippets/z8699 -->
		<div class="col-lg-12">

			<div class="card bg-light">
			<article class="card-body mx-auto" style="max-width: 400px;">
				<br/>
				<h4 class="card-title mt-3 text-center">초콜릿톡 회원가입</h4>
				<p class="text-center">간편 회원가입</p>
				<p class="text-center">
					<a href="#"><img width="250px" src="/resources/img/naver_Green.PNG"></a>
				</p>
				<p class="divider-text">
			        <span class="bg-light">OR</span>
			    </p>
				<form>
				<div class="form-group input-group">
					<div class="input-group-prepend">
					    <span class="input-group-text"> <i class="fas fa-id-card"></i> </span>
					 </div>
			        <input name="id" class="form-control" placeholder="아이디" type="text">
			    </div> <!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
					    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
					 </div>
			        <input name="name" class="form-control" placeholder="성함" type="text">
			    </div> <!-- form-group// -->
			    <div class="form-group input-group">
			    	<div class="input-group-prepend">
					    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
					 </div>
			        <input name="email" class="form-control" placeholder="이메일 주소" type="email">
			    </div> <!-- form-group// -->
			    <div class="form-group input-group">
			    	<div class="input-group-prepend">
					    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
					</div>
					<select name="phone1" class="custom-select" style="max-width: 120px;">
						<option value="02">서울 (02)</option> 
						<option value="031">경기 (031)</option> 
						<option value="032">인천 (032) </option> 
						<option value="033">강원 (033) </option> 
						<option value="041">충남 (041) </option> 
						<option value="042">대전 (042) </option> 
						<option value="043">충북 (043) </option> 
						<option value="051">부산 (051) </option> 
						<option value="052">울산 (052) </option> 
						<option value="053">대구 (053) </option> 
						<option value="054">경북 (054) </option> 
						<option value="055">경남 (055) </option> 
						<option value="061">전남 (061) </option> 
						<option value="062">광주 (062) </option> 
						<option value="063">전북 (063) </option> 
						<option value="064">제주 (064) </option> 
						<option value="070">인터넷전화 (070) </option> 
						<option value="050">평생전화 (050) </option> 
						<option value="010" selected> 010 </option> 
						<option value="011"> 011 </option> 
						<option value="016"> 016 </option> 
						<option value="017"> 017 </option> 
						<option value="018"> 018 </option> 
						<option value="019"> 019 </option>
					</select>
			    	<input name="phone2" id="phone2" class="form-control" placeholder="연락처" type="tel" maxlength="8" />
			    </div> <!-- form-group// -->
			    <div class="form-group input-group">
			    	<div class="input-group-prepend">
					    <span class="input-group-text"> <i class="fas fa-venus-mars"></i> </span>
					</div>
					<select name="gender" class="form-control">
						<option>성별 선택</option>
						<option value="0">여성</option>
						<option value="1">남성</option>
					</select>
				</div> <!-- form-group end.// -->
			    <div class="form-group input-group">
			    	<div class="input-group-prepend">
					    <span class="input-group-text"> <i class="fas fa-birthday-cake"></i> </span>
					</div>
		
					<select id="year" class="form-control">
						<option>생년</option>
					</select>

					<select id="month" class="form-control">
						<option>월</option>
					</select>

					<select id="day" class="form-control">
						<option>일</option>
					</select>

					
				</div> <!-- form-group end.// -->
				
			    <div class="form-group input-group">
			    	<div class="input-group-prepend">
					    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
					</div>
			        <input name="pwd" id="pwd1" class="form-control" placeholder="비밀번호 입력" type="password">
			    </div> <!-- form-group// -->
			    <div class="form-group input-group">
			    	<div class="input-group-prepend">
					    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
					</div>
			        <input id="pwd2" class="form-control" placeholder="비밀번호 입력 확인" type="password">
			    </div> <!-- form-group// -->                                      
			    <div class="form-group">
			        <button type="submit" class="btn btn-primary btn-block">회원 가입</button>
			    </div> <!-- form-group// -->      
			    <p class="text-center">계정이 있으신가요? <a href="">로그인</a> </p>                                                                 
			</form>
			</article>
			<br/>
			</div> <!-- card.// -->
			
		</div> 
		<!--container end.//-->
	
			
		</div>
		<!-- col-lg-12 end // -->

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
