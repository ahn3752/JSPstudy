<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 선언부에서 SQL문을 수행하기 위한 객체변수를 선언.  -->
<%! //선언부는 첫 방문자에 의해서 단 한번 수행합니다.
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	String uid="scott";
	String pass="1234";
	String sql="select * from member";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--테이블을 생성하여 제목을 출력  -->
<table width='800' border='1'>
<tr>
	<th>이름</th><th>아이디</th><th>암호</th><th>이메일</th>
	<th>전화번호</th><th>권한(1:관리자, 0:일반회원)</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");//1 단계로 JDBC드라이버를 로드합니다.
	conn = DriverManager.getConnection(url, uid, pass); //2단계로 데이터베이스 연결 객체인 Connection을 생성
	stmt = conn.createStatement();// Connection 객체로부터 Statement객체를 얻어옴.
	rs=stmt.executeQuery(sql);//Statement 객체로 executeQuery()를 실행한 후 결과값을 얻어와서 ResultSet객체에 저장
	while(rs.next()){//DB에 저장된 모든 회원정보를 얻어오기 위해서 반복문을 돌면서 컬럼단위로 데이터값을 얻어옵니다.
		out.println("<tr>"); //문자열로 선언된 컬럼을 얻어오기 위해서는 getString()을 사용합니다.
		out.println("<td>"+rs.getString("name")+"</td>");
		out.println("<td>"+rs.getString("userid")+"</td>");
		out.println("<td>"+rs.getString("pwd")+"</td>");
		out.println("<td>"+rs.getString("email")+"</td>");
		out.println("<td>"+rs.getString("phone")+"</td>");
		out.println("<td>"+rs.getInt("admin")+"</td>");//회원등급을 구분하는 admin 컬럼은 DB에 NUMBER로 선언된 컬럼이므로 getInt()를 사용
		out.println("</tr>");

	}//while의 끝
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(rs!=null) rs.close();
		if(stmt !=null ) stmt.close();
		if(conn != null) conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}//finally의 끝
%>
</table>

</body>
</html>