package taskpack;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Servlet implementation class deptsample
 */
public class deptsample extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/task";
			String userName = "root";
			String password = "welcome123";
			Connection con =  DriverManager.getConnection(url,userName,password);
			System.out.println("connection successful"+con);
			
			Statement st = con.createStatement();

			String namedept=request.getParameter("namedept");

			String cond="select count(*) from dept where deptname='"+namedept+"'";
			ResultSet rs = st.executeQuery(cond);
			rs.next();
			String count= rs.getString(1);
			if(count.equals("0")) {
				PreparedStatement ps=con.prepareStatement("insert into dept values(?,?,?,?)");
				
				ps.setString(1, request.getParameter("iddept"));
				ps.setString(2, request.getParameter("namedept"));
				ps.setString(3, request.getParameter("namehod"));
				ps.setString(4, request.getParameter("blockdept"));
				ps.executeUpdate();
				RequestDispatcher rd = request.getRequestDispatcher("viewdept.jsp");
				rd.forward(request, response);
			}
			else {
				pw.print("<font color=red size=5>Entered Department Already Exist!!!</font>");
				RequestDispatcher rd= request.getRequestDispatcher("createdept.jsp");
				rd.include(request, response);
			}
			
			
//			PreparedStatement ps=con.prepareStatement("insert into dept values(?,?,?,?)");
//			
//			ps.setString(1, request.getParameter("iddept"));
//			ps.setString(2, request.getParameter("namedept"));
//			ps.setString(3, request.getParameter("namehod"));
//			ps.setString(4, request.getParameter("blockdept"));
//			ps.executeUpdate();
//			
//			Statement st = con.createStatement();
//			String deptname = request.getParameter("namedept");
//			String sql = "select * from dept where deptname='"+deptname+"' ";
//			
//			ResultSet rs = st.executeQuery(sql);
//			
//			if(rs.next()) {
//				pw.print("<font color=red size=5>Enter a valid user name or password</font>");
//				RequestDispatcher rd= request.getRequestDispatcher("createdept.jsp");
//				rd.include(request, response);
//			}
//			else {
//			RequestDispatcher rd = request.getRequestDispatcher("viewdept.jsp");
//			rd.forward(request, response);
//			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
