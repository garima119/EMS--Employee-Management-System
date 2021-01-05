

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletSalary
 */
@WebServlet("/ServletSalary")
public class ServletSalary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSalary() {
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
		          
				
		          
		try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");

		  
		Statement ps=con.createStatement();
		String employeecode =request.getParameter("employeecode");  
		String username  =request.getParameter("username");  
		String month     =request.getParameter("month");  
		String year      =request.getParameter("year");  
		String amount    =request.getParameter("amount");  

				

       		String strQuery =("SELECT * FROM salary where employeecode='"+employeecode+"' and month='"+month+"' and year='"+year+"'");
       		ResultSet rs = ps.executeQuery(strQuery);		
       		if(rs.next()) {
			request.setAttribute("errorMessage", "The record for the entered month and year has already been saved.");
            RequestDispatcher rd = request.getRequestDispatcher("/AddSalary.jsp");
            rd.forward(request, response);   
		}
		
		
		else{
			int i=ps.executeUpdate("insert into salary(employeecode,username,month,year,amount)values('"+employeecode+" ','"+username+" ','"+month+"','"+year+"','"+amount+"')");
			response.sendRedirect("reg.jsp");    
			rs.close();
			ps.close();
		}
			}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
	}
	




	


	}


