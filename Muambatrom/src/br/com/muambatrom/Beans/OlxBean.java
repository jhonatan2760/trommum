package br.com.muambatrom.Beans;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import br.com.muambatrom.Engine.SearchEngine;

public class OlxBean extends Pesquisa implements SearchEngine {

	private long quantidade = 0;
	
	public OlxBean(String key) {
		super(key);
	}

	@Override
	public long getQuantidade() {
		return quantidade;
	}

	@Override
	public List<?> getPesquisa() throws IOException {
		
		Document doc = this.getDocument("http://www.olx.com.br/brasil?q="+this.getKey().replaceAll(" ", "+")+"");
		Elements elementos = doc.select(".item");
		ResultadoBean resultado;
		List<ResultadoBean> lista = new ArrayList<>();
		for(Element elemento : elementos){
			System.out.println("OLX");
			resultado = new ResultadoBean();
			resultado.setNome(elemento.select("h3").text());
			resultado.setImg(elemento.select("img").attr("data-original"));
			lista.add(resultado);
		}
		
		this.quantidade = lista.size();
		
		return lista;
	}

	@Override
	public boolean haveResultado() {
		return false;
	}

}
