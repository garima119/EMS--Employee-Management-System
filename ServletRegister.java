

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletRegister
 */
@WebServlet("/ServletRegister")
public class ServletRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
				
		          

		String salutation =request.getParameter("salutation");  
		String department =request.getParameter("department");  
		String position   =request.getParameter("position");  
		String firstname  =request.getParameter("firstname");  
		String middlename =request.getParameter("middlename");  
		String lastname   =request.getParameter("lastname");  
        String gender     =request.getParameter("gender");  
		String dateofbirth=request.getParameter("dateofbirth");
		String nationality=request.getParameter("nationality");
		String email=request.getParameter("email");
        String landline   =request.getParameter("landline");
        String mobile     =request.getParameter("mobile");
        String address    =request.getParameter("address");
        String city       =request.getParameter("city");
        String state      =request.getParameter("state");
		String username   =request.getParameter("username");
		String password   =request.getParameter("password");

		try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
		Statement ps = con.createStatement();
		String strQuery = ("SELECT * FROM employees where username='"+username+"'");
		ResultSet rs = ps.executeQuery(strQuery);
		if(rs.next()) {
			request.setAttribute("errorMessage", "The record for the entered username has already been saved.");
            RequestDispatcher rd = request.getRequestDispatcher("/AddEmployee.jsp");
            rd.forward(request, response);   
			}
		else
		{
			int i=ps.executeUpdate("insert into employees(Salutation,Department,Position,firstname,middlename,lastname,gender,dateofbirth,nationality,email,landline,mobile,address,city,state,username,password)values('"+salutation+" ','"+department+"','"+position+" ','"+firstname+"','"+middlename+" ','"+lastname+"','"+gender+" ','"+dateofbirth+"','"+nationality+"','"+email+"','"+landline+"','"+mobile+"','"+address+"','"+city+"','"+state+"','"+username+"','"+password+"')");
			RequestDispatcher rd = request.getRequestDispatcher("/reg.jsp");
            rd.forward(request, response);   
			}
			}
		catch (Exception e2) {System.out.println(e2);}  
		          out.close();  
	}
	
}


