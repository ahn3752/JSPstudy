<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//세션에 이름을 지정하여 값들을 저장.
session.setAttribute("s_name1","저는 세션에 저장된 첫번째 값이에요.");
session.setAttribute("s_name2","저는 세션에 저장된 두번째 값이에요.");
session.setAttribute("s_name3","저는 세션에 저장된 세번째 값이에요.");

out.print(" <h3> >> 세션값을 삭제하기 전 << </h3>");
//session 객체의 getAttributeNames 메소드를 사용하여 현재 세션에 설정된 모든 이름에 대한
//정보를 저장하고 있는 Enumeration 객체를 받아옵니다.
Enumeration names = session.getAttributeNames(); 
//반복문을 돌면서 Enumeration 객체에 세션들이 존재하는지를 검사. 존재하면 해당 세션에 저장된 이름과 값을 뽑아와서 출력.
while(names.hasMoreElements()){
	String name = names.nextElement().toString();
	String value=session.getAttribute(name).toString();
	out.println(name + " : " + value+"<br>");
}

//설정된 세션의 값들을 모두 사라지도록 합니다.
session.invalidate();

out.print("<hr><h3> >> 세션값을 삭제한 후<< </h3> ");
out.print(" Q: 과연 세션아이디가 유효할까요?<br>");
if(request.isRequestedSessionIdValid()==true) //세션객체가 유효한지 여부 true/ false
	out.print(" A : 세션아이디가 유효합니다.<hr>");
else
	out.print(" A : 세션 아이디가 유효하지 않습니다.<hr> ");

%>
</body>
</html>