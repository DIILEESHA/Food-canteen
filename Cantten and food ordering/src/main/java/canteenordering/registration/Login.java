package canteenordering.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("username");
		String upwd = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;

		if (uname == null || uname.equals("")) {
			request.setAttribute("status", "Invalidname");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		if (upwd == null || upwd.equals("")) {
			request.setAttribute("status", "Invalidpassword");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registry ?useSSL = false", "root",
					"weneedweed12345");
			PreparedStatement pv = con.prepareStatement("select * from users where uname = ? and upwd = ?");

			pv.setString(1, uname);
			pv.setString(2, upwd);

			ResultSet rs = pv.executeQuery();

			if (rs.next()) {

				session.setAttribute("name", rs.getString("uname"));
				dispatcher = request.getRequestDispatcher("index.jsp");

			} else {
				request.setAttribute("status", "failed ");
				dispatcher = request.getRequestDispatcher("login.jsp");

			}
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();

		}

	}

}
