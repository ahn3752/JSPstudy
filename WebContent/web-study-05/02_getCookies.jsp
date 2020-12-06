<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_getCookies.jsp</title>
</head>
<body>
	<h3> 클라이언트로부터 얻어온 Cookies</h3>
	<%
		Cookie[] cookies = request.getCookies(); //request.getCookies() => 클라이언트에 설정된 모든 쿠키객체들을 얻어옴.
	for (Cookie c : cookies){//cookie의 이름을 알아내기 위해 getName()을, 쿠키에 설정된 값을 알아내기 위해 getValue() 사용.
		out.println(c.getName()+" : "+c.getValue()+"<br>"); //getValue() 쿠키에 설정된 값을 문자열 형태로 알려줌.
	}
	
	%>
</body>
</html>