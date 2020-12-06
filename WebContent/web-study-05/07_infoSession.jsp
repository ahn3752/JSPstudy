<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_infoSession</title>
</head>
<body>
<h3>세션 정보를 얻어오는 메소드를 사용하기</h3>

<%
String id_str = session.getId(); //고유한 세션객체의 id를 되돌려줌
long lasttime = session.getLastAccessedTime(); //세션에 마지막으로 액세스한 시간을 되돌려줍니다.
long createdtime = session.getCreationTime(); // 세션이 생성된 시간을 되돌려줍니다.
long time_used = (lasttime - createdtime) / 60000; // (마지막 액세스 시간 -세션이 생성된 시간) = 웹사이트에 머문시간
int inactive = session.getMaxInactiveInterval() / 60;//세션의 유효시간
boolean b_new = session.isNew(); // 세션이 새로만들어졌는지 true / false
%>
[1] 세션 ID는 [<%=session.getId() %>] 입니다. <br><hr>
[2] 당신이 웹사이트에 머문 시간은 <%= time_used %> 분입니다. <br><hr>
[3] 세션의 유효시간은 <%= inactive %> 분입니다.<br><hr>
[4] 세션이 새로 만들어졌나요?<br>
<%
if(b_new)
	out.print(" 예 ! 새로운 세션을 만들었습니다.");
else
	out.print(" 아니오 !  새로운 세션을 만들지 않았습니다.");
%>
</body>
</html>