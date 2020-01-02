<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

	<!--============================= HEADER =============================-->
	<%@ include file="/pageframe/header.jsp"%>
	<!--==============================HEADER =============================-->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>회원가입</title>

  <!-- Custom fonts for this template-->
    <!-- Bootstrap core JavaScript-->
  <script src="/resources/mypage/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
   
   <!--이메일/비밀번호 검사하는 플러그인제공   -->
  <script src="/resources/js/jquery/jquery.validate.js"></script>           
  <script src="/resources/js/jquery/additional-methods.js"></script>
  <script src="/resources/js/jquery/messages_ko.js"></script>				
  
  <link href="/resources/mypage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="/resources/mypage/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">회원가입</div>
      <div class="card-body">
      
      
        <form id="registForm" method="post" action="/regist">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-12">
                <div class="form-label-group">
                  <input type="text" id="name" name="name" class="form-control" placeholder="이름" required="required" autofocus="autofocus">
                  <label for="name">이름</label>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="email" id="email" name="email" class="form-control" placeholder="아이디(이메일)" required="required">
              <label for="inputEmail">아이디(이메일)</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="password" id="password" name="password" class="form-control" placeholder="비밀번호" required="required">
                  <label for="inputPassword">비밀번호</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                  <label for="confirmPassword">비밀번호 확인</label>
                </div>
              </div>
            </div>
          </div>
          <a class="btn btn-primary btn-block" id="join" onclick="goJoin()">가입</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="/login">로그인 페이지</a>
          <a class="d-block small" href="/user/forgotPassword">비밀번호를 잊어버리셨나요?</a>
        </div>
      </div>
    </div>
  </div>


  <script type="text/javascript">
//  가입 온클릭 함수
  	function goJoin(){
  		var name = $("#name").val();
  		var email = $("#email").val();
  		var password = $("#password").val();
  		var confirm_password = $("#confirmPassword").val();
  		
//   		if(password != confirm_password){
//   			alert("비밀번호와 확인 비밀번호가 일치 하지 않습니다.");
//   			return false;
//   		}
  		
  		if ($("#registForm").valid()) {
			$("#registForm").submit();
		}	
  	}
  	
  	
	$(document).ready(function(){

	});
  	
  </script>
  
  
</body>

</html>
