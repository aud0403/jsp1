<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3[5]-request 객체의 에트리뷰트</title>
</head>
<body>
<!-- request 객체의 에트리뷰트에 이용하여 
	 현재 B.jsp 파일에서 다른  A.jsp 파일로 데이터를 전달합니다.
	 그리고 이때, A.jsp 파일로 이동하는 명령은 pageContext.forward("A.jsp") 로 합니다. 
	 http://localhost:8083/jsp1/day3/b.jsp
	 http://localhost:8083/jsp1/day3/a.jsp
	 위의 2가지 url은 요청이 다릅니다.
-->

<%
	MyUser vo =new MyUser ("사나",23,"서울");
	int value1=23;
	String value2="Hello";
	
	//위의 3가지 값은 request_result.jsp 파일로 전달합니다.
	request.setAttribute("attr1", vo);
	request.setAttribute("attr2", value1);
	request.setAttribute("attr3", value2);
	
	pageContext.forward("request_result.jsp");  
	//요청을 변경하는게 아이고 요청을 전달(forword)합니다. -> 요청이 발생할때 request 객체 정보를 똑같이 사용할수 잇게 합니다.
	//											-> request 객체를 이용하여 데이터 전달이 목접입니다. setAttribute
	//요청을 전달햇기 때문에 url이 변경이 안됩니다.

%>  <!-- 사용자 입력(또는 조회) -> 처리 -> 결과 출력 순서로 봣을때
		처리에서 결과로 넘어가는 과정에서 필요합니다. -->
</body>
</html>