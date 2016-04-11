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
		
		Elements elementos = doc.select(".list-view-item-title a");
        
        for(Element el : elementos){
        	resul = new ResultadoBean();
            System.out.println(el.text());
            resul.setNome(el.text());
            resul.setImg(el.select(".rowItem img").attr("src"));
            resultados.add(resul);
        }
        
//        elementos = doc.select(".rowItem img");
//        
//        for(Element el2 : elementos){
//        	System.out.println(el2.attr("src"));
//        	resul.setImg(el2.attr("src"));
//        }
		
        this.quantidade = resultados.size();
		return resultados;
	}

	@Override
	public boolean haveResultado() {
		return false;
	}

}
