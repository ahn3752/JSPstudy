<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_import.jsp</title>
</head>
<body>
<%
Calendar date = Calendar.getInstance();
SimpleDateFormat today = new SimpleDateFormat("yyyy년 mm월 dd일"); //SimpleDateFormat 클래스를 사용하면 날짜와 시간정보를 얻어올수 있음
SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
%>
오늘은 <b> <%= today.format(date.getTime()) %></b> 입니다.<br>
지금 시각은 <b> <%= now.format(date.getTime()) %></b> 입니다.
</body>
</html>