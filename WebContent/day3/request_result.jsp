<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3[6]-request 객체의 에트리뷰트</title>
</head>
<body>
	<%
	/*request_attribute.jsp에서 전달받은 데이터 출력하기  */
	MyUser user = (MyUser)request.getAttribute("attr1");
	//int n1 = (int)request.getAttribute("attr2");
	String s1= (String)request.getAttribute("attr3");
	String value3="Hello";
	
	out.print(user);out.print("<br>");
	//out.print(n1);out.print("<br>");
	out.print(s1);out.print("<br>");
	out.print(value3);
	
	//url은 http://localhost:8083/jsp1/day3/request_attribute.jsp 입니다.
	//url 요청을  http://localhost:8083/jsp1/day3/request_result.jsp 하면 null만 출력합니다.
	%>
</body>
</html>