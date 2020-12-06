<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 값 얻어오기</h3>
<%	
	//session.getAttribute로 호출하면 Object형으로 반환되므로 형에 맞게 형변환 해야함.
	String id= (String) session.getAttribute("id"); 
	String pwd = (String) session.getAttribute("pwd");
	Integer age = (Integer) session.getAttribute("age");
%>
id : <%=id %><br>
pwd : <%= pwd %><br>
age : <%= age %><br>
</body>
</html>