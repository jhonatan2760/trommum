package br.com.muambatrom.Servelet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.muambatrom.Beans.MercadoLivreBean;
import br.com.muambatrom.Beans.ResultadoBean;

/**
 * Servlet implementation class Busca
 */
public class Busca extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Busca() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MercadoLivreBean ml = new MercadoLivreBean(request.getParameter("key"));
		StringBuilder json = new StringBuilder();
		ml.getPesquisa();
		json.append("{	"+request.getParameter("key")+" mercadoLivre : "+ml.getQuantidade()+"}");
		
		
		response.getWriter().append(json);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
