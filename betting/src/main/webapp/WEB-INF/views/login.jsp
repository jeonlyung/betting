<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>로그인</title>

  <!-- Custom fonts for this template-->
  <link href="resources/mypage/endor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="resources/mypage/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">로그인</div>
      <div class="card-body">
      
        <form id="loginForm"  method="post" action="/login">
          <div class="form-group">
            <div class="form-label-group">
              <input type="email" id="email" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
              <label for="inputEmail">아이디</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="password" id="password" class="form-control" placeholder="Password" minlength="4" data-msg-minlength="최소 {0} 자리 이상 입력해야 합니다." required="required">
              <label for="inputPassword">비밀번호</label>
            </div>
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me">
               	아이디 저장
              </label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" type="submit">로그인</a>
        </form>
        
        <div class="text-center">
          <a class="d-block small mt-3" href="/regist">회원가입</a>
          <a class="d-block small" href="/user/forgot_password">아이디/비밀번호 찾기</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="resources/mypage/vendor/jquery/jquery.min.js"></script>
  <script src="resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>
  
  <!--이메일/비밀번호 검사하는 플러그인제공   -->
  <script src="/resources/js/jquery/jquery.validate.js"></script>           
  <script src="/resources/js/jquery/additional-methods.js"></script>
  <script src="/resources/js/jquery/messages_ko.js"></script>					  



<script type="text/javascript">

	$(document).ready(function(){
		$("#inputPassword").keyup(function(event){
			if(event.keyCode == 13){ // keyCode = Enter키
				goLogin();			 // 엔터키 입력하면 goLogin() 실행
			}
		});
				
	});
	
// 	로그인 플러그인을 사용하여 검증 (value값들 가지고 다시 login.jsp로 이동)
	function goLogin(){
		if($("#loginForm").validate()){
			$("#loginForm").submit();
		}
	}	
	
	
	
	
	
</script>
</body>

</html>
