<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_getSessions.jsp</title>
</head>
<body>
	<h3>세션에 설정된 모든 값 얻어오기</h3>
	<%
	//세션에 들어이ㅏㅆ는 몯느 이름에 대한 정보를 얻어옴.
	Enumeration names = session.getAttributeNames();
	
	//hasMoreElements() => 항목이 존재하는지를 판단하여 true / false
	while(names.hasMoreElements()){
		String name=names.nextElement().toString(); //세션에 저장된 항목의 이름을 하나씩 뽑아옴
		String value=session.getAttribute(name).toString(); 
		//이름이 저장된 name변수를 session의 getAttribute() 메소드에 지정하여 값을 얻어와 toString() 메소드를 사용하여 문자열로 변경한 후 value에 저장.						
		out.println(name+" : " + value + "<br>");
	}
	%>
</body>
</html>