<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08_main.jsp</title>
</head>
<body>
<h3>프론트 페이지</h3>
<a href="08_sub.jsp"> 서브 페이지로 이동하기 </a><br>
<%@ include file ="footer.jsp" %>  
<!--include 지시자를 만나면 file속성에 지정한 "footer.jsp" 파일을 현재페이지에 그대로 포함시킴  -->
</body>
</html>