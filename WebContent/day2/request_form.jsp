<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[5]</title>

</head>
<body>
	<h3> Request Parameter 연습 </h3>
	<!-- 이 jsp 사용자 파일의 역할: 사용자가 서버에서 전송할 데이터를 입력하도록 합니다. -->
	<h5> :: 데이터를 사용자가 입력하고 서버에 전송합니다. </h5>
	<hr>
	<!-- Request Method 확인해보세요. -->
	<h5>Request Method를 GET으로 실행합니다.(method기본값은 get)</h5>
	<form action="request_parameter.jsp"> <!-- action 은 데이터를 받을 서버의 url(파일명) -->
		<input name="name" placeholder="이름을 입력해">
		<!-- request.getParameter(이름)로 실행할 이름과 같은 name을 설정합니다. -->
		<br>	
		<input name="age" placeholder="나이를 입력해">
		<br>	
		<input name="loc" placeholder="지역을 입력해">
		<br>
		<input type="submit" value ="전송"> <!-- form태그 요소의 값들을 서버에 제출(전송)합니다. -->	
	</form>
	<hr>
	<h5>Request Method 를 post 로 실행합니다.</h5>
	
	<form action="request_parameter.jsp" method="post"> 
		<input name="name" placeholder="이름을 입력해">
		<br>	
		<input name="age" placeholder="나이를 입력해">
		<br>	
		<input name="loc" placeholder="지역을 입력해">
		<br>
		<input type="submit" value ="전송(post)"> 
	</form>
	<!--
	Request Method
	GET : 입려데이터를 Query String으로 전달. 문자인코딩은 UTF-8. 검색(조회)로 사용한다.
	POST : 입력데이터를 form data로 전달. 문자인코딩(받는 jsp파일에서)은 꼭 해줘야한다. 새로운 데이터의 저장 목적으로 사용한다.
	
	  -->
	
	
</body>
</html>








