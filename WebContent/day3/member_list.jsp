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

<style type="text/css">
	ul{
	    display:flex;
		list-style: none;
		justify-content: :space-between;
		padding-inline-start:0px;
	}
	ul #name{
		padding : 5px  20px;
		margin : 5px 0px;
		background-color: tomato;
		color:white;
	}
	ul #email{ width : 20vw}	/* vw는 화면크기를 100으로 하여 비율값 정합니다. */
	ul #hobby{ width : 15vw}
	li {
		padding : 5px  20px;
		margin : 5px 0px;
		border: 1px solid gray;
		border-radius: 3px;
		width :10vw;
	}
	ul #name2{
		padding : 5px  20px;
		margin : 5px 0px;
		background-color: aqua;
		color:white;
	}
	
	
</style>
</head>
<body>

<h3>고객 리스트 welcome!!!</h3>
<%
	CustomerDao dao= CustomerDao.getInstance();
	List<Customer> list= dao.selectAll();
	/* out.print(list); */
	
	Customer temp;
	for(int i=0;i<list.size();i++){
		temp=list.get(i);
	
%>
<ul>
	<li id='name'> <%=temp.getName() %> </li>
	<li> 나이 :<%= temp.getAge() %> 세</li>
	<li id='email'> <%=temp.getEmail() %></li>
	<li> <%=temp.getAddr() %> </li>
	<li> <%=temp.getGender().equals("male")?"남자":"여자" %>  <!-- (gender.) --> </li>
	<li id='hobby'> <%=temp.getHobby()%> </li>
</ul>
<%
} 
%>
<% for(Customer cus :list){ %>
	<ul>
	<li id='name2'> <%=cus.getName() %> </li>
	<li> 나이 :<%= cus.getAge() %> 세</li>
	<li id='email'> <%=cus.getEmail() %></li>
	<li> <%=cus.getAddr() %> </li>
	<li> <%=cus.getGender().equals("male")?"남자":"여자" %>  <!-- (gender.) --> </li>
	<li id='hobby'> <%=cus.getHobby()%> </li>
</ul>
	

<%} %>



</body>
</html>