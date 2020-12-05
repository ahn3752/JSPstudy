<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_param.jsp</title>
<script type="text/javascript" src="param.js"></script>
</head>
<body>
	<form method="get" action="ParamServlet" name="frm"> <!-- 전송버튼을 클릭하면 ParamServlet 서블릿이 get방식으로 요청됨.  -->
	아이디 :  <input type="text" name="id"><br>
	나 &nbsp; 이 :    <input type="text" name="age"><br>
	<input type="submit" value="전송" onclick="return check()"><!-- 함수가 호출되도록 onClick 이벤트를 기술해야 한다.  -->
	</form>
</body>
</html>