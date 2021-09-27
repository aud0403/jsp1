<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3[4]-db 회원 리스트</title>

<style>
	ul{
		display:flex;
		list-style: none;
		justify-content: space-between;
		padding-inline-start:0px;  /* 목록 들여쓰기 없애기 */
	}
	ul #name2{
		padding : 5px  20px;
		margin : 5px 0px;
		background-color: aqua;
		color:white;
	}
	ul #email { width : 15vw}  /* vw는 화면크기를 100으로 하여 비율값 정합니다.*/
	ul #hobby { width : 15vw}
	li {
		padding : 5px  20px;
		margin : 5px 0px;
		border: 1px solid gray;
		border-radius: 3px;
		width: 10vw;
	}
	</style>
	
</head>
<body>

<h3>고객 리스트 welcome!!!</h3>


<% 
List<Customer> list =(List<Customer>)request.getAttribute("list"); //다음주에는 이코드를 없앤다.
for(Customer cus :list){ %>
	<ul>
	<li id='name2'> <a href="update.jsp?idx=<%=cus.getIdx()%>"><%=cus.getName()%></a> </li>
	<li> 나이 :<%= cus.getAge() %> 세</li>
	<li id='email'> <%=cus.getEmail() %></li>
	<li> <%=cus.getAddr() %> </li>
	<li> <%=cus.getGender().equals("male")?"남자":"여자" %>  <!-- (gender.) --> </li>
	<li id='hobby'> <%=cus.getHobby()%> </li>
</ul>
	

<%} %>



</body>
</html>