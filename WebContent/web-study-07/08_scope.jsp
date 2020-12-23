<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "page man");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session man");
	application.setAttribute("name", "application man");
%>

name : ${name} <hr> <!--내장객체를 명시하지 않으면 page -request- session-application 순으로 속성을 찾아옴  -->
page 속성 : ${pageScope.name }<br>
request 속성 : ${requestScope.name }<br>
session 속성 : ${sessionScope.name }<br>
application 속성 : ${applicationScope.name }<br>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>