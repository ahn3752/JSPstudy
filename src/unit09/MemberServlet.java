package unit09;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.javabeans.MemberBean2;

@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberBean2 member2=new MemberBean2("전수민", "pinksubin");
		
		req.setAttribute("member2",member2);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/web-study-07/09_el.jsp");
		dispatcher.forward(req, resp);
		
		
		
	}

}
