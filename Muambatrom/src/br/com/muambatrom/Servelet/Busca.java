package br.com.muambatrom.Servelet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.muambatrom.Beans.MercadoLivreBean;
import br.com.muambatrom.Beans.OlxBean;
import br.com.muambatrom.Beans.ResultadoBean;
import br.com.muambatrom.Engine.SearchEngine;

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
		StringBuilder json = new StringBuilder();
		List<SearchEngine> listaPesquisa = new ArrayList<>();
		listaPesquisa.add(new MercadoLivreBean(request.getParameter("key")));
		listaPesquisa.add(new OlxBean(request.getParameter("key")));
		
		for(SearchEngine pesquisa : listaPesquisa){
			for(ResultadoBean resultado : (ArrayList<ResultadoBean>) pesquisa.getPesquisa()){
				json.append("<img class='img-rounded img-raised' src='"+resultado.getImg()+"'/>");
			}
		}
		
		response.getWriter().append(json);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
		response.getWriter().append("Email/Senha incorreto(s)");
	}

}
