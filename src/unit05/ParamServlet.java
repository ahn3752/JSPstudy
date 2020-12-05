package unit05;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=EUC-KR");
		
		String id = request.getParameter("id");//form에 입력된 id값을 받아와서 id 초기화
		int age=Integer.parseInt(request.getParameter("age"));//fomr에 입력된 age값을 받아와서 age 초기회
				//String -> int로 변환(Integer.parseInt)
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 입력한 정보입니다.<br>");
		out.println("아이디 : ");
		out.println(id);
		out.println("<br> 나이 : ");
		out.println(age);
		//자바스크립트로 이전페이지로 이동하는 링크를 만들어줌
		out.println("<br><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
