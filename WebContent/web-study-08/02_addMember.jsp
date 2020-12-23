<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%!
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid="scott";
	String pass="1234";
	
	String sql="insert into member values(?, ?, ?, ?, ?, ?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8"); //한글깨짐 방지
	
	//입력폼으로부터 회원정보 얻어오기
	String name = request.getParameter("name");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String admin = request.getParameter("admin");
	try{
		//(1단계)JDBC드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//(2단계) 데이터베이스 연결 객체인 Connection 생성
		conn = DriverManager.getConnection(url, uid, pass);
		//(3단계) sql문을 수행할 PreparedStatement 객체 생성하기
		pstmt = conn.prepareStatement(sql); 
		//(4단계) 바인딩 변수를 채운다.
		pstmt.setString(1, name);
		pstmt.setString(2, userid);
		pstmt.setString(3, pwd);
		pstmt.setString(4, email);
		pstmt.setString(5, phone);
		pstmt.setInt(6, Integer.parseInt(admin));
		//(5단계) SQL문을 실행하여 결과 처리
		pstmt.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		//(6단계) 사용한 리소스 해제
	try{
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}//finally의 끝	
	%>
	<h3> 회원 가입 성공</h3>
	<a href="01_allMember.jsp"> 회원 전체 목록 보기</a>
</body>
</html>
















