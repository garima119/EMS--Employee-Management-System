

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
 * Servlet implementation class ApplyLeave
 */
@WebServlet("/ApplyLeave")
public class ApplyLeave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplyLeave() {
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
		String description  =request.getParameter("description");  
		String username      =request.getParameter("username");
        String fromdate     =request.getParameter("fromdate");  
		String todate       =request.getParameter("todate");  
		String status       =request.getParameter("status");

				

       		String strQuery =("SELECT * FROM vacation where employeecode='"+employeecode+"' and fromdate='"+fromdate+"'");
       		ResultSet rs = ps.executeQuery(strQuery);
		if(rs.next()) {
			request.setAttribute("errorMessage", "You have already applied for the entered duration of leave");
            RequestDispatcher rd = request.getRequestDispatcher("/ApplyLeave.jsp");
            rd.forward(request, response);   
		}
		
		
		else{
			int i=ps.executeUpdate("insert into vacation(employeecode,description,fromdate,todate,status,username)values('"+employeecode+" ','"+description+" ','"+fromdate+"','"+todate+"','"+status+"','"+username+"')");
			response.sendRedirect("reguser.jsp");    
			rs.close();
			ps.close();
		}
			}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
	}
	




	

	}


