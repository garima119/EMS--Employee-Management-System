

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletforSalaryUpdate
 */
@WebServlet("/ServletforSalaryUpdate")
public class ServletforSalaryUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletforSalaryUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
				
		          
		String employeecode =request.getParameter("employeecode");
		String username =request.getParameter("username");  
		String month =request.getParameter("month");  
		String year =request.getParameter("year");
		String amount =request.getParameter("amount");  
		try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
		String sql="Update salary set employeecode=?,username=?,month=?,year=?,amount=? where employeecode='"+employeecode+"'and month='"+month+"'and year='"+year+"'";
		PreparedStatement ps = con.prepareStatement(sql);
     	ps.setString(1,employeecode);
		ps.setString(2,username);
        ps.setString(3, month);
        ps.setString(4, year);
		ps.setString(5, amount);
		int i = ps.executeUpdate();
		   if(i > 0)
		   {
			   request.setAttribute("errorMessage", "Record updated successfully.");
	           RequestDispatcher rd = request.getRequestDispatcher("/updatesalary.jsp");
	           rd.forward(request, response);
		   }
		   else
		   {
		   out.print("There is a problem in updating Record.");
		   } 
		   }
		   catch(Exception sql)
		   {
			   sql.printStackTrace();
		   
		   }
		   }

		
		


	



	}


