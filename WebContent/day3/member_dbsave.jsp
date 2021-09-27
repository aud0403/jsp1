<%@page import="day3.dto.Customer"%>
<%@page import="day3.dao.CustomerDao"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3[3]-db 회원등록</title>
</head>
<body>
<!-- 이 파일에서는 사용자 정보를 전달 받아서 화면에 출력. 그리고 이후에는 데이터베이스에 데이터를 저장. -->
<%
//서버에서 데이터 처리를 위한 자바코드
request.setCharacterEncoding("UTF-8");
String name =request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));	//Vo객체에 저장할때 필요
String email =request.getParameter("email");
String address =request.getParameter("address");
if(address.equals("기타")) address=request.getParameter("addr_etc");
String gender =request.getParameter("gender");
String[] hobby =request.getParameterValues("hobby"); //checkbox는 배열로 받아야한다.
String hobby2 =request.getParameter("hobby");
String hobbies= Arrays.toString(request.getParameterValues("hobby"));
hobbies = hobbies.substring(1, hobbies.length()-1);
//참고 : hobby는 배열입니다. -> getParamterValues() 메소드로 데이터를 받습니다. -> 변수 타입은 String[]

	
		String password =request.getParameter("password");
		Customer cus =new Customer(0,name,password, email, address, gender, age, hobbies);
		CustomerDao dao=CustomerDao.getInstance();
		dao.insert(cus);
%>
<h3>환영합니다. WELCOME!!</h3>
<ul>
	<li> 이름 : <%= name%></li>
	<li> 나이 : <%= age%>세</li>
	<li> 이메일 : <%= email%></li>
	<li> 주소 : <%= address%></li>
	<li> 성별 : <%= (gender.equals("male")?"남자":"여자")%></li>
	<li> 취미 : <%= Arrays.toString(hobby)%></li>
	<li> 취미 : <%= hobby2%></li>
	<li> 취미 : <%= hobbies%></li>


</ul>
<a href ="member_list.jsp">회원리스트</a>
</body>
</html>