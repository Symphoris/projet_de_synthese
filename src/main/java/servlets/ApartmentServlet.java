package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Alert;
import beans.Employee;
import beans.Malfunction;
import business.EmployeesList;
import business.map.ApartmentInfos;
import common.Configuration;

/**
 * Servlet implementation class ListEmployeesServlet
 */
public class ApartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ApartmentServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if((Integer)request.getAttribute("isIdentified") != 2) {
			response.sendRedirect("/tv/connect"); // The user must be an administrator identified
			return;
		}
		Integer apartmentId;
		ApartmentInfos apartmentInfo;
		try {
			apartmentId = Integer.parseInt(request.getPathInfo().substring(1));
			apartmentInfo = new ApartmentInfos(apartmentId);
		} catch (Exception e) {
			response.sendRedirect("/tv/map"); // Wrong id specified in the URI, we redirect to the map
			return;
		}

		request.setAttribute("apartmentName", apartmentInfo.getApartment().getName());
		request.setAttribute("apartmentLevel", apartmentInfo.getApartment().getLevel());
		request.setAttribute("apartmentId", apartmentId);
		request.setAttribute("residentsInfo", apartmentInfo.getResidentsInfo());
		request.setAttribute("activeAlerts", apartmentInfo.getActiveAlerts());
		request.setAttribute("objects", apartmentInfo.getRelatedObjects());
		request.setAttribute("oldAlerts", apartmentInfo.getOldAlerts());

		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/apartment.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if(request.getParameter("alertId") != null) {
				Integer id = Integer.parseInt(request.getParameter("alertId"));
				Alert alert = new Alert(id);
				alert.disableOnDB();
				request.setAttribute("message", "The alert n�" + id + " was disabled");
			}
			else if(request.getParameter("malfunctionId") != null) {
				Integer id = Integer.parseInt(request.getParameter("malfunctionId"));
				Malfunction malfunction = new Malfunction(id);
				malfunction.disableOnDB();
				request.setAttribute("message", "The malfunction n�" + id + " was disabled");
			}
		}catch(Exception e) {
			request.setAttribute("message", "An error occured during the process");
		}
		doGet(request,response);
	}

}
