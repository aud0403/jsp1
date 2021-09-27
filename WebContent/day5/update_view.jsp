<%@page import="day3.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>day4[]-고객수정</title>
    <link rel="stylesheet" href="../css/member.css?v=3">

    <script>
        function validCheck() {
		}
        
        function deleteok(){
        	const yn = confirm("[주의]등록된 고객에서 삭제하시겠습니까?");
        	if(yn){
        		alert(`고객 idx ${cus.idx}를 삭제합니다.`);
        		location.href=`deleteok.jsp?idx=${cus.idx}`;	//요청 url이동  --->고객 삭제 완성하기
        	}else{
        		alert('고객 삭제를 취소했습니다.');
        	}
        	
        }
    </script>
</head>

<body>
<c:if test="${alert!=null}">
   <script type="text/javascript">
      alert('고객 정보가 수정되었습니다.!');
   </script>
</c:if>




    <div style="width: 70%; margin:auto;">
        <h3>회원등록</h3> <!-- 이메일, 지역 -->
      
        <form action="update_save.jsp" method="POST" name="frmReg" onsubmit=" return validCheck()">
        
        <input type= "hidden" name="idx" value="${cus.idx}"> 
        <!-- 브라우저에 출력은 안되고 파라미터로 필요한 값은 type은 hidden으로 한다. -->
        
        <table style="width:100%; margin:auto;"> <!-- 부모태그의 너비 70% -->
            <tr>
                <td class="td">이름</td> <!-- required는 필수 입력,  readonly:읽기만. -->
                <td> <input type="text" name="name" placeholder="이름 입력(필수)"  value="${cus.name}"
                readonly></td>  <!--readonly : 읽기만 입력 못함  -->
            </tr>
            <tr>
                <td class="td">이메일</td>
                <td><input type="email" name="email" value="${cus.email}"></td>
            </tr>
            <tr>
                <td class="td">나이</td>
                <td><input type="number" name="age" min="10" max="99"
                    value="${cus.age}" readonly></td> <!-- value는 기본값 type=nuber일때 min max 속성 가능 -->
           </tr>
            <tr>
                <td class="td"><label for="">주소</label></td>
                <td><!-- 선택리스트를 만들기 위해 select 태그 사용 -->
                    <select name="address" id="addr_select">
                        <!--option 태그안에 문자열은 화면에 보이는것, 
                            value안에 문자열은 서버로 전송되는 값 -->
                        <option value="서울" >서울</option>
                        <option value="인천">인천</option> <!-- select 는 기본 선택값 -->
                        <option value="대전">대전</option>
                        <option value="광주">광주</option>
                        <option value="부산">부산</option>
                        <option value="기타" selected>기타</option>
                    </select>
                    	<span id="addr_id">
                    	<!-- disabled="disabled"는 파라미터값 전달에서 제외됩니다. -->
                    	<input type ="text" name="addr_etc" disabled="disabled" value="${cus.addr}"
                    								placeholder="기타 지역을 입력하세요."> 
                    	</span>
                </td>
            </tr>
            <tr>
                <td class="td">성별</td>
                <td> ${cus.gender  eq 'male'?'남성':'여성'}
                </td>
            </tr>
            <tr>
                <td class="td">취미</td>
             
                <td> ${cus.hobby}
                </td>
            </tr>
            <tr>
                <td  colspan ="2">
                    <input type="submit" value="수정하기"> 
                    <!-- submit:제출하기, 서버에 데이터를 제출(form action 속성값에 설정된 url로 데이터 전달) -->
                    <!--  action이 .html 은 데이터 전송확인은 못합니다. url 이동만 확인! -->
                    <input type="button" value="삭제하기" onclick="deleteok()">
                    <input type="reset" value="다시쓰기">
                </td>
            </tr>
        </table>
    </form>
    </div>
    <script type="text/javascript">
	document.getElementById("addr_select").addEventListener("change",function(){
		if(this.value=="기타"){
//			document.getElementById("addr_id").style.display="inline-block";
			document.frmReg.addr_etc.disabled=false;
		}else {
//			document.getElementById("addr_id").style.display="none";
			document.frmReg.addr_etc.disabled=true;
		}
		
	});
	
	
	//표현식으로 자바의 변수값을 가져오기. cus객체의 addr 프로퍼티 (get 메소드를 통해서 가져옵니다.
	documnet.querySelectorAll("option").forEach( item => {
		if(item.value===`${cus.addr}`)item.selected=true;
	});
	
	
	</script>
</body>
</html>