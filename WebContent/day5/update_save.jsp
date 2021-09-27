<%@page import="day5.dao.MybatisDao"%>
<%@page import="day3.dto.Customer"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
/* 이메일과 지역만 수정 */
int idx = Integer.parseInt(request.getParameter("idx"));
String email =request.getParameter("email");
String address =request.getParameter("address");
if(address.equals("기타")) address=request.getParameter("addr_etc");

Customer cus = new Customer();
cus.setEmail(email);
cus.setAddr(address);
cus.setIdx(idx);

MybatisDao dao = MybatisDao.getInstance();
dao.update(cus);

//response.sendRedirect("list.jsp");  //고객정보 수정을 완료하고 돌아갈 url
response.sendRedirect("update.jsp?alert=&idx="+idx);
//예, http://localhost:8083/jsp1/member/update.jsp?idx=6

%>