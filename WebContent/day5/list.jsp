<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	CustomerDao dao= CustomerDao.getInstance();
	List<Customer> list= dao.selectAll();
	/* out.print(list); */
	request.setAttribute("list", list);
	pageContext.forward("list_view.jsp");
%>
	
	<!-- list.jsp 파일은 사용자 입력 출력(태그를 사용한다)은 포함하고 있지 않고 
	    데이터 처리 ,db ,sq1 실행 메소드 호출등으로 포로그래밍되어있어서
	    .java 형식으로 장석될수 잇다. -->


