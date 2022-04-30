package canteenordering.controller;

import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import canteenordering.bean.Staff;
import canteenordering.dao.StaffDAO;

@WebServlet("/")
public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StaffDAO staffDAO;

	public void init() {
		staffDAO = new StaffDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertStaff(request, response);
				break;
			case "/delete":
				deleteStaff(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateStaff(request, response);
				break;

			default:
				listStaff(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	// list Staff method
	private void listStaff(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Staff> listStaff = staffDAO.selectAllStaff();
		request.setAttribute("listStaff", listStaff);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Staff-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("Staff-insert.jsp");
		dispatcher.forward(request, response);
	}

	// Edit Staff
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Staff existingStaff = staffDAO.selectStaff(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Staff-Update.jsp");
		request.setAttribute("staff", existingStaff);
		dispatcher.forward(request, response);

	}

	// insert Staff method
	private void insertStaff(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String address = request.getParameter("address");
		String typeOfWork = request.getParameter("typeOfWork");
		Staff newStaff = new Staff(name, email, phoneNumber, address, typeOfWork);
		staffDAO.insertStaff(newStaff);
		response.sendRedirect("list");
	}

	// update Staff method
	private void updateStaff(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String address = request.getParameter("address");
		String typeOfWork = request.getParameter("typeOfWork");

		Staff staff = new Staff(id, name, email, phoneNumber, address, typeOfWork);
		staffDAO.updateStaff(staff);
		response.sendRedirect("list");
	}

	// delete Staff method
	private void deleteStaff(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		staffDAO.deleteStaff(id);
		response.sendRedirect("list");

	}

}
