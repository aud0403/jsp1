<%@page import="day3.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day4[2] jstl과 el로list 가져오기</title>
</head>
<body>
<h3>고객리스트입니다.</h3>
<%-- ${list} --%>
<h3>고객 리스트 welcome!!!</h3>
<c:forEach var="cus" items="${list}" varStatus="status">
	<ul>
	<li id='name2'>${status.index}:   
	<!-- for의 상태를 갖고 있는 status 변수에서 반복 인덱스 가져오기 -->
	<a href="../member/update.jsp?idx=${cus.idx}">${cus.name}</a> </li>
	<!-- cus는 Customer 타입객체,idx,name,email..은 프로퍼티. getter없으면 값을 가져오지 못하는 오류 -->
	<li> 나이 :${cus.age} 세</li>
	<li id='email'> ${cus.email}</li>
	<li> ${cus.addr} </li>
	<li> ${cus.gender  eq 'male'?'남성':'여성'} </li>
	<li id='hobby'> ${cus.hobby} </li>
</ul>

</c:forEach>



</body>
</html>