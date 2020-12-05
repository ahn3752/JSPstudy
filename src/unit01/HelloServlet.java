package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/hello")//서블릿 클래스의 요청을 위한 URL매핑 
//URL Mapping : 서블릿을 동작시키기 위해서 실제 자바 클래스명을 사용하는대신 서블릿을 요청하기 위한 문자열을 서블릿 클래스와 매핑시키는것
public class HelloServlet extends HttpServlet { 
	//새롭게 서블릿 클래스를 정의하기 위해선 javax.servlet.http 패키지에서 제공하는 HttpServlet클래스를 상속받아 구현.
	//외부에서 실행되기 때문에 접근 제한자는 반드시 public
	
	private static final long serialVersionUID = 1L;
						//클라이언트의 요청처리			//클라이언트에게 응답처리
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException { //HttpServlet의 doGet()을 오버라이딩하여 처리
		
		// 클라이언트에게 응답할 페이지 정보를 셋팅한다. text나 html로 보여주겠다는 의미
		response.setContentType("text/html ;charset= UTF-8");
		
		//#스트림 : 입출력 과정이 가능하도록 하는 객체
		//출력스트림인 PrintWriter 객체를 HttpServletResponse 객체의 getWriter()메소드로 부터 얻어옴.
		PrintWriter out=response.getWriter();
						//response => PrintWriter 객체를 리턴하는 메소드
		out.print("<html><body><h1>");
		out.print("Hello Servlet");
		out.print("</h1></body></html>");
		out.close();
	}

}
