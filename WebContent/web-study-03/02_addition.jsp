<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_addition.jsp</title>
</head>
<body>
<!--< % 자바코드 % > 서블릿 컨테이너는 이부분을 jsp로 인식하여 이를 해석한 후 HTML 형태로 변환.   -->
<% 
	int num1 = 20;
	int num2 = 10;
	int add = num1 + num2;
	out.print( num1 + " + " + num2 + " = " + add);

%>
</body>
</html>