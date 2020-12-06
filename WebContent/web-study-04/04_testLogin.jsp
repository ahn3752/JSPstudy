<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id="pinksung";
String pwd="1234";
String name="성윤정";
request.setCharacterEncoding("UTF-8");
if(id.equals(request.getParameter("id")) && 
		pwd.equals(request.getParameter("pwd"))){ //id,pwd가 일치할 경우 로그인되어 메인페이지로 이동
	response.sendRedirect("04_main.jsp?name="+
			URLEncoder.encode(name,"UTF-8")); //메인페이지로 회원 이름을 쿼리스트링으로 넘겨줌
//개발자가 직접 한글을 쿼리스트링으로 만들어 페이지로 전송할 경우에는 URLEncoder.encode메소드로 인코딩 과정을 거쳐야함.
}
else{ //id,pwd 불일치하여 loginForm으로 다시 이동.
	response.sendRedirect("04_loginForm.jsp");
}
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_testLogin.jsp</title>

</head>
<body>

</body>
</html>