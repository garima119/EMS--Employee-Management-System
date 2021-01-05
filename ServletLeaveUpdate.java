

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
 * Servlet implementation class ServletLeaveUpdate
 */
@WebServlet("/ServletLeaveUpdate")
public class ServletLeaveUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLeaveUpdate() {
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
		String description =request.getParameter("description");  
		String fromdate =request.getParameter("fromdate");  
		String todate =request.getParameter("todate");
		String status =request.getParameter("status");  
		try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
		String sql="Update vacation set employeecode=?,description=?,fromdate=?,todate=?,status=? where employeecode='"+employeecode+"'and fromdate='"+fromdate+"'";
		PreparedStatement ps = con.prepareStatement(sql);
     	ps.setString(1,employeecode);
		ps.setString(2,description);
        ps.setString(3, fromdate);
        ps.setString(4, todate);
		ps.setString(5, status);
		int i = ps.executeUpdate();
		   if(i > 0)
		   {
			   request.setAttribute("errorMessage", "Record updated successfully.");
	           RequestDispatcher rd = request.getRequestDispatcher("/updateleave.jsp");
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


