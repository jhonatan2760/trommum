package br.com.muambatrom.Beans;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import br.com.muambatrom.Engine.SearchEngine;

public class MercadoLivreBean extends Pesquisa implements SearchEngine{

	private List<ResultadoBean> resultados;
	private long quantidade; 
	
	public MercadoLivreBean(String key){
		super(key);
	}
	
	@Override
	public long getQuantidade() {
		return quantidade;
	}

	@Override
	public List<ResultadoBean> getPesquisa() throws IOException {
		resultados = new ArrayList<>();
		
		Document doc = Jsoup.connect("http://lista.mercadolivre.com.br/"+this.getKey().replaceAll(" ", "-")+"#D[A:"+this.getKey()+"]").userAgent("gecko/mozilla").get();
		ResultadoBean resul = null;
		
		Elements elementos = doc.select(".article");
        
		if(elementos.size() == 0){
			elementos = doc.select(".list-view-item");
		}
		
        for(Element el : elementos){
        	resul = new ResultadoBean();
        	System.out.println(el.select("h2").text());
        	System.out.println(el.select("img").attr("src"));
            resul.setNome(el.select("h2").text());
            resul.setImg(el.select("img").attr("src"));
            resultados.add(resul);
        }
        
        this.quantidade = resultados.size();
		return resultados;
	}

	@Override
	public boolean haveResultado() {
		return false;
	}

}
