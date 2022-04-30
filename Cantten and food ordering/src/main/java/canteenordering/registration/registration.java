package canteenordering.registration;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// get the values
		String uname = request.getParameter("name");
		String uemail = request.getParameter("uemail");
		String upwd = request.getParameter("pass");
		String umobile = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registry?useSSL = false",
					"root", "weneedweed12345");
			PreparedStatement pv = con.prepareStatement("insert users(uname,upwd,uemail,umobile) values(?,?,?,?)");

			pv.setString(1, uname);
			pv.setString(2, upwd);
			pv.setString(3, uemail);
			pv.setString(4, umobile);

			int rowCount = pv.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");

			// the record inserted or not
			if (rowCount > 0) {

				request.setAttribute("status", "success");

			} else {

				request.setAttribute("status", "failed");

			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}