package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Catalogo;

/**
 * Servlet implementation class ServletDettaglio
 */
@WebServlet("/ServletDettaglio")
public class ServletDettaglio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletDettaglio() {
		super();

	}

	// riporta al dettaglio del prodotto in base a quello che clicca sul bottone
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("Prodotto", catal.getItem(request.getParameter("id")));
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/mainDettaglio.jsp");
		rd.forward(request, response);
	}

	private Catalogo catal = new Catalogo();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
