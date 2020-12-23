<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- useBean 액션태그로 자바 빈 객체 생성  -->
	<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>
	<hr>
	#자바 빈 객체성생 후 저장된 정보 출력하기<br><br>
	<%-- 이름을 얻어오기 위해서 getter인 getName() 대신 <jsp:getProperty> 액션태그를 사용. 자바 빈 객체의 필드 name값을 출력하기 위함  --%>
	이름 : <jsp:getProperty property="name" name="member"/><br>
	<%-- 아이디를 얻어오기 위해서는 getter인 getUserid() 대신 <jsp:getProperty> 액션태그를 사용. 자바 빈 객체의 필드 userid 값을 출력하기 위함  --%>
	아이디 : <jsp:getProperty property="userid" name="member"/>
	<hr>
	
	#정보 변경한 후 변경된 정보 출력하기 <br><br>
	<%-- 이름을 변경하기 위해서 setName() 대신 <jsp:setProperty> 액션태그 사용. --%>
	<jsp:setProperty name="member" property="name" value="전수빈" />
	<jsp:setProperty name="member" property="userid" value="pinksubin" />
	이름 : <jsp:getProperty name="member" property="name" /><br>
	아이디 : <jsp:getProperty name="member" property="userid" />	
</body>
</html>