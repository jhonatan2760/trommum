package br.com.muambatrom.Beans;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import br.com.muambatrom.Dao.PesquisaDao;
import br.com.muambatrom.Engine.SearchEngine;

public class MercadoLivreBean extends Pesquisa implements SearchEngine{

	private List<ResultadoBean> resultados;
	private long quantidade; 
	private	boolean haveResult = false;
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
		Document doc = this.getDocument("http://lista.mercadolivre.com.br/"+this.getKey().replaceAll(" ", "-")+"#D[A:"+this.getKey()+"]");
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
            System.out.println(el.text());
            resul.setValor(el.select(".ch-price").get(0).text());
            System.out.println(el.select(".ch-price").get(0).text());
            resultados.add(resul);
            haveResult = true;
        }
        
        this.quantidade = resultados.size();
        PesquisaDao pesquisa = new PesquisaDao(this);
        pesquisa.save();
        
		return resultados;
	}

	@Override
	public boolean haveResultado() {
		return this.haveResult;
	}

	@Override
	public boolean persistSearch(SearchEngine engine) {
		return false;
	}
	
	@Override
	
	public String getSearchKey(){
		return this.getKey();
	}

	@Override
	public String getSourceName() {
		return "Mercado Livre";
	}
	
	public static void main (String [] args){
		MercadoLivreBean b = new MercadoLivreBean("PS4");
		try {
			b.getPesquisa();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
