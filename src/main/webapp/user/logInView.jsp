<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<!-- <!— CSS only —> -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="/resources/css/logIn.css"/>

<!-- <!— JS, Popper.js, and jQuery —> -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"/></script>
	<title>LOGIN</title>
</head>
<body>
<div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">대한민국 대표 등산 커뮤니티<br> 
              <strong>'산오름'</strong> 입니다.</h3> 
             			<form action="/user/logIn.do" method="post">
                <div class="form-label-group">
                  <input type="text" id="id" class="form-control" name="id" placeholder="ID" required autofocus>
                  <label for="id">아이디</label>
                </div>

                <div class="form-label-group">
                  <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                  <label for="password">비밀번호</label>
                </div>

                <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" name="useCookie" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1">로그인 유지하기</label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">로그인</button>
              
               <div class="text-center"> <a href="${ naver_url }"> 
			<img src="/resources/img/naver.png" width="200" height="45" alt="왓더"></a></div>
                <div class="text-center"> 
                  <a class="small" href="#">Forgot password?</a></div>
                  <div class="text-center"> 
                   <a class="nav-link" href="/user/signUpView.jsp">회원가입</a>
                   </div>
              </form>
              
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>