<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[4]</title>
</head>
<body>
	<!--request parameter : request 객체에 저장되어 서버에게 전달되는 데이터.  
		1) URL뒤에 ? 에 쿼리 문자열로 전달하는 방법 ex)?name=홍길동&age=34
		2) method를 post로 하여 전달하는방법-->
<!--요청 URL : http://localhost:8083/jsp1day2/request_parameter.jsp?name%20=%ED%99%8D%EA%B8%B8%EB%8F%99&age=34  
								ㄴRequest Method : GET-->
	<h3>Request Parameter 연습</h3>
	<hr>
	
	<%
	//request의 파라미터 가져오기 입니다. 파라미터가 10개 라면....getParameter() 메소드는 몇번? 10번
			//예고편 : DTO(VO) 타입 클래스를 이용해서 파라미터와 객체를 자동으로 매핑(프레임워크)
	String name= request.getParameter("name"); //"name" 은 ?뒤에 파라미터 이름
	String age= request.getParameter("age");   //파라미터 안받았다고 오류가 발생하지 않습니다.
	String loc= request.getParameter("loc");   //파라미터 이름"loc"의 값이 없다면 null
			
	%>
	
	<ul>
		<li>이름 :  <%= name %> </li>
		<li>나이 :  <%= age %></li>
		<!-- 파라미터에 location 도 전달해봅시다  -->
		<li>지역 : <%= loc %> </li>
	
	</ul>
	<!-- 파라미터값으로 MyUser 객체를 생성해 봅시다.  -->
	<%
		if(age==null) age="0"; // age null 일때 오류 404 방지
	 	MyUser my2= new  MyUser(name, Integer.parseInt(age), loc);
										// ㄴ age가 null 오류 404, 다른건 없으면 그냥 null 로표시
		out.print(my2);		//out은 내장객체 -> 브라우저에 출력
	%>
	
	<ul>
		<li>이름 :  <%= my2.getName() %> </li>
		<li>나이 :  <%= my2.getAge() %></li>
		<!-- 파라미터에 location 도 전달해봅시다  -->
		<li>지역 : <%= my2.getLocation() %> </li>
	
	</ul>
	
	
	
	
	
</body>
</html>