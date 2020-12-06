<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int age=Integer.parseInt(request.getParameter("age"));
if(age<=19){
	%>
	<script type="text/javascript">
		alert("19세 미만이므로 입장 불가능")
		history.go(-1)
	</script>
	<%
}else{ //나이가 20세 이상일경으 RequestDispatcher 객체의 forward() 메소드로
	//05_forwardResult.jsp로 이동시킴
	request.setAttribute("name","성윤정");
	RequestDispatcher dispatcher
			=request.getRequestDispatcher("05_forwardResult.jsp");
	dispatcher.forward(request, response);
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

</body>
</html>