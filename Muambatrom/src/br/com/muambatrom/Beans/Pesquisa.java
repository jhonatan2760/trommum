package br.com.muambatrom.Beans;

import java.io.IOException;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

@Entity
public class Pesquisa {

	public Pesquisa(){}
	
	@Id
	@GeneratedValue
	private Long idPesquisa;
	
	/**
	 * Dando problema com palavra reservada
	 */
	private String key;

	public Pesquisa(String key){
		this.key = key;
	}
	
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}
	
	public Document getDocument(String url) throws IOException{
		
		Document doc = Jsoup.connect(url).userAgent("gecko/mozilla").get();
		
		return doc;
		
	}
}
