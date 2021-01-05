

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
 * Servlet implementation class ServletEmployee
 */
@WebServlet("/ServletEmployee")
public class ServletEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
				
		          
		String employeecode =request.getParameter("employeecode");  
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
		String sql="Update employees set Salutation=?,Department=?,Position=?,Firstname=?,Middlename=?,Lastname=?,Gender=?,Dateofbirth=?,Nationality=?,Email=?,Landline=?,Mobile=?,Address=?,City=?,State=?,Username=?,Password=? where employeecode="+employeecode;
		PreparedStatement ps = con.prepareStatement(sql);
     	ps.setString(1,salutation);
		ps.setString(2,department);
        ps.setString(3, position);
        ps.setString(4, firstname);
		ps.setString(5, middlename);
		ps.setString(6,lastname);
		ps.setString(7,gender);
		ps.setString(8,dateofbirth);
		ps.setString(9,nationality);
		ps.setString(10,email);
		ps.setString(11,landline);
		ps.setString(12, mobile);
		ps.setString(13, address);
		ps.setString(14, city);
		ps.setString(15, state);
		ps.setString(16, username);
		ps.setString(17, password);

	   int i = ps.executeUpdate();
	   if(i > 0)
	   {
		   request.setAttribute("errorMessage", "Record updated successfully.");
           RequestDispatcher rd = request.getRequestDispatcher("/updateemployee.jsp");
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

	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

	}
}


