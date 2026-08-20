package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

    
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		String userName = req.getParameter("username");
		String userEmail = req.getParameter("useremail");
		String userPassword = req.getParameter("userpassword");
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head><title>Data Received</title></head>");
		out.println("<body>");
		out.println("<h1>Data Received</h1>");
		out.println("<p>Username is: " + userName +"</p>");
		out.println("<p>User E-nmail is: " + userEmail +"</p>");
		out.println("<p>User password is: " + userPassword +"</p>");

		out.println("</body>");
		out.println("</html>");
		
	}

}
