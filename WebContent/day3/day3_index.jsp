<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Review</h4>
	<ul>
		<li> <a href="dbconn_test.jsp">dbconn_test.jsp</a> : db서버에 연결되 되었는지 테스트</li>
		<li> <a href="member.html">member.html</a> : 회원정보를 등록하고 member_dbsave.jsp에 보낸다.</li>
		<li> <a href="member_dbsave.jsp">member_dbsave.jsp</a> :추가된 멤버 정보 확인,++기능(추가된 후 리스트 확인할수 링크)</li>
		<li> <a href="member_list.jsp">member_list.jsp </a> : 멥버 리스트 출력</li>
		<li> <a href="request_attribute.jsp">request_attribute.jsp</a> : attribute를  사용, 파라미더값+양식 나눔(object 타입으로 )</li>
		<li> <a href="request_result.jsp">request_result.jsp</a> : attribute를 통해 전달되 내용 출력 (요청 하나에 전달 한번이지 요청 2번이 아니다.)</li>
		<li> <a href="registration.html">registration.html</a> : 멥버 입력</li>
		<li> <a href="list.jsp">list.jsp</a> : attribute를 사용해서 리스트 전달 ( 여긴 파라미터값 요청)</li>
		<li> <a href="list_view.jsp">list_view.jsp</a> : attribute를 통해 리스트 전달 받아 출력 ( 여긴 파라미터값 출력)</li>
		<li> <a href="registration.jsp">registration.jsp</a> : 멥버 정보 insert</li>
		<li> <a href="registration_view.jsp">registration_view.jsp</a> : 새로운 출력문 (response.sendRedirect("list.jsp");)</li>
	
	
	</ul>
</body>
</html>